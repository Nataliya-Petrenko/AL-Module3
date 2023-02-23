package org.petrenko.repository;

import org.petrenko.model.Assessment;
import org.petrenko.model.Group;
import org.petrenko.model.Student;
import org.petrenko.util.HibernateUtil;

import javax.persistence.EntityManager;
import javax.persistence.Tuple;
import javax.persistence.criteria.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GroupRepository {
    private static GroupRepository instance;

    private GroupRepository() {
    }

    public static GroupRepository getInstance() {
        if (instance == null) {
            instance = new GroupRepository();
        }
        return instance;
    }

    public List<Group> getAll() {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        return entityManager.createQuery("from Group", Group.class).getResultList();
    }

    public List<Group> findGroupByName(String group) {
        final EntityManager entityManager = HibernateUtil.getEntityManager();

        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Group> criteriaQuery = criteriaBuilder.createQuery(Group.class);

        Root<Group> getterRoot = criteriaQuery.from(Group.class);

        criteriaQuery.select(getterRoot);

        String stringForMatch = "%" + group + "%";
        criteriaQuery.where(criteriaBuilder.like(getterRoot.get("name"), stringForMatch));

        System.out.println("Groups which name include: " + group);

        return entityManager.createQuery(criteriaQuery)
                .getResultList();
    }

    public Map<String, Long> countStudentsInEachGroup() {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

        CriteriaQuery<Tuple> criteriaQuery = criteriaBuilder.createQuery(Tuple.class);

        Root<Student> getterRoot = criteriaQuery.from(Student.class);
        Join<Student, Group> join = getterRoot.join("group", JoinType.INNER);

        criteriaQuery.multiselect(join.get("name"), criteriaBuilder.count(getterRoot));
        criteriaQuery.groupBy(join.get("name"));

        List<Tuple> tuples = entityManager.createQuery(criteriaQuery)
                .getResultList();

        Map<String, Long> map = new HashMap<>();
        tuples.forEach(t -> map.put((String) t.get(0), (Long) t.get(1)));

        return map;
    }

    public Map<String, Double> averageAssEachGroup() {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

        CriteriaQuery<Tuple> criteriaQuery = criteriaBuilder.createQuery(Tuple.class);

        Root<Group> groupRoot = criteriaQuery.from(Group.class);
        Join<Group, Student> studentJoin = groupRoot.join("students", JoinType.LEFT);
        Join<Student, Assessment> assessmentJoin = studentJoin.join("assessments", JoinType.LEFT);

        criteriaQuery.multiselect(groupRoot.get("name"), criteriaBuilder.avg(assessmentJoin.get("value")));
        criteriaQuery.groupBy(groupRoot.get("name"));

        List<Tuple> tuples = entityManager.createQuery(criteriaQuery)
                .getResultList();

        Map<String, Double> map = new HashMap<>();
        tuples.forEach(t -> map.put((String) t.get(0), (Double) t.get(1)));

        return map;
    }

}

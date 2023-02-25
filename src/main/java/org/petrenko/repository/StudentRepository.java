package org.petrenko.repository;

import org.petrenko.model.Assessment;
import org.petrenko.model.Student;
import org.petrenko.util.HibernateUtil;

import javax.persistence.EntityManager;
import javax.persistence.Tuple;
import javax.persistence.criteria.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class StudentRepository {
    private static StudentRepository instance;

    private StudentRepository() {
    }

    public static StudentRepository getInstance() {
        if (instance == null) {
            instance = new StudentRepository();
        }
        return instance;
    }

    public void save(Student student) {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(student);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    public Optional<Student> getById(String id) {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        return Optional.ofNullable(entityManager.find(Student.class, id));
    }

    public Map<Student, Double> studentWithAverageAssessmentMore(double assessment) {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

        CriteriaQuery<Tuple> criteriaQuery = criteriaBuilder.createQuery(Tuple.class);

        Root<Student> studentRoot = criteriaQuery.from(Student.class);
        Join<Student, Assessment> assessmentJoin = studentRoot.join("assessments", JoinType.LEFT);

        Expression<Double> averageAssessment = criteriaBuilder.avg(assessmentJoin.get("value"));

        criteriaQuery.multiselect(studentRoot.get("id"), averageAssessment);
        criteriaQuery.groupBy(studentRoot.get("id"));

        criteriaQuery.having(criteriaBuilder.greaterThan(averageAssessment, assessment));

        List<Tuple> tuples = entityManager.createQuery(criteriaQuery)
                .getResultList();

        Map<Student, Double> map = new HashMap<>();
        tuples.forEach(t -> getById((String) t.get(0)).ifPresent(s -> map.put(s, (Double) t.get(1))));

        return map;
    }

}

package org.petrenko.repository;

import org.petrenko.model.Teacher;
import org.petrenko.util.HibernateUtil;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;

public class TeacherRepository {
    private static TeacherRepository instance;

    private TeacherRepository() {
    }

    public static TeacherRepository getInstance() {
        if (instance == null) {
            instance = new TeacherRepository();
        }
        return instance;
    }

    public List<Teacher> findTeacherByNameOrSurname(String name) {
        final EntityManager entityManager = HibernateUtil.getEntityManager();
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

        CriteriaQuery<Teacher> criteriaQuery = criteriaBuilder.createQuery(Teacher.class);

        Root<Teacher> root = criteriaQuery.from(Teacher.class);

        String stringForMatch = "%" + name + "%";

        Predicate firstNamePredicate = criteriaBuilder.like(root.get("firstname"), stringForMatch);
        Predicate surnamePredicate = criteriaBuilder.like(root.get("surname"), stringForMatch);
        Predicate finalPredicate = criteriaBuilder.or(firstNamePredicate, surnamePredicate);

        criteriaQuery.select(root).where(finalPredicate);

        return entityManager.createQuery(criteriaQuery).getResultList();
    }

}

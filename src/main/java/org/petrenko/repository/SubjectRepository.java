package org.petrenko.repository;

import org.petrenko.model.Assessment;
import org.petrenko.model.Subject;
import org.petrenko.util.HibernateUtil;

import javax.persistence.EntityManager;
import javax.persistence.Tuple;
import javax.persistence.criteria.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SubjectRepository {
    private static SubjectRepository instance;

    private SubjectRepository() {
    }

    public static SubjectRepository getInstance() {
        if (instance == null) {
            instance = new SubjectRepository();
        }
        return instance;
    }

    public Map<String, Double> subjectWithWorseAndBestAss() {

        final EntityManager entityManager = HibernateUtil.getEntityManager();
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

        CriteriaQuery<Tuple> criteriaQuery = criteriaBuilder.createQuery(Tuple.class);

        Root<Subject> subjectRoot = criteriaQuery.from(Subject.class);
        Join<Subject, Assessment> assessmentJoin = subjectRoot.join("assessments", JoinType.LEFT);

        Expression<Double> averageAssessment = criteriaBuilder.avg(assessmentJoin.get("value"));

        criteriaQuery.multiselect(subjectRoot.get("name"), averageAssessment);
        criteriaQuery.groupBy(subjectRoot.get("name"));
        criteriaQuery.orderBy(criteriaBuilder.asc(averageAssessment));

        criteriaQuery.multiselect(subjectRoot.get("name"), averageAssessment);
        List<Tuple> tuples = entityManager.createQuery(criteriaQuery)
                .getResultList();

        Map<String, Double> map = new HashMap<>();

        Tuple maxTuple = tuples.get(tuples.size() - 1); // TODO Знаю, що це не те рішення, яке очікувалося, але вже немає ні сил ні часу розбиратись як це зробити
        map.put((String) maxTuple.get(0), (Double) maxTuple.get(1));

        Tuple minTuple = tuples.get(0);
        map.put((String) minTuple.get(0), (Double) minTuple.get(1));

        return map;
    }

}

package org.petrenko.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.Optional;

public final class HibernateUtil {
    private static EntityManagerFactory managerFactory;

    private HibernateUtil() {
    }

    public static EntityManager getEntityManager() {
        return Optional.ofNullable(managerFactory)
                .or(() -> {
                    managerFactory = Persistence.createEntityManagerFactory("persistence");
                    return Optional.ofNullable(managerFactory);
                })
                .map(EntityManagerFactory::createEntityManager)
                .orElseThrow();
    }
}

package org.petrenko;

import org.flywaydb.core.Flyway;
import org.petrenko.util.FlywayUtil;
import org.petrenko.util.HibernateUtil;
import org.petrenko.util.Menu;

public class Main {
    public static void main(String[] args) {
        Flyway flyway = FlywayUtil.flyway();
        flyway.clean();
        HibernateUtil.getEntityManager();
        flyway.migrate();

        Menu.start();

    }

}
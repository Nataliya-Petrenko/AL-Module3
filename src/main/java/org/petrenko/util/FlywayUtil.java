package org.petrenko.util;

import org.flywaydb.core.Flyway;

public class FlywayUtil {
    public static Flyway flyway() {
        return Flyway.configure()
                .dataSource("jdbc:postgresql://localhost:5432/hibernate", "postgres", "root")
                .baselineOnMigrate(true)
                .locations("db/migration")
                .cleanDisabled(false)
                .load();
    }
}

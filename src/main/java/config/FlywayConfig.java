package config;

import org.flywaydb.core.Flyway;

public class FlywayConfig {

    public static final String HOST = "13.125.130.224:10001";
    public static final String SCHEMA = "DICT";
    public static final String ID = "root";
    public static final String PW = "root";
    public static final String LOCATION = "classpath:migration";

    public static Flyway getFlyway() {
        Flyway flyway = new Flyway();
        flyway.setDataSource("jdbc:mysql://" + HOST + "/" + SCHEMA, ID, PW);
        flyway.setLocations(LOCATION);
        flyway.clean();
        flyway.migrate();
        return flyway;
    }
}

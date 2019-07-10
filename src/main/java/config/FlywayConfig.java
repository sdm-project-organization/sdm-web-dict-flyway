package config;

import org.flywaydb.core.Flyway;

public class FlywayConfig {

    public static final String HOST = "localhost:3306";
    public static final String SCHEMA = "DICT";
    public static final String ID = "root";
    public static final String PW = "1234";
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

package config;

import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

@Configuration
public class FlywayConfig {

    @Value("${flyway.url}")
    public String HOST;

    @Value("${flyway.port}")
    public String PORT;

    @Value("${flyway.schema}")
    public String SCHEMA;

    @Value("${flyway.username}")
    public String ID;

    @Value("${flyway.password}")
    public String PW;

    @Value("${flyway.location}")
    public String LOCATION;

    @PostConstruct
    public void init() {
        System.out.println("flywayConfig init");
        getFlyway();
    }

    @Bean
    public Flyway getFlyway() {
        System.out.println(HOST);
        Flyway flyway = new Flyway();
        flyway.setDataSource("jdbc:mysql://" + HOST + ":" + PORT + "/" + SCHEMA, ID, PW);
        flyway.setLocations(LOCATION);
        flyway.clean();
        flyway.migrate();
        return flyway;
    }
}

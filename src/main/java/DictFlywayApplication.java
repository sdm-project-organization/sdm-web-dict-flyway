import config.FlywayConfig;
import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;

public class DictFlywayApplication {

    public static void main(String[] args) {
        SpringApplication.run(DictFlywayApplication.class, args);
    }


}

import config.FlywayConfig;
import org.flywaydb.core.Flyway;

public class PlayMigration {

    public static void main(String[] args) {
        Flyway flyway = FlywayConfig.getFlyway();
    }
}

package config;

import java.sql.*;

public class DatasourceConfig {

    public Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:ORA92",
                    "scott",
                    "tiger");
            System.out.println("연결 성공"); // TODO LOG_COLLECT
        } catch (SQLException var3) {
            System.out.println("연결 실패"); // TODO LOG_COLLECT
        }
        return conn;
    }

}

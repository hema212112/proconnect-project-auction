package db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Database helper used by the JSP pages (new DB().Con()).
 *
 * The original DB.java was not part of the project documentation, so this is a
 * minimal reconstruction. Set DB_URL / DB_USER / DB_PASS in the environment, or
 * edit the defaults below to match your MySQL setup.
 */
public class DB {

    private static String env(String key, String fallback) {
        String v = System.getenv(key);
        return (v == null || v.isEmpty()) ? fallback : v;
    }

    public Connection Con() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(
                    env("DB_URL", "jdbc:mysql://localhost:3306/proconnect"),
                    env("DB_USER", "root"),
                    env("DB_PASS", ""));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

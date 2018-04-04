import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DatabaseConnect {


    private static Connection connection;
    private static String dbUrl = "jdbc:mysql://localhost:3306/test3";
    private static String dbUsername = "root";
    private static String dbPassword = "";


    private DatabaseConnect() {

    }

    private static void connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    }


    public static void insertUser(User user) {
        String sql = "INSERT INTO Usertable (username, password) VALUES (?, ?)";
        try {
            connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }


}

import java.sql.*;

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


    public static void insertUser(String username, String password) {
        String sql = "INSERT INTO Usertable (username, password) VALUES (?, ?)";
        try {
            connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
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

    public static boolean verifyUser(String username, String password){
        String sql = "SELECT * from Usertable WHERE username=? and password=?";
        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement statement = null;

        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1,username);
            statement.setString(2,password);
            ResultSet rs=statement.executeQuery();
            if(rs.next()) {
                return true;
            }
            else{
                return false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;



    }


}

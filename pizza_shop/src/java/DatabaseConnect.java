import Inventory.InventoryItem;
import Inventory.OrderHistory;
import cart.Cart;
import cart.Item;

import java.sql.*;
import java.util.ArrayList;

public class DatabaseConnect {


    private static Connection connection;
    private static String dbUrl = "jdbc:mysql://localhost:8889/test3";
    private static String dbUsername = "root";
    private static String dbPassword = "root";


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

    public static boolean verifyUser(String username, String password) {
        String sql = "SELECT * from Usertable WHERE username=? and password=?";
        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement statement = null;

        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            } else {
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

    public static void checkOut(Cart cart, String username) {

        String sql = "UPDATE inventory SET amount = amount-1 WHERE item = ?";
        String order = "";

        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        for (Item item : cart.array) {
            PreparedStatement statement = null;
            try {
                statement = connection.prepareStatement(sql);
                statement.setString(1, item.getName());

                statement.executeUpdate();

                order = order + item.getName() + " pizza $" + item.getPrice() + "\n";


            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
        order = order +"Total = " + cart.getTotal();




        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        insertHistory(username, order);




    }

    public static boolean checkDuplicateUsername(String username) {
        String sql = "SELECT * from Usertable WHERE username=?";
        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        PreparedStatement statement = null;

        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            } else {
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

    public static ArrayList<InventoryItem> getInventory() {
        String sql = "SELECT * from inventory";
        ResultSet rs = null;
        ArrayList<InventoryItem> array = new ArrayList<>();
        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        try {
            PreparedStatement statement = null;
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();

            while (rs.next()) {
                String item = rs.getString("item");
                int quantity = rs.getInt("amount");
                InventoryItem temp = new InventoryItem(item, quantity);
                array.add(temp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return array;


    }

    public static void updateInventory(String item, int amount) {

        String sql = "UPDATE inventory SET amount = ? WHERE item = ?";
        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }


        PreparedStatement statement = null;

        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, amount);
            statement.setString(2, item);

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

    public static void insertHistory(String username, String order) {
        String sql = "INSERT INTO orderhist (user, listoforder) VALUES (?, ?)";
        try {
            connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, order);
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

    public static ArrayList<OrderHistory> getOrderHist() {
        String sql = "SELECT * from orderhist";
        ResultSet rs = null;
        ArrayList<OrderHistory> array = new ArrayList<>();
        try {
            connect();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        try {
            PreparedStatement statement = null;
            statement = connection.prepareStatement(sql);
            rs = statement.executeQuery();

            while (rs.next()) {
                String order = rs.getString("listoforder");
                String user = rs.getString("user");
                OrderHistory temp = new OrderHistory(order, user);
                array.add(temp);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return array;


    }

}

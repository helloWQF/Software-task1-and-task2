import java.sql.*;

public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mydatabase","root","123456");
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("select  * from user");
        while (resultSet.next()) {
            System.out.println(resultSet.getString("name"));
        }
    }
}

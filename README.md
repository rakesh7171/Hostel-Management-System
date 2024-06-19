# Hostel-Management-System
Case Study Database Engineering
import java.sql.*;
import java.util.Scanner;

public class DatabaseQuery {
    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/hostel_info";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "password";

    public static void main(String[] args) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD)) {
            // Create a Scanner object to take user input
            Scanner scanner = new Scanner(System.in);
            
            // Prompt the user for SQL queries until they type "exit" or "EXIT"
            while (true) {
                System.out.print("Enter SQL query (type 'exit' to quit): ");
                String query = scanner.nextLine();

                // Check if the user wants to exit
                if (query.equalsIgnoreCase("exit")) {
                    System.out.println("Exiting...");
                    break;
                }

                // Create a statement object
                try (Statement statement = connection.createStatement()) {
                    // Execute the query
                    ResultSet resultSet = statement.executeQuery(query);
                    
                    // Print the result set
                    ResultSetMetaData metaData = resultSet.getMetaData();
                    int columnCount = metaData.getColumnCount();
                    
                    // Print column names
                    for (int i = 1; i <= columnCount; i++) {
                        System.out.print(metaData.getColumnName(i) + "\t");
                    }
                    System.out.println();
                    
                    // Print rows
                    while (resultSet.next()) {
                        for (int i = 1; i <= columnCount; i++) {
                            System.out.print(resultSet.getString(i) + "\t");
                        }
                        System.out.println();
                    }
                } catch (SQLException e) {
                    System.out.println("Error executing query: " + e.getMessage());
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

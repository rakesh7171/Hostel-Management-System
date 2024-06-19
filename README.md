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
// JDBC connect
import java.sql.*;
import java.util.Scanner;
public class Hostel_main {

	public static void main(String[] args) throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/hostel_info";
		String user ="root";
		String password ="password";
		try (Connection connection = DriverManager.getConnection(url, user, password)) {
            // Prompt user to input Registration_No
            int registrationNo = getRegistrationNoFromUser();

            // Query to retrieve student details including Room_No, Hostel_Name, Payment_Details, and Attendance
            String query = "SELECT s.Name, s.Room_No, f.Payment_Details, a.Date, a.Status " +
                           "FROM STUDENT s " +
                           "JOIN ROOM r ON s.Room_No = r.Room_No " +
                           "JOIN FEE f ON s.Registration_No = f.Registration_No " +
                           "LEFT JOIN ATTENDANCE a ON s.Registration_No= a.Registration_No " +
                           "WHERE s.Registration_No = ?";

            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, registrationNo);
                ResultSet resultSet = statement.executeQuery();

                // Print student details
                while (resultSet.next()) {
                    String name = resultSet.getString("Name");
                    int roomNo = resultSet.getInt("Room_No");
                    String paymentDetails = resultSet.getString("Payment_Details");
                    Date date = resultSet.getDate("Date");
                    String status = resultSet.getString("Status");

                    System.out.println("Name: " + name);
                    System.out.println("Room No: " + roomNo);
                    System.out.println("Payment Details: " + paymentDetails);
                    System.out.println("Attendance Date: " + (date != null ? date.toString() : "N/A"));
                    System.out.println("Attendance Status: " + (status != null ? status : "N/A"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to prompt user for Registration_No input
    private static int getRegistrationNoFromUser() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter Registration No: ");
        return scanner.nextInt();
	}

}

import java.sql.DriverManager;
import java.sql.*;
import javax.swing.JOptionPane;

public class JDBC {
    
    Connection conn;
    
    public static Connection ConnectDB(){
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/librarymanagement","root","");
                return conn;
        
    }catch(Exception e){
        JOptionPane.showMessageDialog(null, e);
    }
        return null;
    }
    
}

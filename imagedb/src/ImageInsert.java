/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
import java.sql.*;
import java.io.*;
public class ImageInsert {
    public static void main(String arg[])
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/libdb","root","");
            File file=new File("E:\\Koala.jpg");
            FileInputStream fis=new FileInputStream(file);
            PreparedStatement ps=con.prepareStatement("Insert into libimage values(?,?)");
            ps.setString(1,"1");
            ps.setBinaryStream(2,fis,(int)file.length());
            ps.executeUpdate();
            System.out.println("Image Inserted successfully");
            ps.close();
            fis.close();
            con.close();
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
        }
    
    }
    
}

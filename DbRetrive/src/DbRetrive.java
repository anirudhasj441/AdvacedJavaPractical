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
public class DbRetrive {
    public static void main(String arg[])
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/libdb","root","");
            File file=new File("E:\\K.jpg");
            FileOutputStream fos=new FileOutputStream(file);
            byte b[];
            Blob blob;
            PreparedStatement ps=con.prepareStatement("select * from libimage where id=?");
            ps.setString(1,"1");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                blob=rs.getBlob("image");
                b=blob.getBytes(1,(int)blob.length());
                fos.write(b);
            }
            ps.close();
            fos.close();
            con.close();
        }
        
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    
    }
    
}

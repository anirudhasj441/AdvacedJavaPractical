/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
import java.awt.*;
import javax.swing.*;
public class User_View extends JFrame{
    JButton viewbook=new JButton("View Books");
    JButton addbook=new JButton("Add Books");
    JButton issuebook=new JButton("Issue Books");
    JPanel jp=new JPanel();
    User_View()
    {
        jp.add(viewbook);
        jp.add(addbook);
        jp.add(issuebook);
        getContentPane().add(jp);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setVisible(true);
        setSize(200,300);
        pack();
    }
    public static void main(String args[])
    {
        new User_View();
    }
    }

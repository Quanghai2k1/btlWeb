/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



/**
 *
 * @author QuangHai144
 */
public class LoginDao {
   public static ArrayList<Account> getAllAccount(){
    ArrayList<Account> list=new ArrayList();
    String query="select * from account";
        try{
            Connection con=getConnect();
            Statement sttm=con.createStatement();
            ResultSet rs=sttm.executeQuery(query);
            while(rs.next()){
                Account a = new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6));
                list.add(a);
            }
        }catch(Exception e){
            
        }
        return list;
    }
    
    public static Account checkSignIn(String user, String pass) throws SQLException{
        String sql="select * from account where [user]=? and pass=?";
        
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6));
            }
        }catch(Exception e){
            
        }
        return null;
    }
    public static Account checkSignUp(String user){
        String sql="select * from account where [user]=?";
        
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                return new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6));
            }
        }catch(Exception e){
            
        }
        return null;
    }
    
    public static void insert(String user, String pass, String sdt, String diachi){
        String query = "insert into account values(?,?,?,?,?)";
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setInt(3, 0);
            ps.setString(4, sdt);
            ps.setString(5, diachi);
            ps.execute();
        }catch(Exception e){
            
        }
    }
    public static void main(String[] args) throws SQLException {
        ArrayList<Account> list= getAllAccount();
        for(Account a: list){
            System.out.println(a);
        }
//        Account a=checkSignUp("admin");
//        System.out.println(a);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.Account;
import entty.Cart;
import entty.Item;
import entty.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 *
 * @author QuangHai144
 */
public class OrderDao {
    public void addOrder(Account a, Cart cart){
        LocalDate date = java.time.LocalDate.now();
        String d = date.toString();
        try {
            Connection con=getConnect();
            String sql = "insert into Orders values(?,?,?)";
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1, d);
            st.setInt(2, a.getId());
            st.setInt(3, cart.getToTalMoney());
            st.executeUpdate();
            
            String sql1="select top 1 id from Orders order by id desc";
            PreparedStatement st1=con.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            
            if(rs.next()){
                int oid = rs.getInt(1);
                for(Item i: cart.getItems()){
                    String sql2="insert into Order_Details values (?,?,?,?)";
                    PreparedStatement st2=con.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3,i.getProduct().getGia());
                    st2.setInt(4, i.getQuantity());
                    st2.executeUpdate();
                }
            }
            String sql3= "update product set soluong = soluong - ? where id=?";
            PreparedStatement st2 = con.prepareStatement(sql3);
            for(Item item: cart.getItems()){
                st2.setInt(1, item.getQuantity());
                st2.setInt(2, item.getProduct().getId());
                st2.executeUpdate();
            }
        } catch (Exception e) {
        }
    }
    
    public static void main(String[] args) {
        LocalDate date = java.time.LocalDate.now();
        String d = date.toString();
        System.out.println(d);
    }
}

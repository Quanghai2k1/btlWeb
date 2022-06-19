/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static connect.connectDB.getConnect;
import entty.Laptop_Details;
import entty.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author QuangHai144
 */
public class ProductDao {
    public static ArrayList<Product> getAllProduct(){
        ArrayList<Product> list=new ArrayList();
        String sql = "select * from product";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Product p=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getInt(10));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static ArrayList<Product> getProductByCid(String cid){
        ArrayList<Product> list=new ArrayList();
        String sql = "select * from product where cateID = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Product p=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getInt(10));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static ArrayList<Product> getProductByKind(String kind){
        ArrayList<Product> list=new ArrayList();
        String sql = "select * from product where kind  = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, kind);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Product p=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getInt(10));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
   
    public static Laptop_Details getDetailProductByPid(String pid){
        String sql = "select * from Laptop_Details where pid = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, pid);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Laptop_Details p=new Laptop_Details(rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static ArrayList<Product> getProductSearch(String search){
        ArrayList<Product> list=new ArrayList();
        String sql = "select * from product where id in\n" +
"(select distinct id from product where name like ? or [description] like ? or title like ?)";
         try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, "%"+search+"%");
            ps.setString(2,"%"+search+"%");
            ps.setString(3, "%"+search+"%");
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Product p=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getInt(10));                
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    

    
    public static Product getProductById(String id){
        String sql = "select * from product where id = ?";
        
        try {
            Connection conn= getConnect();
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs=ps.executeQuery();
            
            while(rs.next()){
                Product p=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getInt(9),rs.getInt(10));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void insert(String ten,String anh, int gia, String title, String mota,int cid,int soluong,int kind){
        String query = "insert into product values(?,?,?,?,?,?,?,?,?)";
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, ten);
            ps.setString(2, anh);
            ps.setInt(3, gia);
            ps.setString(4, title);
            ps.setString(5, mota);
            ps.setInt(6, cid);
            ps.setInt(7, 3);
            ps.setInt(8, soluong);
            ps.setInt(9, kind);
            ps.execute();
        }catch(Exception e){
            
        }
    }
    
    public static void UpdateProduct(int id,String ten,String anh,int gia,String mota){
        String query="Update product set name=?,image=?,price=?,description=? where id='"+id+"'";
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, ten);
          
            ps.setString(2, anh);  
            ps.setInt(3, gia);
            ps.setString(4, mota);
            ps.executeUpdate();
        }catch(Exception e){
            
        }          
    }
    
    public static void UpdateDetail(int id,String manhinh,String cpu,String ram,String ocung,String dohoa, String khoiluong, String kichthuoc){
        String query="Update Laptop_Details set manhinh=?,cpu=?,ram=?,ocung=?, dohoa=?, khoiluong=? , kichthuoc=? where pid='"+id+"'";
        try{
            Connection con=getConnect();
            PreparedStatement ps=con.prepareStatement(query);
            ps.setString(1, manhinh);
            ps.setString(2, cpu);
            ps.setString(3, ram);
            ps.setString(4, ocung);
            ps.setString(5, dohoa);
            ps.setString(6, khoiluong);
            ps.setString(7, kichthuoc);
            ps.executeUpdate();
        }catch(Exception e){
            
        }          
    }
    
    public static void delete(int id){
        String query="delete from product where id='"+id+"'";
        try{
            Connection con=getConnect();
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.executeUpdate();
        }catch(Exception e){
            
        }
    }
    public static void main(String[] args) {
        System.out.println(getProductById("1"));
//        ArrayList<Product> list=getProductSearch("giày");
//        for(Product p:list){
//            System.out.println(p);
//        }
//           Laptop_Details p=getProductByPid("1");
//           System.out.println(p);
//        ArrayList<Product> list = getProductByCid("1");
//        for(Laptop_Details p:list){
//            System.out.println(p);
//        }
//        ArrayList<LaptopProduct> list = getProductSearch(search);
//        for(Product p:list){
//            System.out.println(p);
//        }
//           ArrayList<Product> list = getAllProduct();
//           for ( Product p:list){
//               System.out.println(p);
//           }
//        ArrayList<Product> list=getProductByKind("1");
//        for(Product p:list){
//            System.out.println(p);
//        }
    }
}

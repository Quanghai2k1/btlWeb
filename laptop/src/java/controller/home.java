/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDao;
import dao.ProductDao;
import dao.TypeDao;
import entty.Cart;
import entty.Category;
import entty.Item;
import entty.Laptop_Details;
import entty.Product;
import entty.TypeOfProduct;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author QuangHai144
 */
public class home extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session =request.getSession();
//        Danh sách sản phẩm 
        ProductDao productDao=new ProductDao();
        ArrayList<Product> listProduct=productDao.getAllProduct();
        session.setAttribute("listProduct", listProduct);
        
        int l=listProduct.size();
        ArrayList<Product> newProduct = new ArrayList();
        for(int i=l-1;i>=l-4;i--){
            newProduct.add(listProduct.get(i));
        }
        session.setAttribute("newProduct", newProduct);
////        Danh sach phu kien
//        ArrayList<Product> listPhukienProduct = productDao.getAllPhukien();
//        request.setAttribute("listPhukienProduct", listPhukienProduct);
//      Đẩy lại category lên trang home  

//san pham moi
        CategoryDao categoryDao=new CategoryDao();
        ArrayList<Category> category=categoryDao.getAllCategory();
        ArrayList<Category> catePhukien=new ArrayList();
        for(int i=4;i<=6;i++){
            catePhukien.add(category.get(i));
        }
            
        session.setAttribute("catePhukien", catePhukien);
        
        TypeDao typeDao=new TypeDao();
        ArrayList<TypeOfProduct> typeOfProduct=typeDao.getAllType();
        session.setAttribute("typeOfProduct", typeOfProduct);
        
        request.setAttribute("tag", 0);
        
        
       
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

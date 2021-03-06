/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDao;
import dao.ProductDao;
import dao.TypeDao;
import entty.Category;
import entty.Laptop_Details;
import entty.Product;
import entty.TypeOfProduct;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author QuangHai144
 */
public class category extends HttpServlet {

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
        TypeDao typeDao=new TypeDao();
        ArrayList<TypeOfProduct> typeOfProduct=typeDao.getAllType();
        request.setAttribute("typeOfProduct", typeOfProduct);
//        lay san pham theo kind
        String kind=request.getParameter("kind");
        ProductDao productDao=new ProductDao();
        ArrayList<Product> list = productDao.getProductByKind(kind);
        request.setAttribute("listProduct", list);
        
//        san pham moi nhat
        ArrayList<Product> listProduct=productDao.getAllProduct();
        
        int l=listProduct.size();
        ArrayList<Product> newProduct = new ArrayList();
        for(int i=l-1;i>=l-4;i--){
            newProduct.add(listProduct.get(i));
        }
        request.setAttribute("newProduct", newProduct);
        
//        
//        CategoryDao categoryDao=new CategoryDao();
//        ArrayList<Category> category=categoryDao.getAllCategory();
//        ArrayList<Category> catePhukien=new ArrayList();
//        for(int i=4;i<=6;i++){
//            catePhukien.add(category.get(i));
//        }
//            
//        request.setAttribute("catePhukien", catePhukien);
        
////      L???y tag ????? th??m class cho category- ph??n bi???t category n??o ???????c ch???n
            request.setAttribute("tag", kind);
//        
        
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

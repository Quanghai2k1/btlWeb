package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/chinhsua.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script>\n");
      out.write("            function chooseFile(fileInput){\n");
      out.write("                if (fileInput.files && fileInput.files[0]){\n");
      out.write("                    var reader = new FileReader();\n");
      out.write("\n");
      out.write("                    reader.onload = function(e) {\n");
      out.write("                        $('#img').attr('src',e.target.result);\n");
      out.write("                    }\n");
      out.write("                    reader.readAsDataURL(fileInput.files[0]);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <a href=\"\" class=\"trangchu\">Trang chủ</a>\n");
      out.write("                <p class=\"tieude\">Chỉnh sửa sản phẩm</p>\n");
      out.write("                <h2 class=\"id\">#");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("            </div>\n");
      out.write("            <form action=\"edit\" method=\"post\" class=\"form\" enctype=\"multipart/form-data\">\n");
      out.write("                <div class=\"img-product\">\n");
      out.write("                    <label for=\"ten\" class=\"ten\">Tên sản phẩm</label>\n");
      out.write("                    <input type=\"text\" id=\"ten\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.ten}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                    <label for=\"gia\" class=\"gia\">Giá</label>\n");
      out.write("                    <input type=\"text\" id=\"gia\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.gia}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                    <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.anh}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\" id=\"img\" width=\"400\" height=\"300\" >\n");
      out.write("                    <input type=\"file\" name=\"photo\" onchange=\"chooseFile(this)\" accept=\"image/gif , image/jpeg, image/png\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"detail\">\n");
      out.write("\n");
      out.write("                    <label for=\"mota\" class=\"mota\">Mô tả</label>\n");
      out.write("                    <input type=\"text\" id=\"mota\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.mota}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"thongso\">\n");
      out.write("                        <p>Thông số kỹ thuật</p>\n");
      out.write("                        <div class=\"nhapthongso\">\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"manhinh\" class=\"manhinh\">Màn hình</label>\n");
      out.write("                                <input type=\"text\" id=\"manhinh\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.manhinh}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"cpu\" class=\"cpu\">CPU</label>\n");
      out.write("                                <input type=\"text\" id=\"cpu\" value=\"detail.cpu\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"ram\" class=\"ram\">Ram</label>\n");
      out.write("                                <input type=\"text\" id=\"ram\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.ram}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"ocung\" class=\"ocung\">Ổ cứng</label>\n");
      out.write("                                <input type=\"text\" id=\"ocung\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.ocung}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"dohoa\" class=\"dohoa\">Đồ họa</label>\n");
      out.write("                                <input type=\"text\" id=\"dohoa\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.dohoa}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"trongluong\" class=\"trongluong\">Khối lượng</label>\n");
      out.write("                                <input type=\"text\" id=\"trongluong\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.trongluong}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"onhap\">\n");
      out.write("                                <label for=\"kichthuoc\" class=\"kichthuoc\">Kích thước</label>\n");
      out.write("                                <input type=\"text\" id=\"kichthuoc\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${detail.kichthuoc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <input type=\"submit\" class=\"btn\" value=\"Xác nhận\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

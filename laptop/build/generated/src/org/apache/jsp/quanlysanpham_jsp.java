package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class quanlysanpham_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Document</title>\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/reset.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/quanlysanphamCss.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/grid.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/themsanpham.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function chooseFile(fileInput){\n");
      out.write("            if (fileInput.files && fileInput.files[0]){\n");
      out.write("                var reader = new FileReader();\n");
      out.write("\n");
      out.write("                reader.onload = function(e) {\n");
      out.write("                    $('#img').attr('src',e.target.result);\n");
      out.write("                }\n");
      out.write("                reader.readAsDataURL(fileInput.files[0]);\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("    <div class=\"main\">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"trangchu-quanly\">\n");
      out.write("                <a href=\"\" class=\"trangchu\">Trang chủ</a>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <p class=\"themsanpham\"><i class=\"fa-solid fa-plus\"></i>Thêm sản phẩm</p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"grid wide content\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"bentrai col l3 c3\">\n");
      out.write("                    <div class=\"danhmuc\">\n");
      out.write("                        <h1 class=\"tieudetrai\">\n");
      out.write("                            DANH MỤC SẢN PHẨM\n");
      out.write("                        </h1>\n");
      out.write("                        <ul class=\"danhsachdanhmuc\">\n");
      out.write("                            <li class=\"donvidanhmuc\">\n");
      out.write("                                <a href=\"\" class=\"lienketdanhmuc\">Laptop</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"donvidanhmuc\">\n");
      out.write("                                <a href=\"\" class=\"lienketdanhmuc\">Phụ kiện</a>\n");
      out.write("                            </li>\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"benphai col l9 c9\">\n");
      out.write("                    <h1 class=\"tieudephai\">DANH SÁCH SẢN PHẨM</h1>\n");
      out.write("\n");
      out.write("                    <table class=\"table-product\">\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th class=\"id\">ID</th>\n");
      out.write("                                <th class=\"anh\">Ảnh</th>\n");
      out.write("                                <th class=\"ten\">SẢN PHẨM</th>\n");
      out.write("                                <th class=\"gia\">GIÁ</th>\n");
      out.write("                                <th class=\"soluong\">SỐ LƯỢNG</th>\n");
      out.write("                                <th class=\"hanhdong\" colspan=\"2\">Actions</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            \n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"mucthemsanpham dis\">\n");
      out.write("            <form action=\"themsanpham\" method=\"post\" class=\"khungthemsanpham\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("                <div class=\"header-themsanpham\">\n");
      out.write("                    <h1 class=\"tieudethem\">Thêm sản phẩm</h1>\n");
      out.write("                    <i class=\"fa-solid fa-x\" style=\"cursor: pointer\"></i>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"nhapthongtin\">\n");
      out.write("                    <div class=\"onhap\">\n");
      out.write("                        <label for=\"ten\">Tên</label>\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" id=\"ten\" name=\"ten\" >\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"onhap\">\n");
      out.write("                        <label for=\"anh\">Ảnh</label>\n");
      out.write("                        <img src=\"\" alt=\"\" id=\"img\" width=\"200\" height=\"100\" >\n");
      out.write("                    <input type=\"file\" name=\"photo\" onchange=\"chooseFile(this)\" accept=\"image/gif , image/jpeg, image/png\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"onhap\">\n");
      out.write("                        <label for=\"gia\">Giá</label>\n");
      out.write("                        <input type=\"text\" id=\"gia\" name=\"gia\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"onhap\">\n");
      out.write("                        <label for=\"soluong\">Số lượng</label>\n");
      out.write("                        <input type=\"text\" id=\"soluong\" name=\"soluong\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"onhap\">\n");
      out.write("                        <label for=\"mota\">Mô tả</label>\n");
      out.write("                        <input type=\"text\" id=\"mota\" name=\"mota\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"onhap\">\n");
      out.write("                        <label for=\"category\">Category</label>\n");
      out.write("                        <select name=\"category\" id=\"category\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <input type=\"submit\" value=\"OK\" width=\"100\" height=\"30\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\".themsanpham\").click(function(){\n");
      out.write("                $(\".mucthemsanpham\").addClass(\"active\");\n");
      out.write("\n");
      out.write("            })\n");
      out.write("        })\n");
      out.write("    </script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\".fa-x\").click(function(){\n");
      out.write("                $(\".mucthemsanpham\").removeClass(\"active\");\n");
      out.write("\n");
      out.write("            })\n");
      out.write("        })\n");
      out.write("    </script>\n");
      out.write("</body>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listLaptop}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("l");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <tr>\n");
          out.write("                                <td class=\"id\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                <td class=\"thumbnail\"><img width=\"50\" height=\"50\" src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.anh}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image\" alt=\"\" sizes=\"(max-width: 300px) 100vw, 300px\">\n");
          out.write("                                </td>\n");
          out.write("                                <td class=\"name\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.ten}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" </td>\n");
          out.write("                                <td class=\"price\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.gia}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</td>\n");
          out.write("                                <td class=\"quantity\">\n");
          out.write("                                    ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.soluong}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                </td>\n");
          out.write("                                \n");
          out.write("                                   \n");
          out.write("                                <td class=\"edit\">\n");
          out.write("                                    <a href=\"loadchinhsua?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("&&kind=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${l.kind}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"chinhsua\">\n");
          out.write("                                        <i class=\"fa-solid fa-pen-to-square\"></i>\n");
          out.write("                                    </a>\n");
          out.write("                                    \n");
          out.write("                                </td>\n");
          out.write("                                    \n");
          out.write("                                <td class=\"remove\">\n");
          out.write("                                    <a href=\"\" class=\"xoa\">\n");
          out.write("                                        <i class=\"fa-solid fa-x\"></i>\n");
          out.write("                                    </a>\n");
          out.write("                                    \n");
          out.write("                                </td>\n");
          out.write("                            </tr>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${category}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("c");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.cid}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${c.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}

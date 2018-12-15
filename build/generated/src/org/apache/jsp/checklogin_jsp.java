package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import clases.CryptWithMD5;
import java.util.ArrayList;

public final class checklogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      mySql.MySqlConn objConn = null;
      synchronized (_jspx_page_context) {
        objConn = (mySql.MySqlConn) _jspx_page_context.getAttribute("objConn", PageContext.PAGE_SCOPE);
        if (objConn == null){
          objConn = new mySql.MySqlConn();
          _jspx_page_context.setAttribute("objConn", objConn, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 int conta = 0;
      out.write('\n');

    String usuario = "";
    String pass = "";
    String usuarioBD = "";
    String passBD = "";
    String admin = "";
    CryptWithMD5 obj = new CryptWithMD5();
    String query = "select * from farolito.usuarios";
    objConn.Consult(query);
    boolean contra = false;
    boolean usr = false;

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        if (request.getParameter("usr") != null) {
            usuario = request.getParameter("usr");
        }
        if (request.getParameter("pass") != null) {
            pass = request.getParameter("pass");
        }
        pass = obj.cryptWithMD5(pass);
        objConn.rs.beforeFirst();

        while (objConn.rs.next()) {
            usuarioBD = objConn.rs.getString(2);
            passBD = objConn.rs.getString(3);
            admin = objConn.rs.getString(8);

            if (usuario.equals(usuarioBD) && pass.equals(passBD)) {
                HttpSession sesionOk = request.getSession();
                sesionOk.setAttribute("usuario", usuario);
                
                if ((request.getParameter("RecordarUsuario") != null)) {
                /*Si se cumple la condicion, entonces el  checkbox esta habilitado y
crea la cookie para almacenar el nombre de usuario*/
                Cookie cookieUsuario = new Cookie("Usuario", usuario);
                cookieUsuario.setPath("/");
                cookieUsuario.setMaxAge(60 * 60 * 24);
                response.addCookie(cookieUsuario);
            }
                
                if (admin.equals("1")) {
                    sesionOk.setAttribute("admin", "true");
                } else {
                    sesionOk.setAttribute("admin", "false");
                }
    
      out.write("\n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("index.jsp");
        return;
      }
      out.write("\n");
      out.write("    ");

                break;
            } else if (usuario.equals(usuarioBD)) {
                contra = false;
                usr = true;
                conta++;
                break;
            }
        }
        if (!contra && usr) {
            if (conta > 3) {
                conta = 0;
            }
            request.setAttribute("cnt", conta);
    
      out.write("   \n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("Login.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Contraseña incorrecta.<br>Vuelve a intentarlo.", request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("cnt", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${cnt}", java.lang.String.class, (PageContext)_jspx_page_context, null), request.getCharacterEncoding()));
        return;
      }
      out.write("\n");
      out.write("    ");
} else if (!contra && !usr) {
    
      out.write("\n");
      out.write("    ");
      if (true) {
        _jspx_page_context.forward("Login.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("Usuario no encontrado.<br>Vuelve a intentarlo.", request.getCharacterEncoding()));
        return;
      }
      out.write("\n");
      out.write("    ");

        }

    
      out.write("\n");
      out.write("\n");
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

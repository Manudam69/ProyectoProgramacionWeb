package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    
    Cookie[] galleta = request.getCookies();
    String usuario = "";    

      out.write('\n');

    for (int i = 0; i < galleta.length; i++) {//Busca los colores que el usuario selecciono usando la sesion
        if (galleta[i].getName().equals("Usuario")) {
            usuario = galleta[i].getValue();
        }        
    }

      out.write("\n");
      out.write("<html lang=\"es\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Abel\" rel=\"stylesheet\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Inciar Sesión</title>\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"images/logo.png\">\n");
      out.write("        <style>\n");
      out.write("            * {\n");
      out.write("                font-family: 'Abel', sans-serif;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                background-color: rgb(248, 249, 250);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"text-center\">\n");
      out.write("        <form class=\"form-signin mx-auto p-5 mt-5\" style=\"width: 400px;\" action=\"checklogin.jsp\" method=\"post\">\n");
      out.write("            <a href=\"./index.jsp\"><img class=\"mb-4\" src=\"images/logo.png\" alt=\"\" width=\"72\" height=\"72\"></a>\n");
      out.write("            <h1 class=\"h3 mb-3 font-weight-normal\">Iniciar sesión</h1>\n");
      out.write("            <label for=\"inputUser\" class=\"sr-only\">Usuario</label>\n");
      out.write("            <input type=\"text\" id=\"inputUser\" class=\"form-control mb-1\" placeholder=\"Usuario\" value=\"");
      out.print(usuario);
      out.write("\" name=\"usr\" required autofocus>\n");
      out.write("\n");
      out.write("            <label for=\"inputPassword\" class=\"sr-only\">Password</label>\n");
      out.write("            <input type=\"password\" id=\"inputPassword\" class=\"form-control mb-2\" placeholder=\"Contraseña\" name=\"pass\" required>\n");
      out.write("            <div class=\"checkbox mb-3\">\n");
      out.write("                <label>\n");
      out.write("                    <input type=\"checkbox\" value=\"remember-me\" name=\"RecordarUsuario\"> Recuérdame.\n");
      out.write("                </label>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">Iniciar sesión</button>\n");
      out.write("\n");
      out.write("            <div  style=\"color:red;\">\n");
      out.write("                ");

                    if (request.getParameter("error") != null) {
                        out.println(request.getParameter("error"));
                    }
                    if (request.getParameter("cnt") != null) {
                        out.println(request.getParameter("cnt"));
                        int num = Integer.parseInt(request.getParameter("cnt"));

                        if (num >= 3) {
                
      out.write("\n");
      out.write("                ");
      if (true) {
        _jspx_page_context.forward("invalida.jsp");
        return;
      }
      out.write("\n");
      out.write("                ");

                        }
                    }

                
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <p class=\"mt-2\">¿Eres un cliente nuevo? <a href=\"./Registro.jsp\">Empieza aquí.</a><br>\n");
      out.write("                <a href=\"./Recuperacion.jsp\">¿Olvidaste tu contraseña?</a> \n");
      out.write("            </p>\n");
      out.write("        </form>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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

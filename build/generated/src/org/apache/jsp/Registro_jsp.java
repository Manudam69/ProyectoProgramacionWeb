package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      mySql.MySqlConn objConn = null;
      synchronized (_jspx_page_context) {
        objConn = (mySql.MySqlConn) _jspx_page_context.getAttribute("objConn", PageContext.PAGE_SCOPE);
        if (objConn == null){
          objConn = new mySql.MySqlConn();
          _jspx_page_context.setAttribute("objConn", objConn, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');

    String query = "select max(id) from farolito.usuarios;";
    objConn.Consult(query);
    int i = objConn.rs.getInt(1);

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Abel\" rel=\"stylesheet\">\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Registro de El farolito</title>\n");
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
      out.write("        <div class=\"container\">\n");
      out.write("            <form class=\"form-signin mx-auto p-5 mt-5\" onsubmit=\"return validarPassword(this)\" method=\"get\" action=\"usrDB.jsp\">\n");
      out.write("                <a href=\"./index.jsp\"><img class=\"mb-4\" src=\"images/logo.png\" alt=\"\" width=\"72\" height=\"72\"></a>\n");
      out.write("                <h1 class=\"h3 mb-3 font-weight-normal\">Crear cuenta</h1>\n");
      out.write("                <input type=\"number\" name=\"id\" placeholder=\"");
      out.print(i+1);
      out.write("\" value=\"");
      out.print(i+1);
      out.write("\" min=\"");
      out.print(i + 1);
      out.write("\" max=\"");
      out.print(i + 1);
      out.write("\" hidden>\n");
      out.write("                <label for=\"inputName\" class=\"sr-only\">Nombre</label>\n");
      out.write("                <input type=\"text\" id=\"inputName\" class=\"form-control mb-1\" name=\"nomb\" placeholder=\"Tu nombre\" required>\n");
      out.write("\n");
      out.write("                <label for=\"inputEmail\" class=\"sr-only\">Correo electrónico</label>\n");
      out.write("                <input type=\"email\" id=\"inputEmail\" class=\"form-control mb-1\" name=\"correo\" placeholder=\"Correo electrónico\" required autofocus>\n");
      out.write("\n");
      out.write("                <label for=\"inputUser\" class=\"sr-only\">Usuario</label>\n");
      out.write("                <input type=\"text\" id=\"inputUser\" class=\"form-control mb-1\" name=\"usr\" placeholder=\"Usuario\" required>\n");
      out.write("\n");
      out.write("                <label for=\"inputPassword\" class=\"sr-only\">Contraseña</label>\n");
      out.write("                <input type=\"password\" id=\"inputPassword\" class=\"form-control mb-1\" name=\"pass1\" placeholder=\"Contraseña\" required>\n");
      out.write("\n");
      out.write("                <label for=\"inputPassword2\" class=\"sr-only\">Contraseña</label>\n");
      out.write("                <input type=\"password\" id=\"inputPassword2\" class=\"form-control mb-1\"  name=\"pass2\" placeholder=\"Vuelve a escribir la contraseña\" required>\n");
      out.write("\n");
      out.write("                <label for=\"Pregunta\">Pregunta de recuperación</label>\n");
      out.write("                <select class=\"custom-select d-block w-100 mb-1\" name=\"pregunta\">\n");
      out.write("                    <option value=\"0\">Elegir...</option>\n");
      out.write("                    <option value=\"1\">¿Cómo se llamaba mi primera mascota?</option>\n");
      out.write("                    <option value=\"2\">¿En que ciudad naciste?</option>\n");
      out.write("                    <option value=\"3\">¿Lugar dónde fuiste al colegio?</option>\n");
      out.write("                    <option value=\"4\">¿Pelicula favorita?</option>\n");
      out.write("                    <option value=\"5\">¿Nombre de la calle en la que crecí?</option>\n");
      out.write("                </select>\n");
      out.write("                \n");
      out.write("                <label for=\"Respuesta\" class=\"sr-only\">Respuesta</label>\n");
      out.write("                <input type=\"text\" id=\"Respuesta\" class=\"form-control mb-5\" placeholder=\"Respuesta\" name=\"res\" required>\n");
      out.write("                \n");
      out.write("                <button class=\"btn btn-lg btn-primary btn-block\" type=\"submit\">Crear tu cuenta en el farolito</button>\n");
      out.write("                <p class=\"mt-2\">Ya tienes una cuenta? <a href=\"./Login.jsp\"> Iniciar sesión.</a></p>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script>\n");
      out.write("            function validarPassword(f) {\n");
      out.write("                var p1 = document.getElementsByName(\"pass1\").value;\n");
      out.write("                var p2 = document.getElementsByName(\"pass2\").value;\n");
      out.write("                if (f.pass1.value == f.pass2.value) {\n");
      out.write("                    return true;\n");
      out.write("                } else {\n");
      out.write("                    alert(\"Contraseñas no coinciden, intenta de nuevo\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
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

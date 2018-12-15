package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import clases.Producto;
import clases.ProductoCarrito;
import java.util.ArrayList;

public final class producto_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");

    String usuario1 = (String) session.getAttribute("usuario");//Usuario y Galleta
    Cookie[] galleta = request.getCookies();
    String Fondo = "";
    String FondoLetra = "";

      out.write('\n');

    for (int i = 0; i < galleta.length; i++) {//Busca los colores que el usuario selecciono usando la sesion
        if (galleta[i].getName().equals(usuario1 + "Fondo")) {
            Fondo = galleta[i].getValue();
        }
        if (galleta[i].getName().equals(usuario1 + "Letra")) {
            FondoLetra = galleta[i].getValue();
        }
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Tienda</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/producto.css\"/>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Abel\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Saira\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"images/logo.png\">\n");
      out.write("        <script src=\"./js/producto.js\"></script> \n");
      out.write("        <style> \n");
      out.write("            body{ background-color:");
      out.print(Fondo);
      out.write(';');
//Al recuperar los colores se ingresan en el style de la pagina
      out.write("\n");
      out.write("                  color:");
      out.print(FondoLetra);
      out.write(";}\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"pb-2\">\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light fixed-top\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"./index.jsp\" id=\"logo\">\n");
      out.write("                    <img src=\"images/logo.png\" width=\"60\" height=\"60\" class=\"d-inline-block align-top ml-4 mb-0\">\n");
      out.write("                    <p id=\"slogan\" class=\"mb-0\">Donde tu tiempo vale oro</p>\n");
      out.write("                </a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                    <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./index.jsp\">Inicio</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./Vision.jsp\">Visión</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown active\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Tienda</a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"./LineaBlanca.jsp\">Linea blanca</a>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"./Electronicos.jsp\">Electrónicos</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./AcercaDe.jsp\">Acerca De</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./Contacto.jsp\">Contáctanos</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./Ayuda.jsp\">Ayuda</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    ");

                        if (session.getAttribute("usuario") == null) {
                    
      out.write("\n");
      out.write("                    <form class=\"form-inline my-2 my-lg-0\" action=\"Login.jsp\">                       \n");
      out.write("                        <button class=\"btn btn  my-2 my-sm-0\" type=\"submit\" id=\"sesion\">Iniciar Sesión</button>\n");
      out.write("                    </form>\n");
      out.write("                    ");

                    } else {
                    
      out.write("\n");
      out.write("                    \n");
      out.write("                    <a href=\"./carrito.jsp\"><img src=\"images/carrito.png\" class=\"img-fluid mb-3 mr-3\" alt=\"Algo pasa\" width=\"50\"></a>\n");
      out.write("                    <a href=\"./Nocturno.jsp\"><img src=\"images/night_mode.png\" class=\"img-fluid mb-3 mr-3\" alt=\"Modo Nocturno\" width=\"50\"></a>\n");
      out.write("                    <a href=\"./Normal.jsp\"><img src=\"images/File_Alt.png\" class=\"img-fluid mb-3 mr-3\" alt=\"Modo Nocturno\" width=\"50\"></a>\n");
      out.write("                    <a href=\"./Invierno.jsp\"><img src=\"images/snowflake.png\" class=\"img-fluid mb-3 mr-3\" alt=\"Modo Nocturno\" width=\"50\"></a>\n");
      out.write("                    \n");
      out.write("                    <form class=\"form-inline my-2 my-lg-0\" action=\"Cerrarsesion.jsp\">                       \n");
      out.write("                        <button class=\"btn btn  my-2 my-sm-0\" type=\"submit\" id=\"sesion\">Cerrar Sesión</button>\n");
      out.write("                    </form>\n");
      out.write("                    \n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <div class=\"container mt-5 pt-5\">\n");
      out.write("\n");
      out.write("         ");

           ArrayList<ProductoCarrito> lista_c = (ArrayList<ProductoCarrito>) request.getSession().getAttribute("listacom");
           ArrayList<Producto> lista_p = (ArrayList<Producto>) request.getSession().getAttribute("listap");
           
          String valorP = (String) request.getParameter("producto");
          int id_P = Integer.parseInt(valorP);
          
          String nombre="", descrip="";
          int precio=0;
          int existenciaAct=0;
             
          for (int i = 0; i < lista_p.size(); i++) {
             if(id_P  == lista_p.get(i).getId()){
                 nombre = lista_p.get(i).getNombre();
                 descrip = lista_p.get(i).getDescrip();
                 precio = lista_p.get(i).getPrecio();
                 existenciaAct = lista_p.get(i).getExistencia();
                 lista_p = null;
                 break;
              }
           }

         
      out.write("             \n");
      out.write("            <div class=\"row mt-3\">\n");
      out.write("                <div class=\"col-lg-6 px-5\">\n");
      out.write("                    <figure class=\"zoom img-fluid\" onmousemove=\"zoom(event)\" style=\"background-image: url(imagen.jsp?id=");
      out.print(id_P);
      out.write(")\">\n");
      out.write("                        <img src=\"imagen.jsp?id=");
      out.print(id_P);
      out.write("\" class=\"img-fluid\" alt=\"Responsive image\"/>\n");
      out.write("                    </figure>                    \n");
      out.write("                    <!--<img src=\"images/prueba.jpg\" class=\"img-fluid mt-5 pt-5\" alt=\"Responsive image\" id=\"producto\">-->\n");
      out.write("                </div>\n");
      out.write("      \n");
      out.write("                <div class=\"col-lg-6 mt-2\">\n");
      out.write("                   \n");
      out.write("                    <p class=\"h2 text-left mt-1\">");
      out.print(nombre);
      out.write("</p>\n");
      out.write("                    <p class=\"lead mt-3\">Precio: $");
      out.print(precio);
      out.write(" MXN</p>\n");
      out.write("                    <form class=\"form-signin mx-auto mt-2\" action=\"carrito.jsp\" method=\"get\">\n");
      out.write("                        <label for=\"cantidad\" class=\"lead \">Cantidad: </label>\n");
      out.write("                        <select class=\"custom-select w-25 mb-1\" name=\"cantidad\"> \n");
      out.write("                            \n");
      out.write("                            <option value=\"1\">1</option>\n");
      out.write("                            <option value=\"2\">2</option>\n");
      out.write("                            <option value=\"3\">3</option>\n");
      out.write("                            <option value=\"4\">4</option>\n");
      out.write("                            <option value=\"5\">5</option>\n");
      out.write("                        </select>\n");
      out.write("                        <input type=\"hidden\" name=\"id_producto\" value=\"");
      out.print(id_P);
      out.write("\">  <!--Manda el id del producto escondido --> \n");
      out.write("                        <br>\n");
      out.write("                        \n");
      out.write("                        <button class=\"btn btn-lg btn-primary btn-block mb-0 w-75 mt-5\" type=\"submit\">Agregar al carrito</button>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    <ul class=\"mt-5\">     \n");
      out.write("                        <p class=\"h4\">Especificaciones</p>\n");
      out.write("                        <li class=\"text-justify lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n");
      out.write("                        <li class=\"text-justify lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n");
      out.write("                        <li class=\"text-justify lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n");
      out.write("                        <li class=\"text-justify lead\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12 mt-3 p-3\">\n");
      out.write("                    <p class=\"h3\">DESCRIPCIÓN DEL PRODUCTO</p>\n");
      out.write("                    <p class=\"lead text-justify\">\n");
      out.write("                        <span>\n");
      out.write("                           ");
      out.print(descrip);
      out.write("\n");
      out.write("                        </span>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <footer class=\"footer shadow-lg pb-2 mt-5\">\n");
      out.write("            <hr>\n");
      out.write("            <div class=\"row container-fluid mt-0\">\n");
      out.write("                <div class=\"col-md-3 text-center\">\n");
      out.write("                    <img src=\"images/logo.png\" width=\"60\" height=\"60\" class=\"mb-0 mp-0 mt-0\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-6 text-center\">\n");
      out.write("                    <a href=\"https://github.com/Manudam69\" target=\"_blank\"><img src=\"images/github.png\" width=\"35\" height=\"35\" class=\"mb-0 mp-0  mr-2 mt-2 text-right\" style=\"filter: invert(100)\"></a>\n");
      out.write("                    <a href=\"https://twitter.com/farolitooficial?lang=es\" target=\"_blank\"><img src=\"images/twitter.png\" width=\"35\" height=\"35\" class=\"mb-0 mp-0 mt-2 text-right\" style=\"filter: invert(100)\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3 text-center mt-3\">\n");
      out.write("                    <span class=\"text-muted\">El farolito &copy; 2018. Todos los derechos reservados.</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("        <script src=\"js/producto.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>   \n");
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

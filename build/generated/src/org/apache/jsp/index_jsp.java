package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>Inicio</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/index.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Abel\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Saira\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"images/logo.png\">\n");
      out.write("    </head>\n");
      out.write("\n");
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
      out.write("                        <li class=\"nav-item active\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./index.jsp\">Inicio<span class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"./Vision.jsp\">Visión</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
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
      out.write("                    <a href=\"./carrito.jsp\"><img src=\"images/carrito.png\" class=\"img-fluid mb-3 mr-3\" alt=\"Algo pasa\" width=\"50\"></a>\n");
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
      out.write("        <div class=\"bd-example mt-5 mb-0 pt-5\">\n");
      out.write("            <div id=\"carouselExampleCaptions\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                <ol class=\"carousel-indicators\">\n");
      out.write("                    <li data-target=\"#carouselExampleCaptions\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                    <li data-target=\"#carouselExampleCaptions\" data-slide-to=\"1\"></li>\n");
      out.write("                </ol>\n");
      out.write("                <div class=\"carousel-inner\" role=\"listbox\">\n");
      out.write("                    <div class=\"carousel-item active\">\n");
      out.write("                        <img class=\"d-block w-100\" src=\"images/slide1.jpg\" alt=\"First slide\">\n");
      out.write("                        <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                            <h3>Electrónicos</h3>\n");
      out.write("                            <p>Computadoras y Celulares</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"carousel-item\">\n");
      out.write("                        <img class=\"d-block w-100\" src=\"images/slide2.jpg\" alt=\"Second slide\">\n");
      out.write("                        <div class=\"carousel-caption d-none d-md-block\">\n");
      out.write("                            <h3>Electrodomésticos</h3>\n");
      out.write("                            <p>Linea blanca.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <a class=\"carousel-control-prev\" href=\"#carouselExampleCaptions\" role=\"button\" data-slide=\"prev\">\n");
      out.write("                    <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                    <span class=\"sr-only\">Anterior</span>\n");
      out.write("                </a>\n");
      out.write("                <a class=\"carousel-control-next\" href=\"#carouselExampleCaptions\" role=\"button\" data-slide=\"next\">\n");
      out.write("                    <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("                    <span class=\"sr-only\">Siguiente</span>\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <hr>\n");
      out.write("        <p class=\"h1 text-center mb-3\" style=\"font-family: 'Saira', sans-serif;\">DESCUBRE NUESTROS PRODUCTOS</p>\n");
      out.write("\n");
      out.write("        <div class=\"container marketing\" id=\"contenido\">\n");
      out.write("            <div class=\"row text-center\">\n");
      out.write("                <div class=\"col-lg-6\">\n");
      out.write("                    <img class=\"rounded-circle\" src=\"images/Refrigeradores.jpg\" alt=\"Generic placeholder image\" width=\"140\" height=\"140\">\n");
      out.write("                    <h2>Linea Blanca</h2>\n");
      out.write("                    <p class=\"text-justify\">Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>\n");
      out.write("                    <p><a class=\"btn btn-secondary\" href=\"./LineaBlanca.jsp\" role=\"button\">Ver más &raquo;</a></p>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-6\">\n");
      out.write("                    <img class=\"rounded-circle\" src=\"images/celular.jpg\" alt=\"Generic placeholder image\" width=\"140\" height=\"140\">\n");
      out.write("                    <h2>Electrónicos</h2>\n");
      out.write("                    <p class=\"text-justify\">Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>\n");
      out.write("                    <p><a class=\"btn btn-secondary\" href=\"./Electronicos.jsp\" role=\"button\">Ver más &raquo;</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <hr class=\"featurette-divider\">\n");
      out.write("            <div class=\"row featurette\">\n");
      out.write("                <div class=\"col-md-7\">\n");
      out.write("                    <h2 class=\"featurette-heading text-left\">Descubre el nuevo Iphone XS</h2>\n");
      out.write("                    <p class=\"lead text-justify\">Presentamos el iPhone Xs con dos tamaños de pantalla Super Retina, incluida la pantalla más grande en un iPhone hasta ahora. Face ID aún más rápido.\n");
      out.write("                        El chip más inteligente y potente en un smartphone. Y un sistema de cámara dual revolucionario con Control de Profundidad. El iPhone XS tiene todo lo que te gusta del iPhone, llevado al  extremo.</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-5\">\n");
      out.write("                    <img class=\"rounded mx-auto d-block\" src=\"images/XS.jpg\" alt=\"Generic placeholder image\" width=\"300\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <hr class=\"featurette-divider\">\n");
      out.write("\n");
      out.write("            <div class=\"row featurette\">\n");
      out.write("                <div class=\"col-md-7 order-md-2\">\n");
      out.write("                    <h2 class=\"featurette-heading\">Las mejores Laptops del mercado</h2>\n");
      out.write("                    <p class=\"lead text-justify\">\n");
      out.write("                        Donde deja de ser un simple juego para convertirse en un videojuego. <br>\n");
      out.write("                        Laptop de 15 pulgadas ideal para los aficionados a los videojuegos. \n");
      out.write("                        Cuenta con gráficos realistas NVIDIA® GeForce®, un teclado de tamaño completo y un \n");
      out.write("                        procesador potente para obtener un rendimiento superior de los juegos.\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-5 order-md-1\">\n");
      out.write("                    <img class=\"featurette-image img-fluid mx-auto\" width=\"300\" src=\"images/laptop.png\" alt=\"Generic placeholder image\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <hr class=\"featurette-divider\">\n");
      out.write("\n");
      out.write("            <div class=\"row featurette\">\n");
      out.write("                <div class=\"col-md-7\">\n");
      out.write("                    <h2 class=\"featurette-heading\">Refrigeradores de alta calidad</h2>\n");
      out.write("                    <p class=\"lead text-justify\">\n");
      out.write("                        Conoce la sofisticada marca de refrigerador Samsung de 14 pies cúbicos, con sistema de refrigeración Twing \n");
      out.write("                        cooling Plus el cual te permite mantener una mejor conservación de alimentos..</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-5\">\n");
      out.write("                    <img class=\"featurette-image img-fluid mx-auto text-center\" width=\"200\" src=\"images/refrigerador.png\" alt=\"Generic placeholder image\">\n");
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
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
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

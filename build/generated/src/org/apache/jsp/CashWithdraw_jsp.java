package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class CashWithdraw_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Random rndm;
       
            SimpleDateFormat formatter ;	
            Date dt ;
        
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("      <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <title>Global Bank Management System</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("        integrity=\"sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi\" crossorigin=\"anonymous\">\n");
      out.write("      \n");
      out.write("    <!--navbar-->\n");
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg bg-body-tertiary\" style=\"background-color: #e3f2fd;\" style=\"display: static \">\n");
      out.write("                                                                                                   \n");
      out.write("                                                                                                    \n");
      out.write("        <div class=\"container-fluid \">\n");
      out.write("        <ul class=\"navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll\" style=\"--bs-scroll-height: 100px;\">                 \n");
      out.write("            \n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"#\"></a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a class=\"nav-link\" href=\"#\"></a>\n");
      out.write("            </li>\n");
      out.write("\n");
      out.write("        </ul>\n");
      out.write("          <a class=\"navbar-brand \" href=\"#\"><b>Global Bank</b></a>\n");
      out.write("          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-bank2\" viewBox=\"0 0 16 16\">\n");
      out.write("            <path d=\"M8.277.084a.5.5 0 0 0-.554 0l-7.5 5A.5.5 0 0 0 .5 6h1.875v7H1.5a.5.5 0 0 0 0 1h13a.5.5 0 1 0 0-1h-.875V6H15.5a.5.5 0 0 0 .277-.916l-7.5-5zM12.375 6v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zM8 4a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM.5 15a.5.5 0 0 0 0 1h15a.5.5 0 1 0 0-1H.5z\"/>\n");
      out.write("          </svg>\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarScroll\" aria-controls=\"navbarScroll\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("          </button>\n");
      out.write("\n");
      out.write("          <div class=\"collapse navbar-collapse\" id=\"navbarScroll\">\n");
      out.write("            <ul class=\"navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll\" style=\"--bs-scroll-height: 100px;\">                 \n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <form class=\"d-flex\">\n");
      out.write("                <ul class=\"navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll\" style=\"--bs-scroll-height: 100px;\">\n");
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link active\" aria-current=\"page\" href=\"Home.jsp\">Home</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link active\" aria-current=\"page\" href=\"Logout.jsp\">Logout</a>\n");
      out.write("                </li>\n");
      out.write("                    \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"#\"></a>\n");
      out.write("                </li>\n");
      out.write("                    \n");
      out.write("                <div class=\"btn-group\">\n");
      out.write("                    <button type=\"button\" class=\"btn btn-info p-1 dropdown-toggle\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("                      Address\n");
      out.write("                    </button>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                      <li><a class=\"dropdown-item\" href=\"#\">Global Square, Raigwan,<br> Patan Rd, Jabalpur,<br> Madhya Pradesh 482002</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div><br>\n");
      out.write("                \n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">About Us</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link\" href=\"#\">Contact Us</a>\n");
      out.write("                </li>\n");
      out.write("                  \n");
      out.write("                </ul>\n");
      out.write("            </form>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("</head>\n");
      out.write("    <body style=\"display: static;\n");
      out.write("            align-items: center;\n");
      out.write("            justify-content: center;\n");
      out.write("            padding:  10px;\n");
      out.write("            min-height: 90vh;\n");
      out.write("            background: lightskyblue;\">\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            rndm = new Random();
        
      out.write("\n");
      out.write("        \n");
      out.write("        ");
      out.write("\n");
      out.write("       \n");
      out.write("        ");
  
            dt = new Date();
            formatter=new SimpleDateFormat("dd/MM/yyyy");
        
      out.write("\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        \n");
      out.write("        <center>  \n");
      out.write("             <div><h1 class=\"margin:5%;\">Welcome ");
      out.print(session.getAttribute("login_id"));
      out.write(' ');
      out.print(session.getAttribute("account_holder"));
      out.write(" Into Your Account</h1>\n");
      out.write("             </div></center>\n");
      out.write("        <center>\n");
      out.write("        <center><div><h1 class='margin:5%;'>Transaction for Customer Cash Withdraw</h1></div></center>\n");
      out.write("        \n");
      out.write("        <h3>\n");
      out.write("            <form action=\"CashWithdrawDBMS.jsp\" method=\"post\" style=\"position:static;  \n");
      out.write("                    margin-top: 5%; \n");
      out.write("                    margin-left: 15%;\n");
      out.write("                    margin-right: 13%;\n");
      out.write("                    background: cornflowerblue;\n");
      out.write("                    width: 40%;\n");
      out.write("                    height: auto;\n");
      out.write("                    padding: 50px;\n");
      out.write("                    border-radius: 10px;\n");
      out.write("                    box-shadow: 7px 7px 60px #000;\n");
      out.write("                    margin-bottom: 40vh;\">\n");
      out.write("                \n");
      out.write("                <table  align=\"center\">\n");
      out.write("                <tr style=\"width: 80%;\n");
      out.write("                           margin: 10%;\n");
      out.write("                           padding: 5%;\n");
      out.write("                           font-size: 20px;\">\n");
      out.write("                    <td style=\"width: 50%\">Account Number</td>\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"text\" name=\"accno\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 80%;\n");
      out.write("                           margin: 10%;\n");
      out.write("                           padding: 5%;\n");
      out.write("                           font-size: 20px;\">\n");
      out.write("                    <td style=\"width: 50%\">Reference</td>\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"text\" name=\"refname\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 80%;\n");
      out.write("                           margin: 10%;\n");
      out.write("                           padding: 5%;\n");
      out.write("                           font-size: 20px;\">\n");
      out.write("                    <td style=\"width: 50%\">Date of Transaction</td>\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"text\" name=\"dot\" value=\"");
      out.print(formatter.format(dt));
      out.write("\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 80%;\n");
      out.write("                           margin: 10%;\n");
      out.write("                           padding: 5%;\n");
      out.write("                           font-size: 20px;\">\n");
      out.write("                    <td style=\"width: 50%\">Transaction ID</td>\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"text\" name=\"trid\" value=\"");
      out.print(rndm.nextInt());
      out.write("\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 80%;\n");
      out.write("                           margin: 10%;\n");
      out.write("                           padding: 5%;\n");
      out.write("                           font-size: 20px;\">\n");
      out.write("                    <td style=\"width: 50%\">Withdraw Amount</td>\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"text\" name=\"wthamt\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 80%;\n");
      out.write("                           margin: 10%;\n");
      out.write("                           padding: 5%;\n");
      out.write("                           font-size: 20px;\">\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"submit\" name=\"b1\" value=\"Withdraw\"></td>\n");
      out.write("                    <td style=\"width: 50%\"><input type=\"reset\" name=\"b2\" value=\"Reset\"></td>\n");
      out.write("                </tr>\n");
      out.write("                </table>\n");
      out.write("            </form>\n");
      out.write("        </h3>\n");
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

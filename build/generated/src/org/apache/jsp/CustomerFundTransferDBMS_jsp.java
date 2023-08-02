package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class CustomerFundTransferDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con=null; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DBCON.jsp");
  }

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
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            try 
            {
                Class.forName("com.mysql.jdbc.Driver");
                String connectionURL = "jdbc:mysql://localhost:3306/GlobalBankingDB";
                String dbuser = "root";
                String dbpass = "root";
                
                con = DriverManager.getConnection(connectionURL, dbuser, dbpass);
                
                //out.println("Connection Success.....<br><br>");
            }
            catch(Exception e)
            {
                out.println("Connection Failed....." +e);
            }
           
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("     <head>\n");
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
      out.write("    \n");
      out.write("    <body style=\"display: static;\n");
      out.write("            align-items: center;\n");
      out.write("            justify-content: center;\n");
      out.write("            padding:  10px;\n");
      out.write("            min-height: 90vh;\n");
      out.write("            background: lightskyblue;\">\n");
      out.write("        \n");
      out.write("        ");

            try
            {
                int lastbal = 0;
                String viewquerylast = "select * from "+session.getAttribute("login_id");
                Statement stmt1 = con.createStatement();
                ResultSet rs2 = stmt1.executeQuery(viewquerylast);
                
                while(rs2.next())
                {
                    lastbal = rs2.getInt(7);
                }
                        
                String accno = request.getParameter("accno");
                String refname = request.getParameter("refname");
                String dot = request.getParameter("dot");
                String trid = request.getParameter("trid");
                int depamount = Integer.parseInt(request.getParameter("depamt"));
                
                String depositequery = "insert into "+session.getAttribute("login_id")+" value(?,?,?,?,?,?,?)";
                
                PreparedStatement pst1 = con.prepareStatement(depositequery);
                
                pst1.setString(1, refname);
                pst1.setString(2, accno);
                pst1.setString(3, dot);
                pst1.setString(4, trid);
                pst1.setInt(5, 0);
                pst1.setInt(6, depamount);
                pst1.setInt(7, lastbal-depamount);
                
                pst1.executeUpdate();
                
                long n = depamount;
                long limit = 1000000000000L, curr_hun, t = 0;
                String answer = "";
                
                if (n == 0)
			answer += "zero";
                
                String multiplier[] = { "", "Trillion", "Billion", "Million", "Thousand" };
                
                String first_twenty[] = {
			"",	 "One",	 "Two",	 "Three",
			"Four", "Five",	 "Six",	 "Seven",
			"Eight", "Nine", "Ten",	 "Eleven",
			"Twelve", "Thirteen", "Fourteen", "Fifteen",
			"Sixteen", "Seventeen", "Eighteen", "Nineteen"
		};
                
                String tens[] = { "",	 "Twenty", "Thirty", "Forty", "Fifty", "Sixty",
				"Seventy", "Eighty", "Ninety" };
                
                if (n < 20L)
			answer += first_twenty[(int)n];
                
                for (long i = n; i > 0; i %= limit, limit /= 1000) {

			curr_hun = i / limit;

			while (curr_hun == 0) {

				i %= limit;
				limit /= 1000;
				curr_hun = i / limit;
				++t;
			}

			if (curr_hun > 99)
				answer += (first_twenty[(int)curr_hun / 100] + " Hundred ");

			curr_hun = curr_hun % 100;

			if (curr_hun > 0 && curr_hun < 20)
				answer+= (first_twenty[(int)curr_hun] + " ");

			else if (curr_hun % 10 == 0 && curr_hun != 0)
				answer+= (tens[(int)curr_hun / 10 - 1] + " ");

			else if (curr_hun > 20 && curr_hun < 100)
				answer+= (tens[(int)curr_hun / 10 - 1] + " "+ first_twenty[(int)curr_hun % 10]+ " ");

			if (t < 4)
				answer += (multiplier[(int)++t] + " ");
		}
                
                out.println("<br><br><center><div><h1 class='margin:5%;'>"+answer+" Cash Transfer Successfully....In "+accno+" Table</h1></div></center>");
                
                //--------------------------for customer--------------------------------
                
                int lastbalcustomer = 0;
                String viewquerylastcustomer = "select * from "+accno;
                Statement stmt2 = con.createStatement();
                ResultSet rs3 = stmt2.executeQuery(viewquerylastcustomer);
                
                while(rs3.next())
                {
                    lastbalcustomer = rs3.getInt(7);
                }
                        
                String depositequerycustomer = "insert into "+accno+" value(?,?,?,?,?,?,?)";
                
                PreparedStatement pst2 = con.prepareStatement(depositequerycustomer);
                
                pst2.setString(1, accno);
                pst2.setString(2, refname);
                pst2.setString(3, dot);
                pst2.setString(4, trid);
                pst2.setInt(5, depamount);
                pst2.setInt(6, 0);
                pst2.setInt(7, lastbalcustomer+depamount);
                
                pst2.executeUpdate();
                
                out.println("<br><br><center><div><h1 class='margin:5%;'>"+answer+" Cash Transfer Successfully....From "+accno+" Table</h1></div></center>");
            }
            catch(Exception e)
            {
                out.println("<br><br><center><div><h1 class='margin:5%;'>Cash Not Deposit</h1></div></center>");
            }
           
        
      out.write("\n");
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

<%@include file="DBCON.jsp" %>
<%@include file="ViewCustomer.jsp" %>
<html>
      
    <body style="display: static;
            margin-bottom: 800px;
            margin-top: 50px;
            align-items: center;
            justify-content: center;
            padding:  10px;
            min-height: 90vh;
            background: lightskyblue;">
            
        <%
            try
            {
                String choice = request.getParameter("choice");
                
                String CustomerViewquery = "";
                
                if(choice.equalsIgnoreCase("custname"))
                {
                    String cn = request.getParameter("cuschoice");
                    CustomerViewquery = "select * from account where custname='"+cn+"'";
                    
                    //session.setAttribute("value", choice);
                }
                
                else if(choice.equalsIgnoreCase("address"))
                {
                    String cn = request.getParameter("cuschoice");
                    CustomerViewquery = "select * from account where address='"+cn+"'";
                }
                
                else if(choice.equalsIgnoreCase("accno"))
                {
                    String cn = request.getParameter("cuschoice");
                    CustomerViewquery = "select * from account where accno='"+cn+"'";
                }
                
                else if(choice.equalsIgnoreCase("contactno"))
                {
                    String cn = request.getParameter("cuschoice");
                    CustomerViewquery = "select * from account where contactno='"+cn+"'";
                }
                
                else if(choice.equalsIgnoreCase("gender"))
                {
                    String cn = request.getParameter("cuschoice");
                    CustomerViewquery = "select * from account where gender='"+cn+"'";
                }
                
                else
                {
                    CustomerViewquery = "select * from account";
                }
                
                Statement stmt = con.createStatement();
                
                ResultSet rs1 = stmt.executeQuery(CustomerViewquery);
                
                
                out.println("<center><div><h4 class='margin:5%;'>Account NO | Customer Name | Father Name | Date of Birth | Gender | Account Opening Date | Birth Place | Contact No.</h4></div></center>");

                while(rs1.next())
                {
                    out.println("<br>");
                    out.println("<center><div><h4 class='margin:5%;'>"+rs1.getString(1)+" | "+rs1.getString(2)+" | "+rs1.getString(3)+" | "+rs1.getString(4)+" | "+rs1.getString(5)+" | "+rs1.getString(6)+" | "+rs1.getString(7)+" | "+rs1.getInt(8)+"</h4></div></center>");

                    //out.println(" " +rs1.getString(1));
                    //out.println(" " +rs1.getString(2));
                    //out.println(" " +rs1.getString(3));
                    //out.println(" " +rs1.getString(4));
                    //out.println(" " +rs1.getString(5));
                    //out.println(" " +rs1.getString(6));
                    //out.println(" " +rs1.getString(7));
                    //out.println(" " +rs1.getInt(8));
                    //out.println("<br>");
                    
                    session.setAttribute("acc_no", rs1.getString(1));
                }
            }
                
            catch(Exception e)
            {
                    out.println("<br><br><center><div><h1 class='margin:5%;'>Data Not Found</h1></div></center>");
            }
        %>
        
        <br>
        <h4><a href="AdminUpdateCustomer.jsp"><input type="submit" name="update" value="Update"></a><h4>
        
        <h4><a href="AdminDeleteCustomer.jsp"><input type="submit" name="delete" value="Delete"></a><h4>
    </body>
</html>
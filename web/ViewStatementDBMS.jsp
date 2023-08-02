<%@include file="DBCON.jsp" %>
<%@include file="ViewStatement.jsp" %>
<html>
     
    <body style="display: static;
            margin-bottom: 800px;
            margin-top: 50px;
            align-items: center;
            justify-content: center;
            padding:  10px;
            min-height: 90vh;
            background: lightskyblue;">
        
        <br>
        <center>  
             <div><h1 class="margin:5%;">Statement</h1>
             </div></center>
        <center>
        
        <%
            try
            {
                String choice = request.getParameter("choice");
                
                String StatementViewquery = "";
                
                if(choice.equalsIgnoreCase("AccountNo"))
                {
                    String chaccount = request.getParameter("cuschoice");
                    StatementViewquery = "select * from "+chaccount;
                }
                
                else
                {
                    StatementViewquery = "select * from transactionbank";
                }
                
                Statement stmt = con.createStatement();
                
                ResultSet rs1 = stmt.executeQuery(StatementViewquery);
                
                out.println("<center><div><h4 class='margin:5%;'>Account NO | Reference | Transaction Date | Transaction ID | Deposit Amount | Withdraw Amount | Total Amount</h4></div></center>");

                while(rs1.next())
                {
                    out.println("<br>");
                    out.println("<center><div><h4 class='margin:5%;'>"+rs1.getString(1)+" | "+rs1.getString(2)+" | "+rs1.getString(3)+" | "+rs1.getString(4)+" | "+rs1.getInt(5)+" | "+rs1.getInt(6)+" | "+rs1.getInt(7)+"</h4></div></center>");

                    //out.println(" " +rs1.getString(1));
                    //out.println(" " +rs1.getString(2));
                    //out.println(" " +rs1.getString(3));
                    //out.println(" " +rs1.getString(4));
                    //out.println(" " +rs1.getInt(5));
                    //out.println(" " +rs1.getInt(6));
                    //out.println(" " +rs1.getInt(7));
                    
                    //out.println("<br>");
                }
                
            }
            catch(Exception e)
            {
                out.println("<br><br><center><div><h1 class='margin:5%;'>Data Not Found</h1></div></center>");
            }
        %>
    </body>
</html>
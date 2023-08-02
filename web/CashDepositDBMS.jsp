<%@include file="DBCON.jsp" %>
<html>
      <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Global Bank Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
      
    <!--navbar-->

    <nav class="navbar navbar-expand-lg bg-body-tertiary" style="background-color: #e3f2fd;" style="display: static ">
                                                                                                   
                                                                                                    
        <div class="container-fluid ">
        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">                 
            
            <li class="nav-item">
                <a class="nav-link" href="#"></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"></a>
            </li>

        </ul>
          <a class="navbar-brand " href="#"><b>Global Bank</b></a>
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bank2" viewBox="0 0 16 16">
            <path d="M8.277.084a.5.5 0 0 0-.554 0l-7.5 5A.5.5 0 0 0 .5 6h1.875v7H1.5a.5.5 0 0 0 0 1h13a.5.5 0 1 0 0-1h-.875V6H15.5a.5.5 0 0 0 .277-.916l-7.5-5zM12.375 6v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zm-2.5 0v7h-1.25V6h1.25zM8 4a1 1 0 1 1 0-2 1 1 0 0 1 0 2zM.5 15a.5.5 0 0 0 0 1h15a.5.5 0 1 0 0-1H.5z"/>
          </svg>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">                 
            </ul>

            <form class="d-flex">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Home.jsp">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Logout.jsp">Logout</a>
                </li>
                    
                <li class="nav-item">
                    <a class="nav-link" href="#"></a>
                </li>
                    
                <div class="btn-group">
                    <button type="button" class="btn btn-info p-1 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                      Address
                    </button>
                    <ul class="dropdown-menu">
                      <li><a class="dropdown-item" href="#">Global Square, Raigwan,<br> Patan Rd, Jabalpur,<br> Madhya Pradesh 482002</a></li>
                    </ul>
                </div><br>
                
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                </li>
                  
                </ul>
            </form>
          </div>
        </div>
    </nav>
</head>
    <body style="display: static;
            align-items: center;
            justify-content: center;
            padding:  10px;
            min-height: 90vh;
            background: lightskyblue;">
        <%
            try
            {
                int lastbal = 0;
                String viewquerylast = "select * from transactionbank";
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
                
                String depositequery = "insert into transactionbank value(?,?,?,?,?,?,?)";
                
                PreparedStatement pst1 = con.prepareStatement(depositequery);
                
                pst1.setString(1, accno);
                pst1.setString(2, refname);
                pst1.setString(3, dot);
                pst1.setString(4, trid);
                pst1.setInt(5, depamount);
                pst1.setInt(6, 0);
                pst1.setInt(7, lastbal+depamount);
                
                pst1.executeUpdate();
                
                //Deposit amount to digits
                
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
                
                out.println("<br><br><center><div><h1 class='margin:5%;'>"+answer+" Cash Deposite in transaction bank table Successfully....</h1></div></center>");
                
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
                
                out.println("<br><br><center><div><h1 class='margin:5%;'>"+answer+" Cash Deposite in customer "+accno+" table Successfully....</h1></div></center>");
            }
            catch(Exception e)
            {
                out.println("<br><br><center><div><h1 class='margin:5%;'>Cash Not Deposit</h1></div></center>");
            }
           
        %>
    </body>
</html>

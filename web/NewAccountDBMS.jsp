<%@include  file="DBCON.jsp" %>
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
                String acno = request.getParameter("acno");
                String cname = request.getParameter("cname");
                String cfname = request.getParameter("cfname");
                String cdob = request.getParameter("cdob");
                String cgen = request.getParameter("cgen");
                String opdate = request.getParameter("opdate");
                String cadd = request.getParameter("cadd");
                String ccontact = request.getParameter("ccontact");
                
                String role = request.getParameter("rrole");
                String password = request.getParameter("password");
                String secquestion = request.getParameter("secques");
                String secanswer = request.getParameter("secans");
                String status = request.getParameter("status");
                
                
                String accountinsertquery = "insert into account values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                
                PreparedStatement pst1 = con.prepareStatement(accountinsertquery);
                
                pst1.setString(1, acno);
                pst1.setString(2, cname);
                pst1.setString(3, cfname);
                pst1.setString(4, cdob);
                pst1.setString(5, cgen);
                pst1.setString(6, opdate);
                pst1.setString(7, cadd);
                pst1.setInt(8, Integer.parseInt(ccontact));
                pst1.setString(9, role);
                pst1.setString(10, password);
                pst1.setString(11, secquestion);
                pst1.setString(12, secanswer);
                pst1.setString(13, status);
                
                pst1.executeUpdate();
                
                out.println("<br><br><center><div><h1 class='margin:5%;'>Account Created Successfully</h1></div></center>");
                
                String customertable = "create table "+acno+"(accountno varchar(20), ref varchar(20), dotrans varchar(20), transid varchar(20), depamount int, wdrwamount int, netbal int);";
                
                PreparedStatement pst2 = con.prepareStatement(customertable);
                
                pst2.executeUpdate();
                
                out.println("<br><br><center><div><h1 class='margin:5%;'>Customer transaction table created also.... </h1></div></center>");

            }
            catch(Exception e)
            {
                out.println("<br><br><center><div><h1 class='margin:5%;'>Account Not Created</h1></div></center>");
            }
        
        %>
    </body>
</html>
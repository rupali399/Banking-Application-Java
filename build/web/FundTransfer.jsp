<%@page import="java.util.Random" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
        
        <%!Random rndm;%>
        <%
            rndm = new Random();
        %>
        
        <%!       
            SimpleDateFormat formatter ;	
            Date dt ;
        %>
       
        <%  
            dt = new Date();
            formatter=new SimpleDateFormat("dd/MM/yyyy");
        %>
       
        <br><br>
        <center>  
             <div><h1 class="margin:5%;">Welcome <%=session.getAttribute("login_id")%> <%=session.getAttribute("account_holder")%> Into Your Account | <%=session.getAttribute("login_time")%></h1>
             </div></center>
        <center>
        <center>  
             <div><h1 class="margin:5%;">Fund Transfer by Bank From one Account to other Account</h1>
             </div></center>
        <center>
        <h3>
            <form action="FundTransferDBMS.jsp" method="post" style="position:static;  
                    margin-top: 5%; 
                    margin-left: 13%;
                    margin-right: 13%;
                    background: cornflowerblue;
                    width: 40%;
                    height: auto;
                    padding: 50px;
                    border-radius: 10px;
                    box-shadow: 7px 7px 60px #000;
                    margin-bottom: 40vh;">
                <table  align="center">
                <tr style="width: 80%;
                           margin: 10%;
                           padding: 5%;
                           font-size: 20px;">
                    <td style="width: 50%">Account Number</td>
                    <td style="width: 50%"><input type="text" name="accno"></td>
                </tr>
                
                <tr style="width: 80%;
                           margin: 10%;
                           padding: 5%;
                           font-size: 20px;">
                    <td style="width: 50%">Reference</td>
                    <td style="width: 50%"><input type="text" name="refname"></td>
                </tr>
                
                <tr style="width: 80%;
                           margin: 10%;
                           padding: 5%;
                           font-size: 20px;">
                    <td style="width: 50%">Date of Transaction</td>
                    <td style="width: 50%"><input type="text" name="dot" value="<%=formatter.format(dt)%>"></td>
                </tr>
                
                <tr style="width: 80%;
                           margin: 10%;
                           padding: 5%;
                           font-size: 20px;">
                    <td style="width: 50%">Transaction ID</td>
                    <td style="width: 50%"><input type="text" name="trid" value="<%=rndm.nextInt()%>"></td>
                </tr>
                
                <tr style="width: 80%;
                           margin: 10%;
                           padding: 5%;
                           font-size: 20px;">
                    <td style="width: 50%">Transfer Amount</td>
                    <td style="width: 50%"><input type="text" name="depamt"></td>
                </tr>
                
                <tr style="width: 80%;
                           margin: 10%;
                           padding: 5%;
                           font-size: 20px;">
                    <td style="width: 50%"><input type="submit" name="b1" value="Transfer"></td>
                    <td style="width: 50%"><input type="reset" name="b2" value="Reset"></td>
                </tr>
                </table>
            </form>
        </h3>
    </body>
</html>

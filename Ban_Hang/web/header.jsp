<%-- 
    Document   : header.jsp
    Created on : Dec 15, 2018, 3:30:28 AM
    Author     : diepv
--%>

<%@page import="model.Users"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/product.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
	<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Montserrat|Rokkitt" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	</script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">
    </head>
    <body>
        <%
            Users users=null;
            if(session.getAttribute("user")!=null){
                users = (Users)session.getAttribute("user");
            }    

            Cart cart = (Cart)session.getAttribute("cart");
            if(cart==null){
                cart = new Cart();
                session.setAttribute("cart",cart);
            }
            double total = 0;
            if(cart!=null){
                total = cart.totalCart();
            }
        %>
        <header>
            <div id="header-top">
                <div class="header-top-1">
                    <div class="header-1">
                        <span>Welcome to website</span>
                    </div>
                    <div class="header-2">
                        <span>Phone: 01653351209</span>
                    </div>
                </div>
                <div class="header-top-2">
                    <div class="user header-top-2-item">
                        <a href="#">
                            <i class="fas fa-user"></i>
                            <span>
                                <%
                                    if (users != null){
                                        out.print(users.getUserEmail());
                                    }
                                    else out.print("My Account");
                                %>
                            </span>
                        </a>
                    </div>
                    <div class="my-wishlist header-top-2-item">
                        <a href="#">
                            <i class="fas fa-heart"></i>
                            <span>My WishList</span>
                        </a>
                    </div>
                    <div class="log-out header-top-2-item">   
                        <%
                        if(users!=null){%>
                        <a href="UserServlet?command=logout">
                            <i class="fas fa-unlock "></i>
                            <span>Logout</span>
                        </a>
                        <%}%>
                        <%if(users==null){%>
                        <a href="login.jsp">
                            <i class="fas fa-unlock"></i>
                            <span>Login</span>
                        </a>
                        <%}%>
                    </div>
                    <div class="admin header-top-2-item">
                        <%if(users!=null){%>
                        <a href="register.jsp">
                            <i class="fas fa-unlock"></i>
                            <span>Admin</span>
                        </a>
                        <%}%>
                        <%if(users==null){%>
                        <a href="register.jsp">
                            <i class="fas fa-unlock"></i>
                            <span>Register</span>
                        </a>
                        <%}%>
                    </div>
                </div>
            </div>
            <div id="header-main" class="row">
                <div class="col-4 logo"><a id="panel" onclick="myFunction()">Footwear</a></div>
                <div class="col-4 input-group">
                    <input class="form-control" type="search" placeholder="Search name or id of product">
                    <div class="input-group-append">
                        <button style="margin-bottom: 35px !important;
                                }" class="btn" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <div class="col-4 cart"><a href="cart.jsp"><i class="fas fa-shopping-cart"></i><span>$<%=total%></span></a></div>
            </div>
            <div class="main-menu" style="margin-top: 50px;">
                <div class="nav">
                    <ul>
                        <li style="padding-left:250px;"><a href="index.jsp">Home</a></li>
                        <li class="Product"><a href="#">Product</a>
                            <ul class="megamenu">
                                <li><a href="#">Size</a>
                                    <ul>
                                        <li><a href="size.jsp?typesize=large">Large</a></li>
                                        <li><a href="size.jsp?typesize=medium">Medium</a></li>
                                        <li><a href="size.jsp?typesize=small">Small</a></li>
                                        
                                    </ul>
                                </li>

                                <li><a href="#">Color</a>
                                    <ul>
                                        <li><a href="color.jsp?color=black">Black</a></li>
                                        <li><a href="color.jsp?color=red">Red</a></li>
                                        <li><a href="color.jsp?color=brown">Brown</a></li>
                                        <li><a href="color.jsp?color=white">White</a></li>
                                        <li><a href="color.jsp?color=platinum">Platinum</a></li>
                                        <li><a href="color.jsp?color=yellow">Yellow</a></li>
                                        <li><a href="color.jsp?color=orange">Orange</a></li>
                                    </ul>
                                </li>

                                <li><a href="brand.jsp">Brand</a>
                                    <ul>
                                        <li><a href="brand.jsp?brand=AIR">AIR JORDAN</a></li>
                                        <li><a href="brand.jsp?brand=NIKE">NIKE</a></li>
                                        <li><a href="brand.jsp?brand=ADIDAS">ADIDAS</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Men&Women</a></li>
                        <li><a href="thongke.jsp">Thống kê</a></li>
                        <li><a href="about.jsp">About</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                    </ul>	
                    </nav>

                </div>
            </div>
        </header>

    </body>
</html>

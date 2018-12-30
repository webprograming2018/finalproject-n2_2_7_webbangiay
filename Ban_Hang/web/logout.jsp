<%-- 
    Document   : index.jsp
    Created on : Dec 15, 2018, 3:31:45 AM
    Author     : diepv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Rokkitt" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        
        <jsp:include page="header.jsp"></jsp:include>
        
            <section class="container-fluid bg">
                <section class="row justify-content-center">
                    <section class="col-12 col-sm-6 col-md-3">
                        <form class="form-container " action= "UserServlet" method="POST">
                            <%if(request.getAttribute("error")!=null){%>
                            <div>
                                <p style="color: red;"><%=request.getAttribute("error")%></p>
                            </div>
                            <%}%>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Username *</label>
                                <input class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password *</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pass">
                            </div>
                            <input type="hidden" value="logout" name="command">
                            <input type="submit" value="Logout">
                        </form>		
                    </section>
                </section>	
            </section>
            
            <div class="quote" style="font-family: 'Montserrat', sans-serif;text-align: center;">
                <h2 class="intro">It started with a simple idea: Create quality, well-designed products that I wanted myself.</h2>
            </div>
            <div class="collection">
                <div class="men-collection">
                    <img src="images/image5.jpg">
                    <a href="men.html">
                        <p>Shop Men's Collection</p>
                    </a>
                </div>
                <div class="women-collection">
                    <img src="images/image6.jpg">
                    <a href=""women.html">
                       <p>Shop Women's Collection</p>
                        <a>
                            </div>
                            </div>
                            <div class="seller">
                                <h2>Best Seller</h2>
                            </div>
                            <!-- row1 -->
                            <div class="row-products">
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/image7.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA 1</p>
                                        <p class="price">$100</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/image8.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA 2</p>
                                        <p class="price">$101</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/image9.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA 3</p>
                                        <p class="price">$102</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/image10.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA 4</p>
                                        <p class="price">$103</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                            </div>
                            <!-- row2 -->
                            <div class="row-products">
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-5.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA 5</p>
                                        <p class="price">$104</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-6.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA 6</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-7.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-8.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                            </div>
                            <!-- row3 -->
                            <div class="row-products">
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-9.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-10.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-11.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-12.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                            </div>
                            <!-- row4 -->
                            <div class="row-products">
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-13.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-14.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">                                                                               
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-15.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="img-product">
                                        <img src="images/item-16.jpg" alt="">
                                    </div>
                                    <div class="name-price-product">
                                        <p class="name">WOMEN'S BOOTS SHOES MACA</p>
                                        <p class="price">$139</p>
                                    </div>
                                    <div class="btn-product">
                                        <button>ADD TO CART</button>
                                    </div>
                                </div>
                            </div>
                        <jsp:include page="footer.jsp"></jsp:include>
                        <script src="js/process.js" language="JavaScript"></script>
                        </body>
                        </html>

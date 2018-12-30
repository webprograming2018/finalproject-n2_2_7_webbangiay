<%-- 
    Document   : index.jsp
    Created on : Dec 15, 2018, 3:31:45 AM
    Author     : diepv
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/product.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link rel="stylesheet" href="css/product-detail.css">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Rokkitt" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        <%
            String maProduct = request.getParameter("maProduct");
            ProductDAO productDAO = new ProductDAO();
            Product product = productDAO.getProductById(maProduct);
            ArrayList<String> list = productDAO.getListColor(maProduct);
            ArrayList<Double> list1 = productDAO.getListSize(maProduct);
        %>
        <!--        header-->
        <jsp:include page="header.jsp"></jsp:include>

            <!--        slider-->
        <div class="container" style="margin-top:15px;">
            <div class="row">
                <aside class="col-sm-5">
                    <article class="gallery-wrap"> 
                        <div class="img-big-wrap">
                            <div> <a href="#"><img src=<%=product.getImg()%>1.jpg></a></div>
                        </div> <!-- slider-product.// -->
                        <div class="img-small-wrap">
                            <div class="item-gallery item1"> <img src=<%=product.getImg()%>1.jpg> </div>
                            <div class="item-gallery item2"> <img src=<%=product.getImg()%>2.jpg> </div>
                            <div class="item-gallery" item3> <img src=<%=product.getImg()%>3.jpg> </div>
                            <div class="item-gallery" item4> <img src=<%=product.getImg()%>4.jpg> </div>
                        </div> <!-- slider-nav.// -->
                    </article> <!-- gallery-wrap .end// -->
                </aside>
                <aside class="col-sm-7">
                    <article class="card-body p-5">
                        <h3 class="title mb-3"><%=product.getName()%></h3>

                            <p class="price-detail-wrap"> 
                                <span class="price h3 text-warning"> 
                                    <span class="currency">$</span><span class="num">1299</span>
                                </span> 
                            </p> <!-- price-detail-wrap .// -->
                                <dl class="item-property">
                                    <dt>Description</dt>
                                    <dd><p>Here goes description consectetur adipisicing elit, sed do eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                            quis nostrud exercitation ullamco </p></dd>
                                </dl>
                                <dl class="param param-feature">
                                    <dt>Brand</dt>
                                    <dd><%=product.getBrand()%></dd>
                                </dl>  <!-- item-property-hor .// -->
                                <dl class="param param-feature">
                                    <dt>Color</dt>
                                    <%for(int i=0;i<list.size();i++){%>
                                    <dd><%=list.get(i)%></dd>
                                    <%}%>
                                </dl>  <!-- item-property-hor .// -->
                                <dl class="param param-feature">
                                    <dt>Delivery</dt>
                                    <dd>Russia, USA, and Europe</dd>
                                </dl>  <!-- item-property-hor .// -->

                                <hr>
                                <div class="row">
               
                                    
                                    <div class="col-sm-5">
                                        <dl class="param param-inline">
                                            <dt>Size: </dt>
                                            <dd>
                                                <%for(int i=0;i<list1.size();i++){%>
                                                <label class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                    <span class="form-check-label"><%=list1.get(i)%></span>
                                                </label>
                                                <%}%>
                                            </dd>
                                        </dl>  <!-- item-property .// -->
                                    </div> <!-- col.// -->
                                    <div class="col-sm-7">
                                        <dl class="param param-inline">
                                            <dt>Quantity: </dt>
                                            <dd>
                                                <form action="CartSertvletDetail" method="POST">
                                                    <select class="form-control form-control-sm" style="width:70px;" name="quantity" id="quantity" style="margin-bottom:10px;">
                                                        <option> 1 </option>
                                                        <option> 2 </option>
                                                        <option> 3 </option>
                                                    </select>
                                                    <input type="hidden" id="productID" name="productID" value="<%=product.getId()%>">
                                                    <input class="btn btn-primary" type="submit" value="Add To Cart">
                                                </form>
                                                <a href="#" class="btn btn-primary" style="margin-top: 10px;"> Check out </a>
                                                <button class="like btn btn-primary" type="button" style="margin-top: 10px;"><span class="fa fa-heart"></span></button>
                                            </dd>
                                        </dl>  <!-- item-property .// -->
                                        
                                    </div> <!--
                 
                            </article> <!-- card-body.// -->
                        </aside> <!-- col.// -->
                    </div> <!-- row.// -->
                </div> <!-- card.// -->



            <!--footer-->
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>
        <script src="js/product-detail.js" language="JavaScript"></script>
    </body>
</html>

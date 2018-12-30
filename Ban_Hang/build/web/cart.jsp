<%-- 
    Document   : cart.jsp
    Created on : Dec 24, 2018, 3:29:01 AM
    Author     : diepv
--%>

<%@page import="model.Cart"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Cart</title>
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

    </head>
    <body>
        <%
        Cart cart = (Cart)session.getAttribute("cart");
            if(cart==null){
                cart = new Cart();
                session.setAttribute("cart",cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-10 col-md-offset-1">
                        <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Total</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for(Map.Entry<Long,Item> list : cart.getCartItems().entrySet()){
                            %>
                            <tr>
                                <td class="col-sm-8 col-md-6">
                                <div class="media">
                                    <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<%=list.getValue().getProduct().getImg()%>1.jpg" style="width: 72px; height: 72px;"> </a>
                                    <div class="media-body">
                                        <h4 class="media-heading"><a href="#"><%=list.getValue().getProduct().getName()%></a></h4>
                                        <h5 class="media-heading"> by <a href="#"><%=list.getValue().getProduct().getBrand()%></a></h5>
                                        <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                                    </div>
                                </div></td>
                                <td class="col-sm-1 col-md-1" style="text-align: center">
                                <input type="email" class="form-control" id="exampleInputEmail1" value=<%=list.getValue().getQuantity()%>>
                                </td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>$<%=list.getValue().getProduct().getPrice()%></strong></td>
                                <td class="col-sm-1 col-md-1 text-center"><strong>$<%=list.getValue().getProduct().getPrice()*list.getValue().getQuantity()%></strong></td>
                                <td class="col-sm-1 col-md-1">
                                <button type="button" class="btn btn-danger">
                                    <span class="glyphicon glyphicon-remove"></span> <a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getId()%>">Remove</a>
                                </button></td>
                            </tr>
                            <%}%>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h5>Total</h5></td>
                                <td class="text-right"><h5><strong>$<%=cart.totalCart()%></strong></h5></td>
                            </tr>

     
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td>
                                <button type="button" class="btn btn-default">
                                    <span class="glyphicon glyphicon-shopping-cart"></span> <a href="index.jsp">Continue Shopping</a>
                                </button></td>
                                <td>
                                <button type="button" class="btn btn-success">
                                    <a href="checkout.jsp">Checkout</a> <span class="glyphicon glyphicon-play"></span>
                                </button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>        
    </body>
</html>

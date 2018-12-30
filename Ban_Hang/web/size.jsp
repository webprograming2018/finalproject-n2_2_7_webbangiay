<%-- 
    Document   : size.jsp
    Created on : Dec 23, 2018, 4:48:27 PM
    Author     : diepv
--%>

<%@page import="model.Cart"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Size</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/product.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link rel="stylesheet" type="text/css" href="css/product-detail.css">
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
            String typesize="";
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> product = new ArrayList<>();
            if(request.getParameter("typesize")!=null){
                typesize=request.getParameter("typesize");
                HashSet<Integer> list = productDAO.getListIdProduct(typesize);
                for(Integer i : list){
                    product.add(productDAO.getProductById(String.valueOf(i)));
                }
            }
            int size = product.size();
            int a = size/4;
            int b = size%4;
            int j=0;
            Cart cart = (Cart)session.getAttribute("cart");
            if(cart==null){
                cart = new Cart();
                session.setAttribute("cart",cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container" style="margin-top: 30px;">
			<h3 class="h3" style="text-align: center;text-transform: capitalize;" ><%=typesize%></h3>
                        <%for(int i=0;i<a;i++){%>
			<div class="row">  
      
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
                                                            <img class="pic-1" src=<%=product.get(j).getImg()%>1.jpg>
							</a>
						</div>
						<div class="product-content">
                                                    <h3 class="title"><a href="#"><%=product.get(j).getName()%></a></h3>
							<div class="price">$<%=product.get(j).getPrice()%>
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=<%=product.get(j).getId()%>" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=<%=product.get(j++).getId()%>" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>   
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src=<%=product.get(j).getImg()%>1.jpg>
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#"><%=product.get(j).getName()%></a></h3>
							<div class="price">$<%=product.get(j).getPrice()%>
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=<%=product.get(j).getId()%>" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=<%=product.get(j++).getId()%>" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div> 
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src=<%=product.get(j).getImg()%>1.jpg>
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#"><%=product.get(j).getName()%></a></h3>
							<div class="price">$<%=product.get(j).getPrice()%>
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=<%=product.get(j).getId()%>" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=<%=product.get(j++).getId()%>" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div> 
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src=<%=product.get(j).getImg()%>1.jpg>
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#"><%=product.get(j).getName()%></a></h3>
							<div class="price">$<%=product.get(j).getPrice()%>
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=<%=product.get(j).getId()%>" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=<%=product.get(j++).getId()%>" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>                                                         
			</div>
                        <%}%>
                        <div class="row">
                            <%
                                for(int i=0;i<b;i++){
                            %>
                            <div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src=<%=product.get(j).getImg()%>1.jpg>
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#"><%=product.get(j).getName()%></a></h3>
							<div class="price">$<%=product.get(j).getPrice()%>
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=<%=product.get(j).getId()%>" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=<%=product.get(j++).getId()%>" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div> 
                                                        <%}%>
                        </div>
		</div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>
        <script src="product-detail.js" language="JavaScript"></script>                        
    </body>
</html>

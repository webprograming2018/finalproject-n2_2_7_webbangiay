<%-- 
    Document   : index.jsp
    Created on : Dec 15, 2018, 3:31:45 AM
    Author     : diepv
--%>

<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.ProductUser"%>
<%@page import="dao.ProductUserDAO"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Trang chủ</title>
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
<!--        header-->
        <jsp:include page="header.jsp"></jsp:include>
        
<!--        slider-->
        <div class="slider">
            <img class="mySlides" src="images/slider-1.jpg" style="width:100%;height: 700px;">
            <img class="mySlides" src="images/slider-2.jpg" style="width:100%;height: 700px;">
            <img class="mySlides" src="images/slider-3.jpg" style="width:100%;height: 700px;">
            <img class="mySlides" src="images/slider-4.jpg" style="width:100%;height: 700px;">
        </div>
        <div class="quote" style="font-family: 'Montserrat', sans-serif;text-align: center;">
            <p class="intro">It started with a simple idea: Create quality, well-designed products that I wanted myself.</p>
        </div>
        


        <!--        bestseller-->
        <div class="container" style="margin-top: 30px;">
			<h3 class="h3" style="text-align: center;" >Top Sellers</h3>
			<div class="row">
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/AIRJORDAN11RETROCONCORD2018RELEASE-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">Air Jordan 11 Retro "Concord 2018 Release"</a></h3>
							<div class="price">$320+
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=19" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=19" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/YEEZYBOOST350V2SESAME-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">YEEZY BOOST 350 V2 "SESAME"</a></h3>
							<div class="price">$300
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=20" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=20" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/YEEZY-BOOST-350-V2-ZEBRA-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">YEEZY BOOST 350 V2 "ZEBRA"</a></h3>
							<div class="price">$465
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=21" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=21" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/ADIDAS-YEEZY-BOOST-350-V2-FROZEN-YELLOW-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">ADIDAS YEEZY BOOST 350 V2 "FROZEN YELLOW"</a></h3>
							<div class="price">$320
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=22" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=22" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>	                
    <!--        New Arrivals-->
    <div class="new-arrivals" style="margin-top: 20px; margin-bottom: 120px;">
        <h1>
            <u style="margin-bottom: 10px;">New Arrivals</u>
            <p>For over a decade, Flight Club has changed the landscape of sneaker retail. Carrying every brand name on the market, Flight Club has evolved from a one-stop sneaker destination to a cultural hub for sneaker enthusiasts and novices alike. With two brick-and-mortar locations housed in New York and Los Angeles, Flight Club remains the premier source for everything sneakers. From Air Jordan to Nike to Adidas and more, we have it all.

DEC 13
</p>
        </h1>
         <div class="container" style="margin-top: 30px;">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/AIR-JORDAN-12-RETRO-WNTR-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">AIR JORDAN 12 RETRO WNTR</a></h3>
							<div class="price">$300
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=23" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=23" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/AIR-JORDAN-3-MOCHA-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">AIR JORDAN 3 "MOCHA"</a></h3>
							<div class="price">$250
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=24" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=24" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/AIR-JORDAN-12-RETRO-WNTR-TRIPLE-BLACK-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">AIR JORDAN 12 RETRO WNTR "TRIPLE BLACK"</a></h3>
							<div class="price">$275
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=25" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=25" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-3 col-lg-3">
					<div class="product-grid6">
						<div class="product-image6">
							<a href="#">
								<img class="pic-1" src="images/AIR-JORDAN-1-MID-1.jpg">
							</a>
						</div>
						<div class="product-content">
							<h3 class="title"><a href="#">AIR JORDAN 1 MID</a></h3>
							<div class="price">$245
								
							</div>
						</div>
						<ul class="social">
							<li><a href="product_detail.jsp?maProduct=26" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
							<li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
							<li><a href="CartServlet?command=plus&productID=26" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
    </div>

    

<!--footer-->
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>
    </body>
</html>

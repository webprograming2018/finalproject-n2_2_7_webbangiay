<%-- 
    Document   : bill.jsp
    Created on : Dec 25, 2018, 7:35:45 PM
    Author     : diepv
--%>

<%@page import="tools.SendMail"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Payment"%>
<%@page import="model.Bill"%>
<%@page import="model.Users"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bill</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/product.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Rokkitt" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
       
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <style>
            body{
                font-size: 16px !important;
            }
            .invoice-title h2, .invoice-title h3 {
    display: inline-block;
}

.table > tbody > tr > .no-line {
    border-top: none;
}

.table > thead > tr > .no-line {
    border-bottom: none;
}

.table > tbody > tr > .thick-line {
    border-top: 2px solid;
}
        </style>
    </head>
    <body>
        <%
            Cart cart = (Cart)session.getAttribute("cart");
            Date today = new Date();
            SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");
            String ddMMyyyToday = DATE_FORMAT.format(today);
            Users users = (Users)session.getAttribute("user");
            Bill bill = (Bill)request.getAttribute("bill");
            Payment payment = (Payment)request.getAttribute("payment");
        %>
        <jsp:include page="header.jsp"></jsp:include>
        
 <div class="container" style="margin-top:20px;">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right"></h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    					<%=bill.getFullName()%><br>
    					<%=bill.getAddress()%><br>
    					<%=bill.getCity()%><br>
    				</address>
    			</div>
    			
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br>
    					Credit Card Number: <%=bill.getNumberCard()%><br>
    					<%=users.getUserEmail()%>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					<%=ddMMyyyToday%><br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                                    <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                                    </tr>
    						</thead>
    						<tbody>
    							<%
                                                            for(Map.Entry<Long,Item> list : cart.getCartItems().entrySet()){
                                                        %>
    							<tr>
    								<td><%=list.getValue().getProduct().getName()%></td>
    								<td class="text-center">$<%=list.getValue().getProduct().getPrice()%></td>
    								<td class="text-center"><%=list.getValue().getQuantity()%></td>
    								<td class="text-right">$<%=list.getValue().getProduct().getPrice()*list.getValue().getQuantity()%></td>
    							</tr>   
                                                        <%}%>
    							<tr>
    								<td class="thick-line"></td>
    								<td class="thick-line"></td>
    								<td class="thick-line text-center"><strong>Subtotal</strong></td>
    								<td class="thick-line text-right">$<%=cart.totalCart()%></td>
    							</tr>
    							<tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Shipping</strong></td>
    								<td class="no-line text-right">$15</td>
    							</tr>
                                                        <tr>
    								<td class="no-line"></td>
    								<td class="no-line"></td>
    								<td class="no-line text-center"><strong>Total</strong></td>
    								<td class="no-line text-right">$<%=cart.totalCart()+15%></td>
    							</tr>
    			
    						</tbody>
    					</table>
                                        
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    <form action="SendEmail">
        <input type="hidden" id="total" name="total" value=<%=cart.totalCart()+15%>>       
        <input type="submit" class="btn btn-default" value="Submit" style="font-size: 20px;">
    </form>
</div>                                                 
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>        
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </body>
</html>

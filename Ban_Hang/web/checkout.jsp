<%-- 
    Document   : checkout.jsp
    Created on : Dec 24, 2018, 3:14:32 AM
    Author     : diepv
--%>

<%@page import="model.Users"%>
<%@page import="org.apache.tomcat.jni.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Checkout</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/product.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Didact+Gothic|Pacifico" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Rokkitt" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        </script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
/*  background-color: #f2f2f2;*/
  padding: 5px 20px 15px 20px;
/*  border: 1px solid lightgrey;
  border-radius: 3px;*/
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
        </style>
    </head>
    <body>
        <%
            Users users = (Users)session.getAttribute("user");
            if(users==null){
                response.sendRedirect("/Ban_Hang/login.jsp");
            }
        %>
        
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container" style="margin-top:20px;">
        <div class="row">
           <div class="col-75">
              <div class="container">
                  <form action="ChekoutServlet" method="post">
                    <div class="row">
                       <div class="col-50">
                          <h3>Billing Address</h3>
                          <label for="fname"><i class="fas fa-user"></i> Full Name</label>
                          <input type="text" id="fname" name="fullName" placeholder="John M. Doe">
                          <label for="email"><i class="fas fa-envelope"></i> Email</label>
                          <input type="text" id="email" name="email" placeholder="john@example.com">
                          <label for="adr"><i class="fas fa-address-card"></i> Address</label>
                          <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
                          <label for="city"><i class="fas fa-institution"></i> City</label>
                          <input type="text" id="city" name="city" placeholder="New York">
                       </div>
                       <div class="col-50">
                          <h3>Payment</h3>
                          <label for="fname">Accepted Cards</label>
                          <div class="icon-container">
                             <i class="fab fa-cc-visa" style="color:navy;"></i>
                             <i class="fab fa-cc-amex" style="color:blue;"></i>
                             <i class="fab fa-cc-mastercard" style="color:red;"></i>
                             <i class="fab fa-cc-discover" style="color:orange;"></i>
                          </div>
                          <label for="cname">Name on Card</label>
                          <input type="text" id="cname" name="nameCard" placeholder="John More Doe">
                          <label for="ccnum">Credit card number</label>
                          <input type="text" id="ccnum" name="numberCard" placeholder="1111-2222-3333-4444">
                          <label for="expmonth">Exp Month</label>
                          <input type="text" id="expmonth" name="expmonth" placeholder="September">
                          <div class="row">
                             <div class="col-50">
                                <label for="expyear">Exp Year</label>
                                <input type="text" id="expyear" name="expyear" placeholder="2018">
                             </div>
                             <div class="col-50">
                                <label for="cvv">CVV</label>
                                <input type="text" id="cvv" name="cvv" placeholder="352">
                             </div>
                          </div>
                       </div>
                    </div>
                    <input type="submit" value="Continue to checkout" class="btn">
                 </form>
              </div>
           </div>
        </div>     
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>
    </body>
</html>

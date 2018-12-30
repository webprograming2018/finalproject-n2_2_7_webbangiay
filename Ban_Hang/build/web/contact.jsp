<%-- 
    Document   : contact.jsp
    Created on : Dec 16, 2018, 3:51:22 PM
    Author     : diepv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contact</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
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
        <div id="colorlib-contact">
		<div class="container">
                    <div class="row" style="background: #fafafa;">
				<div class="col-sm-12">
					<h3>Contact Information</h3>
					<div class="row contact-info-wrap">
						<div class="col-md-3">
							<p><span><i class="fas fa-map-marker-alt"></i></span> 198 West 21th Street, <br> Suite 721 New York NY 10016</p>
						</div>
						<div class="col-md-3">
							<p><span><i class="fas fa-phone"></i></span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
						</div>
						<div class="col-md-3">
							<p><span><i class="far fa-paper-plane"></i></span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
						</div>
						<div class="col-md-3">
							<p><span><i class="fas fa-globe"></i></span> <a href="#">yoursite.com</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: 40px;">
				<div class="col-md-6">
					<div class="contact-wrap">
						<h3>Get In Touch</h3>
						<form action="#" class="contact-form">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="fname">First Name</label>
										<input type="text" id="fname" class="form-control" placeholder="Your firstname">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label for="lname">Last Name</label>
										<input type="text" id="lname" class="form-control" placeholder="Your lastname">
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-sm-12">
									<div class="form-group">
										<label for="email">Email</label>
										<input type="text" id="email" class="form-control" placeholder="Your email address">
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-sm-12">
									<div class="form-group">
										<label for="subject">Subject</label>
										<input type="text" id="subject" class="form-control" placeholder="Your subject of this message">
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-sm-12">
									<div class="form-group">
										<label for="message">Message</label>
										<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Say something about us"></textarea>
									</div>
								</div>
								<div class="w-100"></div>
								<div class="col-sm-12">
									<div class="form-group">
										<input type="submit" value="Send Message" class="btn btn-primary">
									</div>
								</div>
							</div>
						</form>		
					</div>
				</div>
				<div class="col-md-6">
					<div id="map" class="colorlib-map"></div>		
				</div>
			</div>
		</div>
	</div>
        
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>
    </body>
</html>

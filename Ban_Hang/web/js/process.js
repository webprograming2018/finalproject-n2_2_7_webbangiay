
		var myIndex = 0;
		carousel();

		function carousel() {
		    var i;
		    var x = document.getElementsByClassName("mySlides");
		    for (i = 0; i < x.length; i++) {
		       x[i].style.display = "none";  
		    }
		    myIndex++;
		    if (myIndex > x.length) {myIndex = 1}    
		    x[myIndex-1].style.display = "block";  
		    setTimeout(carousel, 2000); // Change image every 2 seconds
		}
	


		function myFunction() {
  			document.getElementById("panel").style.display = "none";
		}
	


		function scrollDetect(){
			var lastScroll = 0;
			var elmnt = document.getElementById("panel");
	    	var y = elmnt.scrollTop;
			window.onscroll = function() {
		      	let currentScroll = document.documentElement.scrollTop || document.body.scrollTop; // Get Current Scroll Value
				if (currentScroll > 0 && lastScroll <= currentScroll){
		      	}else{
		      		var y1 = elmnt.scrollTop;
		        	if (y1==y) {
		        		lastScroll = currentScroll;
		        		document.getElementById("panel").style.display="block";
		        	}
		      	}
	  		};
		}
		scrollDetect();


	
		$(document).ready(function(){

			if(!localStorage.getItem('cart')){
				var cart = {};
				cart.products = [];
				localStorage.setItem('cart',JSON.stringify(cart));
			};

			$("button").click(function(event){
				
 				alert('Thêm giỏ hàng thành công')

				var img1 = $(this).parents(".product").find("img").attr("src");
				var name = $(this).parents(".product").find(".name").text();
				var price = $(this).parents(".product").find(".price").text();
				var product = {};
				product.img = img1;
				product.name = name;
				product.price = price;
				product.number = 1;	
				addToCart(product);

			});
			function addToCart(product) {
				if(localStorage.getItem('cart')){
					var cart =JSON.parse(localStorage.getItem('cart'));
					var flag = true;
					for(var i =0 ; i < cart.products.length; i++){
						if(cart.products[i].img == product.img) {
							flag = false;
							cart.products[i].number++;	
							break;
						}
					}
					if(flag) {
						cart.products.push(product);
						var card = $(".card-number").text();
						var number1 = parseInt(card) + 1;
						$(".card-number").textContent =  number1.toString();
					}

					localStorage.setItem('cart',JSON.stringify(cart));
				}
			}

		});


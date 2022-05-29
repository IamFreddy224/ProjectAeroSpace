<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Side Navigation Bar</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="ressources/ImageCss/style2.css">
	<link rel="stylesheet" href="ressources/ImageCss/sty22.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(document).ready(function(){
			$(".hamburger").click(function(){
			  $(".wrapper").toggleClass("active")
			})
		});
	</script>
    
</head>
<body>

<div class="wrapper">

	<div class="top_navbar">
		<div class="logo">
			<a href="#">MENU</a>
		</div>
		<div class="top_menu">
            <div class="right_info">
			
            
            <div class="home_link">
				<a href="#">
					<span class="icon"><i class="fas fa-home"></i></span>
					<span>Accueil</span>
				</a>
			</div></div>
			<div class="right_info">
				<div class="icon_wrap">
					<div class="icon">
						
					</div>
				</div>
          
				
                <div class="wrapper">
                    <div class="navbar">

                        <div class="nav_right">
                            <ul>
                                <li class="nr_li dd_main">
                                    <img src="https://ensate.uae.ac.ma/theme/image.php/boost/core/1644590662/u/f2" class="userpicture defaultuserpic" width="35" height="35" alt="" />
                                    
                                    <div class="dd_menu">
                                        <div class="dd_left">
                                            <ul>
                                                <li><i class="icon fa fa-user fa-fw"></i></li>
                                                <li><i class="icon fa fa-comment fa-fw "></i></li>
                                                
                                            
                                                <li><i class="icon fa fa-wrench fa-fw "></i></li>
                                                <li><i class="fas fa-sign-out-alt"></i></li>
                                            </ul>
                                        </div>
                                        <div class="dd_right">
                                            <ul>
                                                <li>Profil</li>
                                                <li>M.personnels </li>
                                                
                         
                                                <li>Préférences</li>
                                                <li>Deconnexion</li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>	
                
                <script>
                    var dd_main = document.querySelector(".dd_main");
                
                    dd_main.addEventListener("click", function(){
                        this.classList.toggle("active");
                    })
                </script>
			</div>
		</div>
	</div>

	<div class="main_body">
		
		<div class="sidebar_menu">
	        <div class="inner__sidebar_menu">
	        	
	        	<ul>
		        
		          <li>
		            <a href="#">
		              <span class="icon"><i class="fas fa-address-card"></i></span>
		              <span class="list">Paiement</span>
		            </a>
		          </li>
		          <li>
		            <a href="#">
		              <span class="icon"><i class="fab fa-blogger"></i></span>
		              <span class="list">Archives</span>
		            </a>
		          </li>
		       
		        </ul>
                

		        <div class="hamburger">
			        <div class="inner_hamburger">
			            <span class="arrow">
			                <i class="fas fa-long-arrow-alt-left"></i>
			                <i class="fas fa-long-arrow-alt-right"></i>
			            </span>
			        </div>
			    </div>
                

	        </div>
            
	    </div>

	    <div class="container">
	    	<div class="item_wrap">
	    		<div class="item"></div>
	    		<div class="item"></div>
	    	</div> 
		
			  
	    	<div class="item_wrap">
	    		<div class="item"></div>
	    		<div class="item"> </div>
	    	</div>
			
	    	
	    </div>
		
	</div>

</div>


<div class="mesBoutons">
	 <a href="TrasitOp">
	 	<button type="button" class="btn btn-primary btn-lg">Accedez à l'opération <br> Importation</button>
		<button type="button" class="btn btn-secondary btn-lg">Accedez à l'opération <br> Exportation</button>
	</a>
	
</div>

</body>
</html>
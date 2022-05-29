<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCM Airlines</title>
    <link rel="stylesheet" href="ressources/ImageCss/style.css">
    <link rel="stylesheet" href="ressources/ImageCss/footer.css">
</head>
<body background-image: url">

		<%
			if (request.getAttribute("errors") != null) {
		%>
		<fieldset id="error_fieldset">
			<legend align="center">Connectez-vous avec des informations correctes</legend>
			<ul>

				<%
					if (request.getAttribute("email_error") != null) {
				%>
				<li class="error"></li>
				<%
					}
				%>

				<%
					if (request.getAttribute("password_error") != null) {
				%>
				<li class="error"></li>
				<%
					}
				%>


			</ul>

		</fieldset>
		<%
			}
		%>

    <div class="main">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo"></h2>
                <div class="logo">
                    <a href="#"> <img src="ressources/ImageCss/logo aerospace png (1).png" class="logo" width="35" height="35" alt="" /></a>
                </div>
            </div>

            <div class="menu">
                <ul>
                    <li><a href="Login">ACCUEIL</a></li>
                    <li><a href="Apropos">APROPOS</a></li>
                    <li><a href="#1">SERVICE</a></li>
                
                    <li><a href="Contact">CONTACT</a></li>
                </ul>
            </div>


        </div> 
        <div class="content">
            <h1>Bienvenue sur <br><span>AerospaceSCM</span> </h1><br>
            <p class="par"> Simplifier vos importations & exportations internationales <br> avec une procédure douanière efficace.
                </p>

                <button class="cn"><a href="Inscription">REJOIGNEZ-NOUS</a></button>
				
				<form action="Login" method="post">
					<div class="form">
                  		<input type="email" name="email" placeholder="Entrer votre email ">
                    	<input type="password" name="password" placeholder="Entrer votre mot de passe ">
                    	<button class="btnn" type="submit">Connexion</button>

                    <!-- <p class="link">Vous avez pas un compte<br>
                   	<a href="#">Inscription </a> </a></p>--><br><br><br>
                   		<p class="liw">VISITEZ NOUS </p>

                    <div class="icons">
                        <a href="#"><ion-icon name="logo-facebook"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-instagram"></ion-icon></a>
                        <a href="#"><ion-icon name="logo-twitter"></ion-icon></a>
                    </div>

                	</div>
				</form>
              
             </div>
           </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
   
    <footer id="1">

        <h1>Nos services</h1>
        <div class="services">
            
            <div class="service">
                <h3>Exportation</h3>
                <p>Nous vous accompagnons dans toute la préparation de vos documents pour l'exportation et aussi durant toute la procédure.</p>
            </div>

            <div class="service">
                <h3>Paiement en ligne</h3>
                <p>Payez en toute tranquilité vos différents frais liés aux différentes procédures sur notre application</p>
            </div>

            <div class="service">
                <h3>Importation</h3>
                <p>Nous vous accompagnons dans toute la préparation de vos documents pour l'importation et aussi durant toute la procédure</p>
            </div>

        </div>

        <p id="contact">Contact : 07 12 11 225 2 | &copy; 2022, ScmAirlines.</p>
    </footer>
</body>
</html>
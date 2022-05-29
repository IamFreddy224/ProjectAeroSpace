<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Contactez nous</title>
        <link rel="stylesheet" href="ressources/ImageCss/contact.css"/>
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
          rel="stylesheet"
        />
      </head>
      <body background-image: url">
      
      <%
			if (request.getAttribute("errors") != null) {
	  %>
		<fieldset id="error_fieldset">
			<legend align="center">Veuillez entrer des données correctes</legend>
			<ul>

				<%
					if (request.getAttribute("name_error") != null) {
				%>
				<li class="error">Vérifier vos données</li>
				<%
					}
				%>

				<%
					if (request.getAttribute("email_error") != null) {
				
					}
				%>


			</ul>

		</fieldset>
		<%
			}
		%>
      
        <form action="Contact" method="post">
          <h1>Contactez-nous</h1>
          <div class="separation"></div>
          <div class="corps-formulaire">
            <div class="gauche">
              <div class="groupe">
                <label>Votre Nom</label>
                <input type="text" name="contact_name" autocomplete="off" />
                <i class="fas fa-user"></i>
              </div>
              <div class="groupe">
                <label>Votre adresse e-mail</label>
                <input type="text" name="email" autocomplete="off" />
                <i class="fas fa-envelope"></i>
              </div>
              <div class="groupe">
                <label>Votre téléphone</label>
                <input type="text" name="your_phone" autocomplete="off" />
                <i class="fas fa-mobile"></i>
              </div>
            </div>
    
            <div class="droite">
              <div class="groupe">
                <label>Message</label>
                <textarea name="votre_message" placeholder="Saisissez ici..."></textarea>
              </div>
            </div>
          </div>
    
          <div class="pied-formulaire" align="center">
            <button type="submit">Envoyer le message</button>
          </div>
        </form>
      </body>
    </html>
    
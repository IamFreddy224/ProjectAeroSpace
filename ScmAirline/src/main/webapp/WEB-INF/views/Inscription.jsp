<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <link rel="stylesheet" href="ressources/ImageCss/inscript.css">
    <title>Page d'inscription</title>
</head>
<body>

	<%
			if (request.getAttribute("errors") != null) {
		%>
		<fieldset id="error_fieldset">
			<legend align="center">Veuillez entrer des données correctes</legend>
			<ul>

				<%
					if (request.getAttribute("firstname_error") != null) {
				%>
				<li class="error"></li>
				<%
					}
				%>

				<%
					if (request.getAttribute("lastname_error") != null) {
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

    
    <div class="regform"><h1>Inscrivez-vous</h1></div>
    <div class="main">
        <form action="Inscription" method="post">
        <div id="name">
            <h2 class="name">Name</h2>
            <input class="firstname" type="text" name="first_name"><br>
            <label class="firstlabel">FirstName</label>
            <input type="text" class="lastname" name="last_name">
            <label class="lastlabel">LastName</label>
        </div>

        <h2 class="name">Company</h2>
        <input type="text" class="company" name="company">

        <h2 class="name">Email</h2>
        <input type="text" class="email" name="email">

        <h2 class="name">Phone</h2>
        
        <input type="text" class="number" name="phone">
        

        <div class="monButton">
            <button type="submit">Incription</button>
        </div>

        </form>
    </div>
</body>
</html>
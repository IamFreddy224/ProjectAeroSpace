package com.octest.ScmAirlines;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Login
 */

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DBconnection.connect();

	}

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setAttribute("errors",false);
		
		String Email = request.getParameter("email");
		System.out.println("Email:" + Email);
		
		if(Email.length()==0) {
			System.out.println("empty email errors");
			
			request.setAttribute("errors", true);
			request.setAttribute("email_error", true);
		}
		
		String Password = request.getParameter("password");
		System.out.println("Password:" + Password);
		
		if(Password.length()==0) {
			System.out.println("empty email errors");
			
			request.setAttribute("errors", true);
			request.setAttribute("password_error", true);
		}
		
		if(Email.equals("fosterconde1999@gmail.com") && Password.equals("freddy")) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/TransitaireInterface.jsp").forward(request, response);
		}
		else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginPage.jsp").forward(request, response);
		}
		
		if ((Boolean) request.getAttribute("errors")) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginPage.jsp").forward(request, response);
		}
	}

}

package com.octest.ScmAirlines;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Inscription
 */
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DBconnection.connect();

	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Inscription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/Inscription.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setAttribute("errors", false);
		
		String FirstName = request.getParameter("first_name");
		System.out.println("Name: "+ FirstName);
		
		if (FirstName.length() == 0) {
			System.out.println("empty first name error");

			request.setAttribute("errors", true);
			request.setAttribute("firstname_error", true);

		}
		
		String LastName = request.getParameter("last_name");
		System.out.println("LastName:" +LastName);
		
		if (LastName.length() == 0) {
			System.out.println("empty last name error");

			request.setAttribute("errors", true);
			request.setAttribute("lastname_error", true);

		}

		
		String Company = request.getParameter("company");
		System.out.println("Company: " + Company);
		
		if(Company.length()==0) {
			System.out.println("empty company error");
			
			request.setAttribute("errors", true);
			request.setAttribute("company_error", true);
		}
		
		String Email = request.getParameter("email");
		System.out.println("Email:" + Email);
		
		if(Email.length()==0) {
			System.out.println("empty email error");
			
			request.setAttribute("errors", true);
			request.setAttribute("company_error", true);
		}
		
		String Phone = request.getParameter("phone");
		System.out.println("Phone: "+ Phone);
		
		if(Phone.length()==0) {
			System.out.println("empty phone error");
			
			request.setAttribute("errors", true);
			request.setAttribute("phone_error", true);
		}
		
			
		if ((Boolean) request.getAttribute("errors")) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/Inscription.jsp").forward(request, response);
		}
	}

}

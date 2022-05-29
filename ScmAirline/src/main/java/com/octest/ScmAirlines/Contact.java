package com.octest.ScmAirlines;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Contact
 */
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		this.getServletContext().getRequestDispatcher("/WEB-INF/views/ContactPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setAttribute("errors", false);
		
		String Name = request.getParameter("contact_name");
		System.out.println("your_name: "+ Name);
		
		if (Name.length() == 0) {
			System.out.println("empty  name error");

			request.setAttribute("errors", true);
			request.setAttribute("name_error", true);

		}
		
		String Mail = request.getParameter("email");
		System.out.println("mail: "+ Mail);
		
		if (Mail.length() == 0) {
			System.out.println("empty  mail error");

			request.setAttribute("errors", true);
			request.setAttribute("email_error", true);

		}
		
		String Phone = request.getParameter("your_phone");
		System.out.println("phone: "+ Phone);
		
		if (Phone.length() == 0) {
			System.out.println("empty phone error");

			request.setAttribute("errors", true);
			request.setAttribute("phone_error", true);

		}
		
		String Message = request.getParameter("votre_message");
		System.out.println("Message: "+ Message);
		
		if ((Boolean) request.getAttribute("errors")) {
			this.getServletContext().getRequestDispatcher("/WEB-INF/views/ContactPage.jsp").forward(request, response);
		}
		
	}

}

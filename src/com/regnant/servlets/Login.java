package com.regnant.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.regnant.db.Retrivedata_from_db;
import com.regnant.db.Usersdb;
import com.regnant.db.userdata_objects;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		request.setAttribute("email", email);

		Usersdb db = new Usersdb();
		boolean output = false;
		boolean admin_status = false;

		try {
			output = db.signin(email, password);
			admin_status = db.signadmin(email);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (admin_status && output) {

			try {
				List<userdata_objects> li = Retrivedata_from_db.retrive_user_data();

				request.setAttribute("li", li);

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
			JsonObject obj = new JsonObject();
			obj.addProperty("status", "true");
			obj.addProperty("email", email);
			
			response.getWriter().write(obj.toString());

			
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/view/admin_page.jsp");
			rd.forward(request, response);

		}

		else if (output) {

			RequestDispatcher rd = request.getRequestDispatcher("/view/Login.html");
			rd.forward(request, response);

		}

		else {
			RequestDispatcher rd = request.getRequestDispatcher("/view/wrongpassword.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}

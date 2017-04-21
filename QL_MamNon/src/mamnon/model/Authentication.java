package mamnon.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mamnon.database.DatabaseConnection;

/**
 * Servlet implementation class Authentication
 */
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentication() {
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
		doExcute(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doExcute(request, response);
	}
	
	protected void doExcute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = (String) request.getParameter("ID");
		String password = (String) request.getParameter("password");

		if (checkAuthentication(id, password)) {

			if (id.startsWith("HS")) {
				
				HttpSession session = request.getSession();
				session.setAttribute("ID", id);
				session.setAttribute("power", "student");
				session.setMaxInactiveInterval(30);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index");
				dispatcher.forward(request, response);

			} else if (id.startsWith("GV")) {

				HttpSession session = request.getSession();
				session.setAttribute("ID", id);

				session.setAttribute("power", "teacher");
				session.setMaxInactiveInterval(30);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index");
				dispatcher.forward(request, response);
			}
		} else {

			request.getRequestDispatcher("/index").forward(request, response);;

		}

	}

	public static boolean checkAuthentication(String username, String password) {

		String sql = "select Password from taikhoan where ID = '" + username + "'";

		try {
			Connection conn = DatabaseConnection.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next() && rs.getObject("Password").toString().trim().equals(password)) {
				rs.close();
				stmt.close();
				conn.close();
				return true;
			} else {
				rs.close();
				stmt.close();
				conn.close();
				return false;
			}
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}

}

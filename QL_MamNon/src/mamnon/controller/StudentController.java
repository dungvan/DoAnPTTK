package mamnon.controller;

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
import mamnon.managerment_class.StudentProfile;

/**
 * Servlet implementation class StudentController
 */
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			HttpSession session = request.getSession();
			
			Connection conn = DatabaseConnection.getConnection();
			
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from hocsinh where IDHS='" + session.getAttribute("ID") + "'");

			while (rs.next()) {
				StudentProfile student = new StudentProfile();
				student.setId(rs.getString(1));
				student.setName(rs.getString(2));
				student.setBirthday(rs.getString(3));
				student.setGender(Byte.parseByte(rs.getString(4)));
				student.setParent(rs.getString(5));
				student.setAddress(rs.getString(6));
				student.setPhone(rs.getString(7));

				rs.close();
				stmt.close();
				DatabaseConnection.closeQuietly();
				
				session.setAttribute("user", student);

				RequestDispatcher dispatcher = request.getRequestDispatcher("view/student/editstudent.jsp");
				dispatcher.forward(request, response);
				return;
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

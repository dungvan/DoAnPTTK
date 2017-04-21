package mamnon.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mamnon.database.DatabaseConnection;
import mamnon.managerment_class.StudentProfile;
import mamnon.managerment_class.TeacherProfile;

/**
 * Servlet implementation class TeacherController
 */
@WebServlet("/TeacherController")
public class TeacherController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TeacherController() {
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
			DatabaseConnection.getConnection();
			ResultSet rs = DatabaseConnection
					.getResultSet("select * from giaovien where IDHS='" + session.getAttribute("ID") + "'");

			while (rs.next()) {
				TeacherProfile teacher = new TeacherProfile();
				teacher.setId(rs.getString(1));
				teacher.setName(rs.getString(2));
				teacher.setBirthday(rs.getString(3));
				teacher.setGender(Byte.parseByte(rs.getString(4)));
				teacher.setParent(rs.getString(5));
				teacher.setAddress(rs.getString(6));
				teacher.setPhone(rs.getString(7));

				DatabaseConnection.closeQuietly();
				session.setAttribute("user", teacher);

				RequestDispatcher dispatcher = request.getRequestDispatcher("view/student/student.jsp");
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

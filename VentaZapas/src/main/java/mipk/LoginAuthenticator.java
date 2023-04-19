package mipk;

import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginAuthenticator
 */
public class LoginAuthenticator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginAuthenticator() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("./index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		beanDB db = new beanDB();
		HttpSession session = request.getSession();
		String usuario = request.getParameter("usuario");
		String pass = request.getParameter("pass");
		if (usuario == null)
			usuario = "";
		if (pass == null)
			pass = "";
		boolean ok = true;

		// para conectar con la bbdd
		try {
			db.conectarBD();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("index.jsp?var=Error al conectar con la base de datos.");
			return;
		}

		// para meter los usuarios
		String query = "select * from usuarios where nombre_usuario='" + usuario + "' and password='" + pass + "'";
		try {
		db.resConsultaSelectA3(query);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		response.sendRedirect("index.jsp?var=Error al realizar la consulta SQL.");
		db.desconectarBD();
		return;
		}
		db.desconectarBD();
		if (ok)
			response.sendRedirect("principal.jsp");
		else
			response.sendRedirect("index.jsp?var=Usuario y/o contraseña incorrectas.");
	}
}


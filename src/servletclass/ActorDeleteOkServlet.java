package servletclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class ActorDeleteOkServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PDB db = new PDB();
		String id = request.getParameter("id").toString();
	    db.update("update actor set useful=-1 where id=?",new Object[]{id});
		request.getRequestDispatcher("ActorServlet").forward(request, response);
	}
}

package servletclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.PDB;

public class ActorModifyOkServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		PDB db = new PDB();
		String id = request.getParameter("id").toString();
	    String actorname = request.getParameter("actorname").toString();
	    String useful = request.getParameter("useful").toString();
		db.update("update actor set actorname=?,useful=? where id=?",new Object[]{actorname,useful,id});
		request.getRequestDispatcher("ActorServlet").forward(request, response);
	}
}

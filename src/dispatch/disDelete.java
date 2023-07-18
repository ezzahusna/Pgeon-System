package dispatch;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class disDelete
 */
@WebServlet("/disDelete")
public class disDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public disDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int dis_id = Integer.parseInt(request.getParameter("dis_id"));
		dispatchModel par = new dispatchModel();
		try {
			par.deleteDispatchById(dis_id);
			} 
		catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			}
		response.sendRedirect("parView.jsp");
	}

}

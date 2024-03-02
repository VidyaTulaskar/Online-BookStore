package test;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view1")
public class ViewAllBookServlet extends HttpServlet 
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException,IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired..<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
			
		}else {
			ArrayList<BookBean> al=new ViewAllBooksDAO().retrieve();
			hs.setAttribute("alist", al);	//Adding the ArrayList object into the HttpSession.
			req.getRequestDispatcher("ViewAllBooks.jsp").forward(req, res);
		}
	}
}

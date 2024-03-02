package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/customerLog")
public class CustomerLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		CustomerBean cb=new CustomerLoginDAO().login(req.getParameter("uname"), req.getParameter("pword"));
		if(cb==null)
		{
			req.setAttribute("msg", "Invalid Login Process...<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
			HttpSession hs=req.getSession();
			hs.setAttribute("cbean", cb);
			req.getRequestDispatcher("CustomerLogin.jsp").forward(req, res);
		}
	}
}

package test;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
@SuppressWarnings("serial")
@WebServlet("/adminLog")
public class AdminLoginServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		AdminBean ab=new AdminLoginDAO().login(req.getParameter("uname"),req.getParameter("pword"));
		if(ab==null)
		{
			req.setAttribute("msg", "Invalid Login Process....<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
			HttpSession hs=req.getSession();//Creating new Session
			hs.setAttribute("abean", ab);
			req.getRequestDispatcher("AdminLogin.jsp").forward(req,res);
		}
	}
}

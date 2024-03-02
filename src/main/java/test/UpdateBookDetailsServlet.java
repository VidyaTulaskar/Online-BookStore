package test;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
@WebServlet("/update")
public class UpdateBookDetailsServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException
	{
		HttpSession hs=req.getSession(false);
		if(hs==null)
		{
			req.setAttribute("msg", "Session Expired...<br>");
			req.getRequestDispatcher("Home.jsp").forward(req, res);
		}
		else
		{
			String bCode=req.getParameter("bcode");
			ArrayList<BookBean> al=(ArrayList<BookBean>)hs.getAttribute("alist");
			BookBean bb=null;
			Iterator<BookBean> it=al.iterator();
			while(it.hasNext())
			{
				bb=it.next();
				if(bCode.equals(bb.getCode()))
				{
					break;
				}
			}//end of while loop
			bb.setPrice(Float.parseFloat(req.getParameter("bprice")));
			bb.setQty(Integer.parseInt(req.getParameter("bqty")));
			int k=new UpdateBookDetailsDAO().update(bb);
			if(k>0)
			{
				req.setAttribute("msg", "Book details Updated Successfully...<br>");
				req.getRequestDispatcher("UpdateBookDetails.jsp").forward(req, res);
			}
		}
	}
}

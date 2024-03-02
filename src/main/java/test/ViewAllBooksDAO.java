package test;
import java.sql.*;
import java.util.*;
public class ViewAllBooksDAO
{
	public ArrayList<BookBean> al=new ArrayList<BookBean>();
	public ArrayList<BookBean> retrieve()
	{
		try
		{
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select * from BookDetails57");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				BookBean bb=new BookBean();
				bb.setCode(rs.getString(1));
				bb.setName(rs.getString(2));
				bb.setAuthor(rs.getString(3));
				bb.setPrice(rs.getFloat(4));
				bb.setQty(rs.getInt(5));
				al.add(bb);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
}

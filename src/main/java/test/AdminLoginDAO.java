package test;
import java.sql.*;
public class AdminLoginDAO
{
	public AdminBean ab=null;
	public AdminBean login(String uName,String pWord)
	{
		try
		{
			Connection con1=DBConnection.getCon();
			PreparedStatement ps=con1.prepareStatement("select * from Admin57 where uname=? and pword=?");
			ps.setString(1, uName);
			ps.setString(2, pWord);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				ab=new AdminBean();
				ab.setuName(rs.getString(1));
				ab.setpWord(rs.getString(2));
				ab.setfName(rs.getString(3));
				ab.setlName(rs.getString(4));
				ab.setAddr(rs.getString(5));
				ab.setmId(rs.getString(6));
				ab.setPhNo(rs.getLong(7));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
	}
}

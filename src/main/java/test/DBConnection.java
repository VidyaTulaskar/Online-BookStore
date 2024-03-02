package test;
import java.sql.*;
import static test.DBInfo.*;

public class DBConnection 
{
	private static Connection con1=null;
	private DBConnection() {}
	static
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con1=DriverManager.getConnection(dbUrl,uName,pWord);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static Connection getCon()
	{
		return con1;
	}
}

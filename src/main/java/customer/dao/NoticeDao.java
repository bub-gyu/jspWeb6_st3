package customer.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

import customer.vo.Notice;

public class NoticeDao {

	Connection conn =null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	Statement stmt=null;
	
	String sql="";
	
	
	
	
	public void write(Notice n) throws Exception {
		

		String driver ="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pass="123456";
	
		Class.forName(driver);

		conn = DriverManager.getConnection(url, user, pass);
		
		sql="insert into notices values ((select max(to_number(seq)+1) from notices),?,'cj',?,sysdate,0)";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());	
		
		//실행
		pstmt.executeUpdate(); //insert 실행

		System.out.println("입력 성공");
		
		if(pstmt !=null) try{pstmt.close();}catch(Exception e2){}
		if(conn !=null) try{conn.close();}catch(Exception e2){}	
		
	}
	
	
}

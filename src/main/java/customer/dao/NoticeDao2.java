package customer.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

import customer.vo.Notice;

public class NoticeDao2 {

	Connection conn =null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	Statement stmt=null;
	String sql="";
	
	
	public Notice  getNotice(String seq) throws Exception {
		
		String driver ="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pass="123456";
		
		Class.forName(driver); 
		conn = DriverManager.getConnection(url, user, pass);
		
		
		

		
		sql="select seq,title,writer,content,regdate,hit from notices where seq='"+seq+"'";
		//stmt=conn.prepareStatement(sql);
		stmt=conn.createStatement();
		System.out.println(sql);
		rs=stmt.executeQuery(sql);
		rs.next();
		Notice n = new Notice();
		n.setSeq(rs.getString("seq")) ;
		  	
		
		n.setHit(rs.getString("hit"))  ; 
		n.setWriter(rs.getString("writer"))  ;
		n.setRegedat(rs.getDate("regdate"))  ;
		n.setTitle( rs.getString("title")) ;	
		n.setContent(rs.getString("content")) ;
	
		return n;
		
	}
	
	
	
	
	public int delete(String seq) throws Exception {

		String driver ="oracle.jdbc.driver.OracleDriver";
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		
		String user="hr";
		String pass="123456";
		
		Class.forName(driver); 
		conn = DriverManager.getConnection(url, user, pass);
		
	
		sql="delete from notices where  seq=?";

		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, seq);			
	
		//실행
		int del=pstmt.executeUpdate(); //insert 실행
	
		System.out.println("삭제 성공");
		
		return del;
	}
	

	
	public void update(Notice n) throws Exception {
		
		String driver ="oracle.jdbc.driver.OracleDriver";
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		
		String user="hr";
		String pass="123456";
		
		Class.forName(driver); 
		conn = DriverManager.getConnection(url, user, pass);
		
	
		sql="update notices set title=?"
				+","
				+" content=? "
				+" where seq=?";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());	
		pstmt.setString(3, n.getSeq());
		
		//실행
		pstmt.executeUpdate(); //insert 실행 */
		
		System.out.println("입력 성공");
		
		if(pstmt !=null) try{pstmt.close();}catch(Exception e2){}
		if(conn !=null) try{conn.close();}catch(Exception e2){}
		
		
	}
	
	
	
	public void update2(String seq,String title,String content) throws Exception {
		
		String driver ="oracle.jdbc.driver.OracleDriver";
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		
		String user="hr";
		String pass="123456";
		
		Class.forName(driver); 
		conn = DriverManager.getConnection(url, user, pass);
		
	
		
		
		sql="update notices set title=?"
				+","
				+" content=? "
				+" where seq=?";
		pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, title);
		pstmt.setString(2, content);	
		pstmt.setString(3, seq);
		
		//실행
		pstmt.executeUpdate(); //insert 실행 */
		
		System.out.println("입력 성공");
		
		if(pstmt !=null) try{pstmt.close();}catch(Exception e2){}
		if(conn !=null) try{conn.close();}catch(Exception e2){}
		
		
	}
	
	
}


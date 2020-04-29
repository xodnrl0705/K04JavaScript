package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	//멤버변수(클래스 전체 멤버메소드에서 접근 가능)
	Connection con;
	PreparedStatement psmt;
	ResultSet rs;
	
	//기본생성자
	public MemberDAO() {	
		System.out.println("MemberDAO생성자 호출");
	}
	
	public MemberDAO(String driver, String url) {
		try {
			Class.forName(driver);
			String id = "kosmo";
			String pw = "1234";
			con = DriverManager.getConnection(url,id,pw);
			System.out.println("DB연결성공");
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean isMember(String id, String pass) {
		
		String sql = "SELECT COUNT(*) FROM member "
				+ " WHERE id=? AND pass=?";
		int isMember = 0;
		boolean isFlag = false;
		
		try {
			//prepare를 객체로 쿼리문 전송
			psmt = con.prepareStatement(sql);
			//인파라미터 설정
			psmt.setString(1, id);
			psmt.setString(2, pass);
			//쿼리실행
			rs=psmt.executeQuery();
			//실행결과를 가져오기 위해 next() 호출
			rs.next();
			
			isMember = rs.getInt(1);
			System.out.println("affected:" + isMember);
			if(isMember==0)
				isFlag = false;
			else
				isFlag = true;
		}
		catch (Exception e) {
			isFlag = false;
			e.printStackTrace();
		}
		return isFlag;
		
	}
}

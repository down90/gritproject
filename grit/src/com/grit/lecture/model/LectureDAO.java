package com.grit.lecture.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.grit.db.ConnectionPoolMgr2;

public class LectureDAO {
private ConnectionPoolMgr2 pool;
	
	public LectureDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	public int insertClass(LectureVO vo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=pool.getConnection();
			
			String sql="insert into class(c_no,c_name,c_teacher_intro,c_summary,c_detail,c_date,c_location,c_maxperson,c_pay,c_money,c_account,c_bank,mem_userid) "
					+ " values(class_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?) ";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getcName());
			ps.setString(2, vo.getcTeacherIntro());
			ps.setString(3, vo.getcSummary());
			ps.setString(4, vo.getcDetail());
			ps.setTimestamp(5, vo.getcDate());
			ps.setString(6, vo.getcLocation());
			ps.setInt(7, vo.getcMaxPerson());
			ps.setString(8, vo.getcPay());
			ps.setInt(9, vo.getcMoney());
			ps.setString(10, vo.getcAccount());
			ps.setString(11, vo.getcBank());
			ps.setString(12, vo.getMemUserid());
			
			int cnt=ps.executeUpdate();
			System.out.println("강의 등록 결과, cnt="+cnt);
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
		}
		
	}
}

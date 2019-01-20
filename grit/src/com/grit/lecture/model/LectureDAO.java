package com.grit.lecture.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
			
			String sql="insert into class(c_no,c_name,c_category,c_teacher_intro,c_summary,c_detail,c_location,c_maxperson,c_pay,c_money,c_account,c_bank,mem_userid) "
					+ " values(class_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?) ";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, vo.getcName());
			ps.setString(2, vo.getcCategory());
			ps.setString(3, vo.getcTeacherIntro());
			ps.setString(4, vo.getcSummary());
			ps.setString(5, vo.getcDetail());
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
	
	public LectureVO selectClassByNo(int no) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		LectureVO vo=new LectureVO();
		try {
			con=pool.getConnection();
			
			String sql="select * from class where c_no=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, no);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				vo.setcNo(rs.getInt("c_no"));
				vo.setcCategory(rs.getString("c_category"));
				vo.setcName(rs.getString("c_name"));
				vo.setcSummary(rs.getString("c_summary"));
				vo.setcDetail(rs.getString("c_detail"));
				vo.setcLocation(rs.getString("c_location"));
				vo.setcMaxPerson(rs.getInt("c_maxperson"));
				vo.setcPay(rs.getString("c_pay"));
				vo.setcMoney(rs.getInt("c_money"));
				vo.setcAccount(rs.getString("c_account"));
				vo.setcBank(rs.getString("c_bank"));
				vo.setcRegdate(rs.getTimestamp("c_regdate"));
				vo.setMemUserid(rs.getString("mem_userid"));
			}
			return vo;
			
		}finally {
			pool.dbClose(rs, ps, con);
		}
		
		
	}
	
	
}





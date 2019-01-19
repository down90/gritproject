package com.grit.lecture.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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

	public LectureVO selectReadCnt() throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		try {
			con=pool.getConnection();

			String sql="select * " + 
					" from(" + 
					"    select * from class" + 
					"    order by c_readcnt desc" + 
					") where rownum<=1";
			ps=con.prepareStatement(sql);

			rs=ps.executeQuery();
			LectureVO cntVo=new LectureVO();
			if(rs.next()) {
				int cNo=rs.getInt("c_no");
				String cCategory=rs.getString("c_category");
				String cName=rs.getString("c_name");
				String cTeacherIntro=rs.getString("c_teacher_intro");
				String cStatus=rs.getString("c_status");
				String cSummary=rs.getString("c_summary");
				String cDetail=rs.getString("c_detail");
				Timestamp cDate=rs.getTimestamp("c_date");
				String cLocation=rs.getString("c_location");
				int cMaxPerson=rs.getInt("c_maxPerson");
				int cPerson=rs.getInt("c_person");
				String cPay=rs.getString("c_pay");
				int cMoney=rs.getInt("c_money");
				String cAccount=rs.getString("c_account");
				int imgNo=rs.getInt("img_no");
				String cBank=rs.getString("c_bank");
				int cReadCount=rs.getInt("c_readcnt");
				Timestamp cRegdate=rs.getTimestamp("c_regdate");
				String cDelflag=rs.getString("c_delflag");
				String cRecommand=rs.getString("c_recommand");
				String memUserid=rs.getString("mem_userid");

				cntVo=new LectureVO(cNo, cCategory, cName, cTeacherIntro, cStatus, cSummary, cDetail, cDate, cLocation, cMaxPerson, cPerson, cPay, cMoney, cAccount, imgNo, cBank, cReadCount, cRegdate, cDelflag, cRecommand, memUserid);
				System.out.println("vo값"+cntVo);
			}
			return cntVo;

		} finally {
			pool.dbClose(rs, ps, con);
		}
	}//

	public List<LectureVO> selectRecommand() throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		ArrayList<LectureVO> alist=new ArrayList<>();
		try {
			con=pool.getConnection();

			String sql="select *" + 
					" from(  " + 
					"    select * from class" + 
					"    where c_recommand='Y'" + 
					"    order by c_regdate desc" + 
					") where rownum<=3";
			ps=con.prepareStatement(sql);

			rs=ps.executeQuery();

			while(rs.next()) {
				int cNo=rs.getInt("cNo");
				String cCategory=rs.getString("cCategory");
				String cName=rs.getString("cName");
				String cTeacherIntro=rs.getString("cTeacherIntro");
				String cStatus=rs.getString("cStatus");
				String cSummary=rs.getString("cSummary");
				String cDetail=rs.getString("cDetail");
				Timestamp cDate=rs.getTimestamp("cDate");
				String cLocation=rs.getString("cLocation");
				int cMaxPerson=rs.getInt("cMaxPerson");
				int cPerson=rs.getInt("cPerson");
				String cPay=rs.getString("cPay");
				int cMoney=rs.getInt("cMoney");
				String cAccount=rs.getString("cAccount");
				int imgNo=rs.getInt("imgNo");
				String cBank=rs.getString("cBank");
				int cReadCount=rs.getInt("cReadCount");
				Timestamp cRegdate=rs.getTimestamp("cRegdate");
				String cDelflag=rs.getString("cDelflag");
				String cRecommand=rs.getString("cRecommand");
				String memUserid=rs.getString("memUserid");

				LectureVO vo=
						new LectureVO(cNo, cCategory, cName, cTeacherIntro, cStatus, cSummary, cDetail, cDate, cLocation, cMaxPerson, cPerson, cPay, cMoney, cAccount, imgNo, cBank, cReadCount, cRegdate, cDelflag, cRecommand, memUserid);
				alist.add(vo);
			}

			return alist;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}//


	public List<LectureVO> selectRegdate() throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;

		ArrayList<LectureVO> alist=new ArrayList<>();
		try {
			con=pool.getConnection();

			String sql="select *" + 
					" from(" + 
					"    select * from class" + 
					"    order by c_regdate desc" + 
					") where rownum<=6";
			ps=con.prepareStatement(sql);

			rs=ps.executeQuery();

			while(rs.next()) {
				int cNo=rs.getInt("cNo");
				String cCategory=rs.getString("cCategory");
				String cName=rs.getString("cName");
				String cTeacherIntro=rs.getString("cTeacherIntro");
				String cStatus=rs.getString("cStatus");
				String cSummary=rs.getString("cSummary");
				String cDetail=rs.getString("cDetail");
				Timestamp cDate=rs.getTimestamp("cDate");
				String cLocation=rs.getString("cLocation");
				int cMaxPerson=rs.getInt("cMaxPerson");
				int cPerson=rs.getInt("cPerson");
				String cPay=rs.getString("cPay");
				int cMoney=rs.getInt("cMoney");
				String cAccount=rs.getString("cAccount");
				int imgNo=rs.getInt("imgNo");
				String cBank=rs.getString("cBank");
				int cReadCount=rs.getInt("cReadCount");
				Timestamp cRegdate=rs.getTimestamp("cRegdate");
				String cDelflag=rs.getString("cDelflag");
				String cRecommand=rs.getString("cRecommand");
				String memUserid=rs.getString("memUserid");

				LectureVO vo=
						new LectureVO(cNo, cCategory, cName, cTeacherIntro, cStatus, cSummary, cDetail, cDate, cLocation, cMaxPerson, cPerson, cPay, cMoney, cAccount, imgNo, cBank, cReadCount, cRegdate, cDelflag, cRecommand, memUserid);
				alist.add(vo);
			}

			return alist;
		} finally {
			pool.dbClose(rs, ps, con);
		}
	}//
}

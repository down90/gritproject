package com.grit.company.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.grit.db.ConnectionPoolMgr2;

public class CMemberDAO {
	private ConnectionPoolMgr2 pool;
	
	public CMemberDAO() {
		pool=new ConnectionPoolMgr2();
	}
	
	//===회원가입(insert)메서드
	public int insertCMember(CMemberVO Cvo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=pool.getConnection();
			
			String sql="";
			ps=con.prepareStatement(sql);
			
			
			
			
			int cnt=ps.executeUpdate();
			
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
		}
	}
	//===회원정보 수정(Edit)메서드
	public int editCMember(CMemberVO Cvo) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=pool.getConnection();
			
			String sql="";
			ps=con.prepareStatement(sql);
			
			int cnt=ps.executeUpdate();
			
			return cnt;
			
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	//===회원 리스트 조회(select)메서드
	public List<CMemberVO> cMemberList() throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<CMemberVO> list=new ArrayList<>();
		try {
			con=pool.getConnection();
			
			String sql="";
			ps=con.prepareStatement(sql);
			
			rs=ps.executeQuery();
			
			while(rs.next()) {
				CMemberVO Cvo=new CMemberVO();

				list.add(Cvo);
			}
			
			return list;
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
	
	/*
	public CMemberVO selectCMember() {
		
	}
	*/
	//로그인 처리 메서드
	public int duplicateCUserid(String compUserid) throws SQLException {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		boolean bool=false;
		int result=0;
		try {
			con=pool.getConnection();
			
			String sql="select count(*) from comp_member where comp_userid=?";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, compUserid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				int cnt=rs.getInt(1); //컬럼명이 없으면 첫번째 컬럼이란 의미에서 1을 써준다
				if(cnt>0) {
					//해당 아이디가 이미 존재하는 경우
					result=CMemberService.NOT_AVAILABLE_USERID; //사용불가
				}else{
					//존재하지 않는 경우
					result=CMemberService.AVAILABLE_USERID; //사용가능
				}
			}
			System.out.println("아이디 중복 확인 결과 result="+result+", 입력값 userid="+compUserid);
			return result;
		}finally {
			pool.dbClose(ps, con);
		}
	}
	
	public int procLogin(String compUserid, String compPassword) throws SQLException {
		//로그인 처리
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int result=0;
		
		try {
			con=pool.getConnection();
			
			String sql="select comp_password from comp_member where comp_userid=?";
			ps=con.prepareStatement(sql);
			
			ps.setString(1, compUserid);
			
			rs=ps.executeQuery();
			if(rs.next()) {
				String dbPwd=rs.getString(1);
				if(dbPwd.equals(compPassword)) {
					result=CMemberService.LOGIN_OK; //로그인 성공
				}else{
					result=CMemberService.DISAGREE_PWD; //비밀번호 불일치
				}
			}else {
				result=CMemberService.NONE_ID; //해당하는 아이디도 없으면
			}
			
			System.out.println("로그인 처리 결과 result="
						+result+", 입력값 userid="+compUserid+", pwd="+compPassword);
			return result;
			
		}finally {
			pool.dbClose(rs, ps, con);
		}
	}
}

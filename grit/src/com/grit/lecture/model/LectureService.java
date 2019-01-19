package com.grit.lecture.model;

import java.sql.SQLException;
import java.util.List;

public class LectureService {
	private LectureDAO lectureDao;

	public LectureService() {
		lectureDao= new LectureDAO();
	}
	
	public int insertClass(LectureVO vo) throws SQLException {
		return lectureDao.insertClass(vo);
	}
	
	public LectureVO selectReadCnt() throws SQLException{
		return lectureDao.selectReadCnt();
	}
	
	public List<LectureVO> selectRecommand() throws SQLException{
		return lectureDao.selectRecommand();
	}
	
	public List<LectureVO> selectRegdate() throws SQLException{
		return lectureDao.selectRegdate();
	}
}

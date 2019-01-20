package com.grit.lecture.model;

import java.sql.SQLException;

public class LectureService {
	private LectureDAO lectureDao;

	public LectureService() {
		lectureDao= new LectureDAO();
	}
	
	public int insertClass(LectureVO vo) throws SQLException {
		return lectureDao.insertClass(vo);
	}
	
	public LectureVO selectClassByNo(int no) throws SQLException {
		return lectureDao.selectClassByNo(no);
	}
}

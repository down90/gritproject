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
}

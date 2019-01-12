package com.grit.lecture.model;

import com.grit.db.ConnectionPoolMgr2;

public class LectureDAO {
private ConnectionPoolMgr2 pool;
	
	public LectureDAO() {
		pool=new ConnectionPoolMgr2();
	}
}

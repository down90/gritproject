package com.grit.lecture.model;

public class LectureVO {
	private int Cno "C_NO"
	private String C_category
	private String C_name
	"C_TEACHER_INTRO" VARCHAR2(500)  NULL,     ㅁ농ㅁ농ㅁㄴ옴ㄴㅇㅁ노
	"C_STATUS"        VARCHAR2(50)   NOT NULL, -- 모임상태
	"C_SUMMARY"       VARCHAR2(1000) NULL,     -- 모임요약
	"C_DETAIL"        CLOB           NULL,     -- 모임상세내용
	"C_DATE"          DATE           NOT NULL, -- 모임시작일
	"C_LOCATION"      VARCHAR2(500)  NOT NULL, -- 모임장소
	"C_MAXPERSON"     NUMBER         NOT NULL, -- 모임최대인원
	"C_PERSON"        NUMBER         NULL,     -- 모임현재인원
	"C_PAY"           VARCHAR2(500)  NOT NULL, -- 모임유무료구분
	"C_MONEY"         NUMBER         NULL,     -- 모임비용
	"C_ACCOUNT"       VARCHAR2(500)  NULL,     -- 계좌
	"IMG_NO"          NUMBER         NULL,     -- 이미지번호
	"C_BANK"          VARCHAR(500)   NULL,     -- 은행
	"C_READCNT"       NUMBER         NULL,     -- 조회수
	"C_REGDATE"       DATE           NULL,     -- 모임등록일
	"C_DELFLAG"       VARCHAR2(50)   NOT NULL, -- 삭제구분
	"C_RECOMMAND"     VARCHAR2(50)   NOT NULL, -- 추천여부
	"MEM_USERID"      VARCHAR2(500)  NOT NULL  -- 개인회원아이디
}

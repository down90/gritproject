package com.grit.lecture.model;

public class LectureVO {
	private int Cno "C_NO"
	private String C_category
	private String C_name
	"C_TEACHER_INTRO" VARCHAR2(500)  NULL,     ���󤱳󤱤��Ȥ�������
	"C_STATUS"        VARCHAR2(50)   NOT NULL, -- ���ӻ���
	"C_SUMMARY"       VARCHAR2(1000) NULL,     -- ���ӿ��
	"C_DETAIL"        CLOB           NULL,     -- ���ӻ󼼳���
	"C_DATE"          DATE           NOT NULL, -- ���ӽ�����
	"C_LOCATION"      VARCHAR2(500)  NOT NULL, -- �������
	"C_MAXPERSON"     NUMBER         NOT NULL, -- �����ִ��ο�
	"C_PERSON"        NUMBER         NULL,     -- ���������ο�
	"C_PAY"           VARCHAR2(500)  NOT NULL, -- ���������ᱸ��
	"C_MONEY"         NUMBER         NULL,     -- ���Ӻ��
	"C_ACCOUNT"       VARCHAR2(500)  NULL,     -- ����
	"IMG_NO"          NUMBER         NULL,     -- �̹�����ȣ
	"C_BANK"          VARCHAR(500)   NULL,     -- ����
	"C_READCNT"       NUMBER         NULL,     -- ��ȸ��
	"C_REGDATE"       DATE           NULL,     -- ���ӵ����
	"C_DELFLAG"       VARCHAR2(50)   NOT NULL, -- ��������
	"C_RECOMMAND"     VARCHAR2(50)   NOT NULL, -- ��õ����
	"MEM_USERID"      VARCHAR2(500)  NOT NULL  -- ����ȸ�����̵�
}

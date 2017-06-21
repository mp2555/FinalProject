package service;

import dao.MemberDAO;

public class MemberServiceImp implements MemberService{

	private MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}
	
	public MemberServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
}//end class

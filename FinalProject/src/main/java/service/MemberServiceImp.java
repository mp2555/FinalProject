package service;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberServiceImp implements MemberService{

	private MemberDAO dao;

	public void setDao(MemberDAO dao) {
		this.dao = dao;
	}
	
	public MemberServiceImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void insertProcess(MemberDTO dto) {
		dao.reg(dto);
	}
	
}//end class

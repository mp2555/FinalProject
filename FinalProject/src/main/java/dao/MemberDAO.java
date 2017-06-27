package dao;

import dto.MemberDTO;

public interface MemberDAO {
	public MemberDTO profile(String email);
	
	public void reg(MemberDTO dto);
	
}

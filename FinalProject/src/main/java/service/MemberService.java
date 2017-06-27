package service;

import dto.MemberDTO;

public interface MemberService {
	public void insertProcess(MemberDTO dto);
	public MemberDTO profileProcess(String email);
	
}

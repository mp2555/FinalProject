package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MemberDTO;

public class MemberDAOImp implements MemberDAO {

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	public MemberDAOImp() {
		
	}

	@Override
	public void reg(MemberDTO dto) {
		sqlSession.insert("member.reg",dto);
	}

}// end class

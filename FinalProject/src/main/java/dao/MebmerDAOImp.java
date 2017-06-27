package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.MemberDTO;

public class MebmerDAOImp implements MemberDAO {

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	public MebmerDAOImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public MemberDTO profile(String email) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("member.profile",email);
	}

	@Override
	public void reg(MemberDTO dto) {
		sqlSession.insert("member.reg",dto);
		
	}

	

}// end class

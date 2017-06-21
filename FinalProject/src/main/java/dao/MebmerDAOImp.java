package dao;

import org.mybatis.spring.SqlSessionTemplate;

public class MebmerDAOImp implements MemberDAO {

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	public MebmerDAOImp() {
		// TODO Auto-generated constructor stub
	}

}// end class

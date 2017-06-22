package dao;

import org.mybatis.spring.SqlSessionTemplate;

public class ProjectDAOImp implements ProjectDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public ProjectDAOImp() {
		// TODO Auto-generated constructor stub
	}
	
}//end class


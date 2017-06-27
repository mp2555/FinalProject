package dao;

import org.mybatis.spring.SqlSessionTemplate;

import dto.ProjectDTO;

public class ProjectDAOImp implements ProjectDAO{

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public ProjectDAOImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void saveProject(ProjectDTO dto) {
		sqlSession.insert("project.project_make", dto);
	}
	
}//end class


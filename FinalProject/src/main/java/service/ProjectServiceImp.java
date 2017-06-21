package service;

import dao.ProjectDAO;

public class ProjectServiceImp implements ProjectService{

	private ProjectDAO dao;
	
	public void setDao(ProjectDAO dao) {
		this.dao = dao;
	}
	
	public ProjectServiceImp() {
		// TODO Auto-generated constructor stub
	}
}//end class

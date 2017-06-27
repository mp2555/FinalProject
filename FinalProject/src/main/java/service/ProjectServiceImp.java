package service;

import dao.ProjectDAO;
import dto.ProjectDTO;

public class ProjectServiceImp implements ProjectService{

	private ProjectDAO dao;
	
	public void setDao(ProjectDAO dao) {
		this.dao = dao;
	}
	
	public ProjectServiceImp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void saveProcess(ProjectDTO dto) {
		dao.saveProject(dto);
	}

}//end class

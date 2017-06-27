package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.ProjectDTO;
import service.ProjectService;


@Controller
public class ProjectController {

	private ProjectService service;

	public void setService(ProjectService service) {
		this.service = service;
	}

	public ProjectController() {

	}

	@RequestMapping("/dashboard.do")
	public ModelAndView boardMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("dashboard");
		return mav;
	}

	@RequestMapping("/project_member.do")
	public ModelAndView memberMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("project_member");
		return mav;
	}

	@RequestMapping("/project_info.do")
	public ModelAndView projectMethod() {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("project_info");
		return mav;
	}

	@RequestMapping(value = "/project_info.do", method = RequestMethod.POST)
	public String projectClearMethod(ProjectDTO dto, HttpServletRequest request) {
		MultipartFile file = dto.getFilename();

		if (!file.isEmpty()) {
			String fileName = file.getOriginalFilename();

			String root = request.getSession().getServletContext().getRealPath("/");

			String saveDirectory = root + "files" + File.separator;
			File fe = new File(saveDirectory);
			if (!fe.exists()) {
				fe.mkdir();
			}

			File ff = new File(saveDirectory, fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
			} catch (FileNotFoundException e) {

				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}

			dto.setPro_pic(fileName);
		}

		(service).saveProcess(dto);
		System.out.println(dto.getPro_title());
		System.out.println(dto.getPro_des());
		System.out.println(dto.getPro_pic());
		return "redirect:/dashboard.do";
	}

	@RequestMapping("/wiki.do")
	public ModelAndView wikiMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("wiki");
		return mav;
	}

	@RequestMapping("/timeline.do")
	public ModelAndView timelineMethod() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("timeline");
		return mav;
	}
}// end class

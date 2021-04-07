package com.cognizant.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cognizant.domain.Student;
import com.cognizant.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studService;
	
	
	@ModelAttribute
	public void init(Model model) {
		
		model.addAttribute("student", new Student());
		model.addAttribute("genders",studService.getGenders());
		model.addAttribute("courses",studService.getCourses());
		model.addAttribute("timings",studService.getTimings());

	}
	
	@GetMapping("/loadform")
	public String loadForm(Model model) {
				
		return "studentReg";
		
	}
	
	@PostMapping("/saveStudent")
	public String handleSubmitButton(@Valid Student student, BindingResult br, Model model) {
	
	System.out.println(student);	
		
	//logic to save student details in DB
	if(br.hasErrors()) {
		return "studentReg";
	}
	
	model.addAttribute("student",student);
	return "studentData";
	
	}
	
}

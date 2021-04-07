package com.cognizant.domain;

import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class Student {
	
	private String studId;
	

	private String studName;
	
	private String studGen;
	private String studCourse;
	private String[] studTim;
}

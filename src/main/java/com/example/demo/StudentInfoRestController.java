package com.example.demo;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class StudentInfoRestController {

	@GetMapping(value = "/stud/info", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<StudentInfo> studInfo() {

		StudentInfo info = new StudentInfo();
		info.studno = 1;
		info.studName = "Srirama";
		info.city = "Ayodya";
		info.classTeacher = "Ram";
		info.classNo = "10";
		return ResponseEntity.ok(info);

	}
}

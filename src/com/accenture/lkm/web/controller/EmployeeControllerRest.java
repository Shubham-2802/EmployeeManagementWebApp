package com.accenture.lkm.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.accenture.lkm.business.bean.EmployeeBean;
import com.accenture.lkm.service.EmployeeService;

@RestController
public class EmployeeControllerRest {
	
	@Autowired
	private EmployeeService employeeService;
	
//	@ResponseBody
//	@RequestMapping(value="/emp/getEmpById/{id}",method=RequestMethod.GET,produces=MediaType.APPLICATION_JSON_VALUE)
//	public EmployeeBean getEmployeeDetailsById(@PathVariable("id")Integer id) throws Exception{
//		EmployeeBean getEmployee=employeeService.getEmployeeDetails(id);
//		return getEmployee;
//	}

	@RequestMapping(value="/emp/getEmpById/{id}",method=RequestMethod.GET,produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<EmployeeBean> getEmployeeDetailsById(@PathVariable("id") Integer id) throws Exception{
		EmployeeBean getEmployee=employeeService.getEmployeeDetails(id);
		if(getEmployee != null)
			return new ResponseEntity<EmployeeBean>(getEmployee,HttpStatus.OK);
		else
			return new ResponseEntity<EmployeeBean>(HttpStatus.NOT_FOUND);
	}
	
	
}

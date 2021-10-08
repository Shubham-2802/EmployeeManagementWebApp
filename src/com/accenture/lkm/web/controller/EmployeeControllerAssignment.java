package com.accenture.lkm.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.accenture.lkm.business.bean.DetailsRangeBean;
import com.accenture.lkm.business.bean.EmployeeBean;
import com.accenture.lkm.exceptions.InvalidUpdateOperationException;
import com.accenture.lkm.service.EmployeeService;

@Controller

@SuppressWarnings("unused")
public class EmployeeControllerAssignment {

	@Autowired
	private EmployeeService employeeService;

	//https://stackoverflow.com/questions/20616319/the-request-sent-by-the-client-was-syntactically-incorrect-spring-mvc-jdbc-te
	//this is required to share the date for update on multiple submissions
	// otherwise Spring will not know how to parse date from date to String and vice versa
	// in subsequent request submissions
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");	    
	    sdf.setLenient(true);
	    //binder.registerCustomEditor(Date.class,"insertTime", new CustomDateEditor(sdf, true));
	    //For all the date fields being submitted
	    binder.registerCustomEditor(Date.class,new CustomDateEditor(sdf, true));
	}
	@RequestMapping(value = "/LoadGetDetailsInDateRange", method = RequestMethod.GET)
	public ModelAndView getEmployeesWithinDateRangePage() throws Exception {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("GetEmployeeDetailsByDateRange");
		mv.addObject("empDetails",new DetailsRangeBean());
		return mv;
		
	}
	@RequestMapping(value = "/GetDataWithinDateRange", method = RequestMethod.GET)
	public ModelAndView getEmployeesDataInDateRange(@ModelAttribute("empDetails") DetailsRangeBean detailsBean) throws Exception {
		
		List<EmployeeBean> listEmployee=employeeService.getEmployeeDetailsWithin(detailsBean.getFromDate(),detailsBean.getToDate());
		ModelAndView mv=new ModelAndView();
		mv.setViewName("GetEmployeeDetailsByDateRange");
		mv.addObject("empList",listEmployee);
		return mv;
	}
	
	
	@RequestMapping(value = "/LoadDeleteEmployeeByName", method = RequestMethod.GET)
	public ModelAndView getDeleteEmployeesByNamePage() throws Exception {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("DeleteEmployee");
		mv.addObject("empObj",new EmployeeBean());
		return mv;
	}

	
	
	@RequestMapping(value = "/DeleteEmployeeByName", method = RequestMethod.POST)
	public ModelAndView deleteEmployeesByName(@ModelAttribute("empObj") EmployeeBean bean) throws Exception {
		
		Integer result=employeeService.deleteEmployeeByName(bean.getName());
		ModelAndView mv=new ModelAndView();
		mv.setViewName("DeleteEmployee");
		mv.addObject("result",result);
		mv.addObject("message","found");
		return mv;
	
	}
	
	//Error Handler:
	@ExceptionHandler(value=Exception.class)
	public ModelAndView handleAllExceptions(Exception exception){
		
		ModelAndView  modelAndView = new ModelAndView();
		modelAndView.setViewName("GeneralizedExceptionHandlerPage");
		modelAndView.addObject("message", exception.getMessage());
		modelAndView.addObject("exception", exception);
		return modelAndView;
	}
	
}

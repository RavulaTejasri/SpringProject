package com.example.demo.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.ContactModel;
import com.example.demo.service.ContactService;

import antlr.collections.List;

@Controller
public class ContactController {
	
	
	@Autowired
	ContactService contactService;
	
	
	@RequestMapping("/")
	public String HomeGet() {
		return "home";
	}
	@RequestMapping("/del/{id}")
	private String Del(@PathVariable("id") int id) {
		contactService.deleteOne(id);
		return "view";
	}
	@RequestMapping("/update/{id}")
	private ModelAndView Update(@PathVariable("id") int id) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("contact",contactService.get(id));
		mv.setViewName("edit");
		return mv;
	}
	
	@RequestMapping(value="/editpost",method=RequestMethod.POST)
	public String editpost(ContactModel m) {
		contactService.addContact(m);
		return "view";
	}
	
		
	
	@RequestMapping(value="/homepost",method=RequestMethod.POST)
	public String HomePost(ContactModel m) {
		contactService.addContact(m);
		return "home";
	}
	
	@RequestMapping(value="/ViewAll")
	public ModelAndView ViewAll() {
		ModelAndView mv=new ModelAndView();
		ArrayList<ContactModel> l1=(ArrayList<ContactModel>) contactService.ViewAll();
		mv.addObject("m1",l1);
		mv.setViewName("view");
		return mv;
	}

}

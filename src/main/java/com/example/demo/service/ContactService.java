package com.example.demo.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ContactModel;
import com.example.demo.repository.ContactRepository;
@Service
public class ContactService {
	
	@Autowired
	ContactRepository contactRepository;

	public void addContact(ContactModel m) {
		
		contactRepository.save(m);
		
	}

	public Object ViewAll() {
		// TODO Auto-generated method stub
		return contactRepository.findAll();
	}
	public void deleteOne(int id) {
		contactRepository.deleteById(id);
		return;
	}
	public ContactModel get(int id) {
		return contactRepository.findById(id).get();
	}
	
	
	
}

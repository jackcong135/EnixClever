package com.enixclever.ec_document.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.enixclever.ec_document.service.Ec_documentService;
import com.enixclever.util.page.PageObject;

@Controller
@RequestMapping("/ec_document")
public class Ec_documentController {
	@Autowired
	private Ec_documentService service;
	private String modulePath = "ec_document";

	@RequestMapping(path = "/list", method = RequestMethod.GET)
	public String list(Model model, PageObject pageObject) {

		model.addAttribute("list", service.list(pageObject));
		model.addAttribute("pageObject", pageObject);
		return modulePath+"/list";

}
}

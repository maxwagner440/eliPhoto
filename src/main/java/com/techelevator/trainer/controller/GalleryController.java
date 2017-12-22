package com.techelevator.trainer.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.trainer.model.MessageDAO;

@Controller
public class GalleryController {

	private MessageDAO messageDAO;

	@Autowired
	public GalleryController(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
	@RequestMapping(path="/gallery", method=RequestMethod.GET)
	public String viewGallery(ModelMap modelHolder, HttpServletRequest request) {
		String category = "";
		if(request.getAttribute("category") == null) {
			category = "";
		}
		else {
			category = (String) request.getAttribute("category");
		}
		modelHolder.addAttribute("pictures", messageDAO.getPictureByCategory(category));
		return "gallery";
	}
	
	@RequestMapping(path="/gallery", method=RequestMethod.POST)
	public String chooseTypeOfGallery(RedirectAttributes attr, @RequestParam String category) {
		
		attr.addFlashAttribute("pictures", messageDAO.getPictureByCategory(category));
		return "redirect:/gallery";
	}
}

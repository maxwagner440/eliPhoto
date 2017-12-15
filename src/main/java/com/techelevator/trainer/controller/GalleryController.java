package com.techelevator.trainer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.trainer.model.MessageDAO;

@Controller
public class GalleryController {

	private MessageDAO messageDAO;

	@Autowired
	public GalleryController(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
	@RequestMapping(path="/gallery", method=RequestMethod.GET)
	public String viewGallery(ModelMap modelHolder) {
		modelHolder.addAttribute("pictures", messageDAO.getAllPictures());
		return "gallery";
	}
}

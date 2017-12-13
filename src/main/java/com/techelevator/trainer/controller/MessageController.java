package com.techelevator.trainer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.beans.Message;
import com.techelevator.trainer.model.MessageDAO;


@Controller
public class MessageController {

	private MessageDAO messageDAO;

	@Autowired
	public MessageController(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
	
	@RequestMapping(path="/contact", method=RequestMethod.GET)
	public String displayContactPage(RedirectAttributes attr, ModelMap modelHolder) {
		
		if(attr.containsAttribute("success")) {
			modelHolder.addAttribute("success", attr.getFlashAttributes().get("success"));
		}
			
		return "contact";
	}

	@RequestMapping(path="/contact", method=RequestMethod.POST)
	public String sendMessageToEli(@RequestParam String name, @RequestParam String email, @RequestParam String number,
			@RequestParam String message, RedirectAttributes attr) {
		Message newMessage = new Message();
		newMessage.setName(name);
		newMessage.setEmail(email);
		newMessage.setNumber(number);
		newMessage.setMessage(message);
		attr.addFlashAttribute("success", "You have successfully sent Eli a message!");
		messageDAO.saveMessage(newMessage);
		return "redirect:/contact";
	}
	
	@RequestMapping(path="allMessages", method=RequestMethod.GET)
	public String showAllMessages(ModelMap modelHolder) {
		modelHolder.addAttribute("messages", messageDAO.getAllMessages());
		return "allMessages";
	}
}

package com.techelevator.trainer.model;

import java.util.List;

import com.techelevator.beans.Message;

public interface MessageDAO {
	
	public void saveMessage(Message message);
	public List<Message> getAllMessages();
	public void deletMessage(Long messageId);

}

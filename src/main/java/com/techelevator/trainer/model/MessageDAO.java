package com.techelevator.trainer.model;

import java.util.List;

import com.techelevator.beans.Message;
import com.techelevator.beans.Picture;

public interface MessageDAO {
	
	public void saveMessage(Message message);
	public List<Message> getAllMessages();
	public void deletMessage(Long messageId);
	public List<Picture> getAllPictures();
	public Picture getPictureByPictureId(Long pictureId);
	public void savePicute(Picture picture);
	public Object getPictureByCategory(String category);
	

}

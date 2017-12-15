package com.techelevator.trainer.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.beans.Message;
import com.techelevator.beans.Picture;



@Component
public class JDBCmessageDAO implements MessageDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCmessageDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public void saveMessage(Message message) {
		jdbcTemplate.update("INSERT INTO messages (name, email, "
				+ "phone_number, message, date" 
				+ ") VALUES (?, ?, ?, ?, NOW())",
				message.getName(), message.getEmail(), message.getNumber(),
				message.getMessage());
	}

	@Override
	public List<Message> getAllMessages() {
		List<Message> allMessages = new ArrayList<>();
		String sqlStatement = "SELECT * FROM messages";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlStatement);
		while(result.next()) {
			allMessages.add(mapToMessage(result));
		}
		return allMessages;
	}

	@Override
	public void deletMessage(Long messageId) {
		jdbcTemplate.update("DELETE FROM messages WHERE message_id = ?", messageId);
	}
	
	
	public Message mapToMessage(SqlRowSet result) {
		Message message = new Message();
		message.setName(result.getString("name"));
		message.setDate(result.getDate("date").toLocalDate());
		message.setEmail(result.getString("email"));
		message.setNumber(result.getString("phone_number"));
		message.setMessage(result.getString("message"));
		
		return message;
	}

	@Override
	public List<Picture> getAllPictures() {
		List<Picture> allPics = new ArrayList<>();
		String sqlStatement = "SELECT * FROM pictures";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlStatement);
		while(result.next()) {
			allPics.add(mapToPicture(result));
		}
		return allPics;
	}

	@Override
	public Picture getPictureByPictureId(Long pictureId) {
		Picture picture = new Picture();
		String sqlStatement = "SELECT * FROM pictures WHERE picture_id = ?";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlStatement, pictureId);
		while(result.next()) {
		     picture = mapToPicture(result);
		}
		return picture;
	}

	@Override
	public void savePicute(Picture picture) {
		jdbcTemplate.update("INSERT INTO pictures (file_name, date, location, category, title)"
				+ " VALUES (?, ?, ?, ?, ?)");
	}
	public Picture mapToPicture(SqlRowSet result) {
		Picture picture = new Picture();
		picture.setPictureId(result.getLong("picture_id"));
		picture.setFileName(result.getString("file_name"));
		picture.setDate(result.getDate("date").toLocalDate());
		picture.setLocation(result.getString("location"));
		picture.setCatergory(result.getString("category"));
		picture.setTitle(result.getString("title"));
		return picture;
	}
}

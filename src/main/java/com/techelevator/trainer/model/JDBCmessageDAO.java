package com.techelevator.trainer.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import com.techelevator.beans.Message;



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
}

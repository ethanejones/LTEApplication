package com.example.LTEApplication;

import java.sql.Timestamp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {

	private static final String automateMessage = "Automate all the things!";
	private final Timestamp timestamp = new Timestamp(System.currentTimeMillis());

	@GetMapping("/message")
	public Message message() {
        return new Message(automateMessage, timestamp.getTime());
	}
}
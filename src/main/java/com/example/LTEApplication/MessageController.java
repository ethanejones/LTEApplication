package com.example.LTEApplication;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {

	private static final String automateMessage = "Automate all the things!";

	@Value("${app.name}")
	private String name;

	@Value("${app.version}")
	private String version;

	@GetMapping("/message")
	public Message message() {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        return new Message(automateMessage, timestamp.getTime(), name, version);
	}
}

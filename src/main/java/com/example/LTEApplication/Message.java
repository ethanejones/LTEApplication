package com.example.LTEApplication;

public class Message {

    private final String message;
	private final long timestamp;
	private final String app;
	private final String version;

	public Message(String message, long timestamp, String app, String version) {
		this.message = message;
        this.timestamp = timestamp;
		this.app = app;
		this.version = version;
	}

	public String getMessage() {
		return message;
	}

	public long getTimestamp() {
		return timestamp;
	}

	public String getApp() {
		return app;
	}

	public String getVersion() {
		return version;
	}
}
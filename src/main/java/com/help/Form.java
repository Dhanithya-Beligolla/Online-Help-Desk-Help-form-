package com.help;

public class Form {
	
	private String id;
	private String name;
	private String email;
	private String category;
	private String subject;
	private String description;
	/**
	 * @param fid
	 * @param name
	 * @param email
	 * @param category
	 * @param subject
	 * @param description
	 */
	
	//Constructor
	public Form(String id, String name, String email, String category, String subject, String description) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.category = category;
		this.subject = subject;
		this.description = description;
	}
	
	//getters
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getCategory() {
		return category;
	}
	public String getSubject() {
		return subject;
	}
	public String getDescription() {
		return description;
	}

}

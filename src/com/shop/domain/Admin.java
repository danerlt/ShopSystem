package com.shop.domain;

public class Admin {
    private String username;
    private String password;
    private String email;
    private int level;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	@Override
	public String toString() {
		return "Admin [username=" + username + ", password=" + password + ", email=" + email + ", level=" + level + "]";
	}
    
}

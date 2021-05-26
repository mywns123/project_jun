package project_jun.dto;

public class AuthInfo {

	private String userId;	
	private String userName;
	private String email;
	
	public AuthInfo() {
		// TODO Auto-generated constructor stub
	}

	

	public AuthInfo(String userId, String userName, String email) {
		this.userId = userId;
		this.userName = userName;
		this.email = email;
	}



	public String getUserId() {
		return userId;
	}



	public String getUserName() {
		return userName;
	}



	public String getEmail() {
		return email;
	}



	

}

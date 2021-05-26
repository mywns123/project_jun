package project_jun.dto;

public class loginCommand {
	private String userId;
	private String userPw;
	private boolean rememberUserId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public boolean isRememberUserId() {
		return rememberUserId;
	}

	public void setRememberUserId(boolean rememberUserId) {
		this.rememberUserId = rememberUserId;
	}

}

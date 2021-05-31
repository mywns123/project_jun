package project_jun.dto;

public class ChangePwdCommand {

	private String currentUserPw;
	private String newUserPw;
	private String confirmNewUserPw;

	public String getCurrentUserPw() {
		return currentUserPw;
	}

	public void setCurrentUserPw(String currentUserPw) {
		this.currentUserPw = currentUserPw;
	}

	public String getNewUserPw() {
		return newUserPw;
	}

	public void setNewUserPw(String newUserPw) {
		this.newUserPw = newUserPw;
	}

	public String getConfirmNewUserPw() {
		return confirmNewUserPw;
	}

	public void setConfirmNewUserPw(String confirmNewUserPw) {
		this.confirmNewUserPw = confirmNewUserPw;
	}

}

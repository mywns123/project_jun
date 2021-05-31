package project_jun.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class RegisterRequest {
	@NotBlank	
	@Size(min = 1)
	private String userId; // 회원계정	
	private String userPw; // 비밀번호	
	private String confirmUserPw; // 비밀번호확인	
	private String userName; // 회원성명	
	private String address; // 주소
	private String detailAddress; // 상세주소
	private String userPhone; // 회원H.P
	@Email
	private String email; // 이메일
	private int bankAccount; // 계좌번호
	private String bankName; // 은행명

	// getter & setter
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

	public String getConfirmUserPw() {
		return confirmUserPw;
	}

	public void setConfirmUserPw(String confirmUserPw) {
		this.confirmUserPw = confirmUserPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(int bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public boolean isPasswordEqualToComfirmPassword() {
		return userPw.equals(confirmUserPw);
	}

	@Override
	public String toString() {
		return String.format(
				"RegisterRequest [userId=%s, userPw=%s, confirmUserPw=%s, userName=%s, address=%s, detailAddress=%s, userPhone=%s, email=%s, bankAccount=%s, bankName=%s]",
				userId, userPw, confirmUserPw, userName, address, detailAddress, userPhone, email, bankAccount,
				bankName);
	}

}

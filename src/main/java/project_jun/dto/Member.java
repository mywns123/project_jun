package project_jun.dto;

public class Member {
	private String userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String address;
	private String detailAddress;
	private String userPhone;
	private String email;
	private int bankAccount;
	private String bankName;

	public Member() {}

	public Member(String userId, String userPw, String userName, String address) {
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.address = address;
	}

	public Member(String userId, String userPw, String userName, String address, String detailAddress, String userPhone,
			String email, int bankAccount, String bankName) {
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.address = address;
		this.detailAddress = detailAddress;
		this.userPhone = userPhone;
		this.email = email;
		this.bankAccount = bankAccount;
		this.bankName = bankName;
	}

	public Member(String userNo, String userId, String userPw, String userName, String address, String detailAddress,
			String userPhone, String email, int bankAccount, String bankName) {
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.address = address;
		this.detailAddress = detailAddress;
		this.userPhone = userPhone;
		this.email = email;
		this.bankAccount = bankAccount;
		this.bankName = bankName;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

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

	@Override
	public String toString() {
		return String.format("Member %s, %s, %s, %s, %s, %s, %s, %s, %s, %s", userNo, userId, userPw, userName, address,
				detailAddress, userPhone, email, bankAccount, bankName);
	}

}

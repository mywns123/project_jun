package project_jun.dto;

//회원정보
public class UserInfo {
	private String userNo;		 //회원번호
	private String userId;		 //회원계정
	private String userPw;		 //비밀번호
	private String userName;	 //회원성명
	private String address;		 //주소
	private String detailAddress;//상세주소
	private String userPhone;	 //회원H.P
	private String email;		 //이메일
	private int bankAccount;	 //계좌번호
	private String bankName;	 //은행명

	// 생성자
	public UserInfo() {
	}

	// 회원번호
	public UserInfo(String userNo) {
		this.userNo = userNo;
	}

	// getter & setter
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
		return String.format(
				"UserInfo [userNo=%s, userId=%s, userPw=%s, userName=%s, address=%s, detailAddress=%s, userPhone=%s, email=%s, bankAccount=%s, bankName=%s]",
				userNo, userId, userPw, userName, address, detailAddress, userPhone, email, bankAccount, bankName);
	}

	
}

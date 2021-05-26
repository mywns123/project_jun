package project_jun.dto;

import java.util.Date;

//메세지
public class Message {
	private String msgNo;	   //메세지번호
	private String sendUser;   //발신자
	private String receiveUser;//수신자
	private String msgContent; //내용
	private Date sendDate;	   //발신일
	private boolean readYN;	   //확인여부

	// 생성자
	public Message() {}

	// getter & setter
	public String getMsgNo() {
		return msgNo;
	}

	public void setMsgNo(String msgNo) {
		this.msgNo = msgNo;
	}

	public String getSendUser() {
		return sendUser;
	}

	public void setSendUser(String sendUser) {
		this.sendUser = sendUser;
	}

	public String getReceiveUser() {
		return receiveUser;
	}

	public void setReceiveUser(String receiveUser) {
		this.receiveUser = receiveUser;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Date getSendDate() {
		return sendDate;
	}

	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}

	public boolean isReadYN() {
		return readYN;
	}

	public void setReadYN(boolean readYN) {
		this.readYN = readYN;
	}

	@Override
	public String toString() {
		return String.format("Message [msgNo=%s, sendUser=%s, receiveUser=%s, msgContent=%s, sendDate=%s, readYN=%s]",
				msgNo, sendUser, receiveUser, msgContent, sendDate, readYN);
	}

	

}

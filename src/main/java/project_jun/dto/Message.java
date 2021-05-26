package project_jun.dto;

import java.util.Date;

public class Message {
	private String msgNo;
	private String sendUser;
	private String receiveUser;
	private String msgContent;
	private Date sendDate;
	private boolean readYN;

	public Message() {}

	public Message(String sendUser, String receiveUser, String msgContent, Date sendDate, boolean readYN) {
		this.sendUser = sendUser;
		this.receiveUser = receiveUser;
		this.msgContent = msgContent;
		this.sendDate = sendDate;
		this.readYN = readYN;
	}

	public Message(String msgNo, String sendUser, String receiveUser, String msgContent, Date sendDate,
			boolean readYN) {
		this.msgNo = msgNo;
		this.sendUser = sendUser;
		this.receiveUser = receiveUser;
		this.msgContent = msgContent;
		this.sendDate = sendDate;
		this.readYN = readYN;
	}

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
		return String.format("Message %s, %s, %s, %s, %s, %s]", msgNo, sendUser, receiveUser, msgContent, sendDate,
				readYN);
	}

}

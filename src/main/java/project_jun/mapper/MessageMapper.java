package project_jun.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import project_jun.dto.Message;
import project_jun.dto.UserInfo;


@Component
public interface MessageMapper {

	List<Message> selectMessageAll();
	
	int insertMessage(Message message);	

	int deleteMessage(int msgNo);
	
}

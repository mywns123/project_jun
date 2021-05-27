package project_jun.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import project_jun.dto.UserInfo;


@Component
public interface UserInfoMapper {

	List<UserInfo> selectMemberByAll();
	
	UserInfo selectMemberByEmail(String email);
	
	UserInfo selectbyId(long memId);
	
	int countMember();
	
	int insertMember(UserInfo member);
	
	int updateMember(UserInfo member);
	
	int deleteMember(UserInfo member);
	
//	List<UserInfo> selectByRegdate(ListCommand listCommand);
}

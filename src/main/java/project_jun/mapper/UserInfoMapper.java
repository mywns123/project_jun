package project_jun.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import project_jun.dto.UserInfo;

@Component
public interface UserInfoMapper {

	List<UserInfo> selectUserAll();

	UserInfo selectUserbyNo(int userNo);

	UserInfo selectUserbyId(String userId);

	UserInfo selectUserbyEmail(String email);

	int insertMember(UserInfo userInfo);

	int updateMember(UserInfo userInfo);

	int deleteMember(int userNo);

}

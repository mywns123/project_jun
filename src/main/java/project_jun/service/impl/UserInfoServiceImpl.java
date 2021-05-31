package project_jun.service.impl;

import java.util.List;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project_jun.dto.UserInfo;
import project_jun.mapper.UserInfoMapper;
import project_jun.service.UserInfoService;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	private static final Log log = LogFactory.getLog(UserInfoServiceImpl.class);
	
	@Autowired
	private UserInfoMapper mapper;
	
	
	@Override
	public List<UserInfo> showUserInfos() {
		List<UserInfo> list = mapper.selectUserAll();
		log.debug("service - list() > " + list.size());
		return list;
	}

	@Override
	public UserInfo showUserInfobyNo(int userNo) {
		log.debug("service - list() > " + userNo);
		return mapper.selectUserbyNo(userNo);
	}

	@Override
	public UserInfo showUserInfobyId(String userId) {
		log.debug("service - list() > " + userId);
		return mapper.selectUserbyId(userId);
	}

	@Override
	public UserInfo showUserInfobyEmail(String email) {
		log.debug("service - list() > " + email);
		return mapper.selectUserbyEmail(email);
	}

	@Override
	public int resisterUserInfo(UserInfo userInfo) {
		log.debug("service - list() > " + userInfo);
		return mapper.insertMember(userInfo);
	}

	@Override
	public int modifyUserInfo(UserInfo userInfo) {
		log.debug("service - list() > " + userInfo);
		return mapper.updateMember(userInfo);
	}

	@Override
	public int removeUserInfo(int userNo) {
		log.debug("service - list() > " + userNo);
		return mapper.deleteMember(userNo);
	}

}

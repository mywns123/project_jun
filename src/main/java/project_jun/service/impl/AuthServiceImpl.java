package project_jun.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project_jun.dto.AuthInfo;
import project_jun.dto.UserInfo;
import project_jun.exception.WrongIdPasswordException;
import project_jun.mapper.UserInfoMapper;
import project_jun.service.AuthService;



@Service
public class AuthServiceImpl implements AuthService {

	@Autowired
	private UserInfoMapper mapper;
	
	@Override
	public AuthInfo authenicate(String email, String password) {
		UserInfo userInfo = mapper.selectMemberByEmail(email);
//		if (userInfo == null) {
//			throw new WrongIdPasswordException();
//		}
//
//		if (!userInfo.matchPassword(password)) {
//			throw new WrongIdPasswordException();
//		}

		return new AuthInfo(userInfo.getUserId(), userInfo.getUserName(), userInfo.getEmail());

	}

}

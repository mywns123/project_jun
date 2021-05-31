package project_jun.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project_jun.dto.RegisterRequest;
import project_jun.dto.UserInfo;
import project_jun.exception.DuplicateUserException;
import project_jun.mapper.UserInfoMapper;
import project_jun.service.UserRegisterService;

@Service
public class UserRegisterServiceImpl implements UserRegisterService {

	@Autowired
	private UserInfoMapper mapper;

	@Override
	public int regist(RegisterRequest req) {
		UserInfo userInfo = mapper.selectUserbyId(req.getUserId());
		if (userInfo != null) {
			throw new DuplicateUserException("dup id" + req.getUserId());
		}
		UserInfo newUserInfo = new UserInfo(req.getUserId(), req.getUserPw(), req.getBankName(), req.getAddress(),
				req.getDetailAddress(), req.getUserPhone(), req.getEmail(), req.getBankAccount(), req.getBankName());

		mapper.insertMember(newUserInfo);
		return newUserInfo.getUserNo();
	}

}

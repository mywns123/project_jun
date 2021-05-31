package project_jun.service;

import org.springframework.stereotype.Service;

import project_jun.dto.RegisterRequest;

@Service
public interface UserRegisterService {
	int regist(RegisterRequest req);
}

package project_jun.service;

import org.springframework.stereotype.Service;

import project_jun.dto.AuthInfo;



@Service
public interface AuthService {
	AuthInfo authenicate(String email, String password);
}

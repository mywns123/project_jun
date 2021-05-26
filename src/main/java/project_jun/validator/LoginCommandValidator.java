package project_jun.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import project_jun.dto.LoginCommand;



public class LoginCommandValidator implements Validator {
	private static final String emailRegExp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	private Pattern pattern;
	
	public LoginCommandValidator() {
		this.pattern = Pattern.compile(emailRegExp);
	}

	@Override
	public boolean supports(Class<?> clazz) {		
		return LoginCommand.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userId", "required");
		LoginCommand loc = (LoginCommand) target;
		Matcher matcher = pattern.matcher(loc.getUserId());
		if(!matcher.matches()) {
			errors.rejectValue("userId", "bad");
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required");
	}

}

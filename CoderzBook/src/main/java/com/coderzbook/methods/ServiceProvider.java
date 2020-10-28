package com.coderzbook.methods;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Random;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

import com.coderzbook.entity.Employee;
import com.coderzbook.entity.Event;

public class ServiceProvider {

	
	 @Autowired
	 private JavaMailSender mailSender;
	
	public static Date getFormatedDate(String da) throws ParseException {
		String utilDate = da;
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date = dateFormat.parse(utilDate);
		String stringDate = dateFormat.format(date);
		return java.sql.Date.valueOf(stringDate);
	}

	
	
	public static char[] generatePassword(int length) {
		String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
		String specialCharacters = "!@#$";
		String numbers = "1234567890";
		String combinedChars = capitalCaseLetters + lowerCaseLetters + specialCharacters + numbers;
		Random random = new Random();
		char[] password = new char[length];

		password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
		password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
		password[2] = specialCharacters.charAt(random.nextInt(specialCharacters.length()));
		password[3] = numbers.charAt(random.nextInt(numbers.length()));

		for (int i = 4; i < length; i++) {
			password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
		}
		return password;
	}

	
	
	public void emailSender(Employee emp) {
		String recipientAddress = emp.getEmail();
		String subject = "CoderzBook";
		String message = "Hello "+emp.getName()+",You have successfully registered on CoderzBook."
				+ "Your Username : "+emp.getId()+" and Password : "+emp.getPassword();
		// creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setFrom("khansamer515@gmail.com");
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message);
         
        // sends the e-mail
        mailSender.send(email);
	}
	

}

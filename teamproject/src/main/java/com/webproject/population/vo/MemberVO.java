package com.webproject.population.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private String memberId;
	private String passwd;
	private String email;
	private String userType;
	private boolean active;
	private Date regDate;

}

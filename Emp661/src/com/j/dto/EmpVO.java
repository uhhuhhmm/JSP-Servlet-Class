package com.j.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class EmpVO {
	private String id;
	private String 	pass;
	private String name;
	private String lev;
	private Timestamp enter;
	private String gender;
	private String phone;
	
}

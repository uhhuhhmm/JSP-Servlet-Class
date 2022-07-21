package com.j.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class EmployeesVO {
	private String id, pass, name, lev, phone;
	private Date enter;
	private Integer gender;
}

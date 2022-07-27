package com.j.controller;

import com.j.controller.action.Action;
import com.j.controller.action.EmpListAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		
//		if(command == null) {
//			command = "emp_list";
//		}
		
		if(command.equals("emp_list")) {
			action = new EmpListAction();
		} 
//		else if (command.equals("emp_write_form")) {
//			action = new EmpWriteFormAction();
//		} else if (command.equals("emp_write")) {
//			action = new EmpWriteAction();
//		} else if (command.equals("emp_view")) {
//			action = new EmpViewAction();
//		} else if (command.equals("emp_check_pass_form")) {
//			action = new EmpCheckPassFormAction();
//		} else if (command.equals("emp_check_pass")) {
//			action = new EmpCheckPassAction();
//		} else if (command.equals("emp_update_form")) {
//			action = new EmpUpdateFormAction();
//		} else if (command.equals("emp_update")) {
//			action = new EmpUpdateAction();
//		} else if (command.equals("emp_delete")) {
//			action = new EmpDeleteAction();
//		}
		
		return action;
		
	}
}

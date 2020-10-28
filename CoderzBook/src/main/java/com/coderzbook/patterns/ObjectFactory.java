package com.coderzbook.patterns;

import org.springframework.stereotype.Component;

import com.coderzbook.entity.Admin;
import com.coderzbook.entity.Employee;

@Component
public class ObjectFactory implements FactoryInterface {

	/*Returns the object as per the argument passed*/
	public static FactoryInterface getInstance(String name) {
		if(name.equals("admin")) {
			return new Admin();
		}else if(name.equals("emp")) {
			return new Employee();
		}
		else {
			return null;
		}
	}
}

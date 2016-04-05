package com.krut;

public class LoginService {
	private String username;
	
	public String getUsername(){
		return username;
	}
	
	public boolean authenticateUser(String username, String password){
		this.username = username;
		
		if(username.equals("admin")){
			if(password.equals("admin")){  
		        return true;  
		    }  
		    else{  
		        return false;  
		    }  
		}else{
			return false;
		}
	}
}
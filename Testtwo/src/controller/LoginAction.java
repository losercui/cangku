package controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String uname;
	private String upassword;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	
	public void validate(){
		if(this.uname.isEmpty()){
			this.addFieldError("uname", this.getText("error.username"));
			System.out.print(this.uname);
		}
		if(this.upassword.isEmpty())
		{
			this.addFieldError("upassword", this.getText("error.userpassword"));
			System.out.print(this.upassword);
		}
	}
	public String execute() throws Exception{
		/*if ("admin".equals(uname)) {
			Map session=ActionContext.getContext().getSession();
			session.put("uname",uname);
			System.out.print(this.upassword);
			return "suc";
		} 
		System.out.print(this.upassword);
		return "fail";	
	}*/
		return "suc";
	}

}

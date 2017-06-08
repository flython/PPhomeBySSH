package cn.bst.action;

import java.sql.Timestamp;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.bst.model.Users;
import cn.bst.service.UserHendle;
import cn.bst.utils.GSONUtils;

public class LoginAction extends ActionSupport {
	private String account;
	private String psw;
	private Users user;
	Map<String, Object> session = ActionContext.getContext().getSession();

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

	public String doLogin() throws Exception {
		if ((user = new UserHendle(user).doLogin()) != null) {
			session.put("user", user);
			return SUCCESS;
		} else {
			session.put("msg", "账户或密码错误，请检查");
			System.out.println("错误");
			return ERROR;
		}
	}

	public String doRegister() throws Exception {
		if (new UserHendle(user).saveAsNewUser()) {
			return SUCCESS;
		} else {
			session.put("msg", "账户或已存在");
			return ERROR;
		}
	}
	
	public String doLogout() throws Exception {
		session.put("user", null);
		return SUCCESS;
	}

	// 自动生成代码

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPsw() {
		return psw;
	}

	public void setPsw(String psw) {
		this.psw = psw;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
	
}

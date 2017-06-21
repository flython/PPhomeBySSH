package cn.bst.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.bst.hibernate.BaseHibernateDAO;
import cn.bst.hibernate.SharesDAO;
import cn.bst.service.ShareHendle;

public class DeleteArtAction extends ActionSupport {
	private Integer id;
	
	@Override
	public String execute() throws Exception {
		new ShareHendle().deleteByID(id);
		return SUCCESS;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	
}

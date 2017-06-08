package cn.bst.action;

import java.util.List;
import java.util.Map;

import org.json.JSONObject;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.bst.model.Replys;
import cn.bst.service.ReplyHendle;
import cn.bst.service.ShareHendle;
import cn.bst.utils.WebDataUtils;

public class GetReplyList extends ActionSupport {
	private Integer id;
	
	@Override
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		session.put("art", new ShareHendle().getShareByID(id));
		List<Replys> rp = ReplyHendle.getReplysByID(id);
		if(rp.size() >= 0){
			session.put("replyList", rp);
			return SUCCESS;
		}
		else {
			
			return ERROR;
		}
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
}

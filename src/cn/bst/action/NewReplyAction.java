package cn.bst.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.bst.model.Replys;
import cn.bst.service.ReplyHendle;

public class NewReplyAction extends ActionSupport {
	private Replys reply;
	
	@Override
	public String execute() throws Exception {
		if(new ReplyHendle(reply).saveAsNewReply()) {
			GetReplyList grl = new GetReplyList();
			grl.setId(reply.getShearsId());
			if(grl.execute().equals(SUCCESS)){
				return SUCCESS;
			}
			else {
				return ERROR;
			}
			
		}
		else {
			
			return ERROR;
		}
	}

	public Replys getReply() {
		return reply;
	}

	public void setReply(Replys reply) {
		this.reply = reply;
	}
	
	
}

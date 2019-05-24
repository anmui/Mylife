package com.wyq.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Bean.content;
import com.wyq.Bean.reply;
import com.wyq.Mapper.ContentMapper;
import com.wyq.Mapper.UserMapper;
import com.wyq.Service.ContentService;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)  
@Service("ContentService")
public class ContentServiceImpl implements ContentService{

	 @Autowired
	  private ContentMapper contentMapper;
	 @Autowired
	  private UserMapper userMapper;
	@Override
	public int getreplyid() {
		// TODO �Զ����ɵķ������
		return contentMapper.getreplyid();
	}

	@Override
	public List<content> getallContent(String pageid) {
		// TODO �Զ����ɵķ������
		return contentMapper.findAllcontent(pageid);
	}

	@Override
	public List<reply> getallreply(String pageid) {
		// TODO �Զ����ɵķ������
		return contentMapper.findallreply(pageid);
	}

	@Override
	public int getid() {
		// TODO �Զ����ɵķ������
		return contentMapper.getcontentid();
	}

	@Override
	public String getname(String id) {
		// TODO �Զ����ɵķ������
		return userMapper.getname(id);
	}

	@Override
	public int submitcontent(String replyid, String rfrom_id, String rto_id, String contentid, String content,
			String time, String rfrom_name, String rto_name, String pageid) {
		// TODO �Զ����ɵķ������
		return contentMapper.submitreply(replyid, rfrom_id, rto_id, contentid, content, time, rfrom_name, rto_name, pageid);
	}

	@Override
	public int setcount(int count) {
		// TODO �Զ����ɵķ������
		return contentMapper.setcount(count);
	}

}

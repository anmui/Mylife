package com.wyq.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Bean.page;
import com.wyq.Mapper.PageMapper;
import com.wyq.Service.PageService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)  
@Service("PageService")  
public class PageServiceImpl implements PageService{
	
	@Autowired
    private PageMapper pageMapper;
	
	@Transactional(readOnly=true)
	public String getContent(String name)
	{
		 return pageMapper.content(name);
	}

	@Transactional(readOnly=true)
	public List<page> getoneArtical(String pageid) {
		// TODO 自动生成的方法存根
		return pageMapper.oneArtical(pageid);
	}
}

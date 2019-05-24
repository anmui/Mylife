package com.wyq.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Bean.page;
import com.wyq.Mapper.ALLPageMapper;
import com.wyq.Service.ALLPageService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)  
@Service("ALLPageService")  
public  class ALLPageServiceImpl implements ALLPageService{
    
    @Autowired
    private ALLPageMapper allpageMapper;

    @Transactional(readOnly=true)
    public List<page> getAll() {
        
        return allpageMapper.findAll();
    }
    
    public List<page> getOne(int startindex,int size)
    {
		return allpageMapper.findOne(startindex, size);
    }
    public int getCount() 
    {
		return allpageMapper.Count();
    	
    }

	@Override
	public List<page> getOneuser(String userid, int i, int limit) {
		// TODO 自动生成的方法存根
		return allpageMapper.findOneuser(userid,i,limit);
	}

	@Override
	public int getoneCount(String userid) {
		// TODO 自动生成的方法存根
		return allpageMapper.Countone(userid);
	}

	
	@Override
	public List<page> gettag(String tag,int start,int num) {
		// TODO 自动生成的方法存根
	
		if(tag.equals("生活"))
		{
			tag="1";
		}
		else if(tag.equals("学习"))
		{
			tag="2";
		}
		else tag="3";
		return allpageMapper.gettagpage(tag, start, num);
	}

	@Override
	public int gettagcount(String tag) {
		// TODO 自动生成的方法存根
		return allpageMapper.tagCount(tag);
	}


}

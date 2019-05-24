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
		// TODO �Զ����ɵķ������
		return allpageMapper.findOneuser(userid,i,limit);
	}

	@Override
	public int getoneCount(String userid) {
		// TODO �Զ����ɵķ������
		return allpageMapper.Countone(userid);
	}

	
	@Override
	public List<page> gettag(String tag,int start,int num) {
		// TODO �Զ����ɵķ������
	
		if(tag.equals("����"))
		{
			tag="1";
		}
		else if(tag.equals("ѧϰ"))
		{
			tag="2";
		}
		else tag="3";
		return allpageMapper.gettagpage(tag, start, num);
	}

	@Override
	public int gettagcount(String tag) {
		// TODO �Զ����ɵķ������
		return allpageMapper.tagCount(tag);
	}


}

package com.wyq.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.wyq.Mapper.DelectPageMapper;
import com.wyq.Mapper.PageMapper;
import com.wyq.Service.DelectService;
import com.wyq.Service.PageService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)  
@Service("DelectService")  
public class DelectServiceImpl implements DelectService{

	@Autowired
    private DelectPageMapper delectMapper;
	@Transactional(readOnly=false)
	@Override
	public int DelectOne(String pageid) {
		// TODO 自动生成的方法存根
		return delectMapper.Delect(pageid);
	}

}

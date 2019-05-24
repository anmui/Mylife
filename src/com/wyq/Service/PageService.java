package com.wyq.Service;

import java.util.List;

import com.wyq.Bean.page;

public interface PageService {
	
	String getContent(String name);
	List<page> getoneArtical(String pageid);

}

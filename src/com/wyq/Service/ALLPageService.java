package com.wyq.Service;

import java.util.List;
import com.wyq.Bean.page;

public interface ALLPageService {

    List<page> getAll();
    List<page> getOne(int startindex,int size);
    int getCount();
    int getoneCount(String userid);
	List<page> getOneuser(String userid,int i, int limit);
   List<page> gettag(String tag,int start,int num);
   int gettagcount(String tag);
}
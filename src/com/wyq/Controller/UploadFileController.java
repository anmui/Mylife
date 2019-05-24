package com.wyq.Controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadFileController {
	//�ϴ��ļ�
    @ResponseBody
    @RequestMapping(value = "/uploadFile")
    public String uploadFile(HttpServletRequest request,@Param("file") MultipartFile file) throws IOException {
        System.out.println("ddddd");
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSS");
        String res = sdf.format(new Date());
        //��������ʹ��
       // String rootPath =request.getServletContext().getRealPath("/resource/uploads/");//target��Ŀ¼
        //����ʹ��
        String rootPath ="C:\\Users\\Mac\\eclipse-workspace\\BookApp\\WebRoot\\resource\\upload\\";
        //ԭʼ����
        String originalFilename = file.getOriginalFilename();
        //�µ��ļ�����
        String newFileName = res+originalFilename.substring(originalFilename.lastIndexOf("."));
        //���������ļ���
        Calendar date = Calendar.getInstance();
        File dateDirs = new File(date.get(Calendar.YEAR)
                + File.separator + (date.get(Calendar.MONTH)+1));
        //���ļ�
        File newFile = new File(rootPath+File.separator+dateDirs+File.separator+newFileName);
        //�ж�Ŀ���ļ����ڵ�Ŀ¼�Ƿ����
        if(!newFile.getParentFile().exists()) {
            //���Ŀ���ļ����ڵ�Ŀ¼�����ڣ��򴴽���Ŀ¼
            newFile.getParentFile().mkdirs();
            System.out.println("ssss");
        }
        System.out.println(newFile);
        //���ڴ��е�����д�����
        file.transferTo(newFile);
        //������url
        String fileUrl =  "/uploads/"+date.get(Calendar.YEAR)+ "/"+(date.get(Calendar.MONTH)+1)+ "/"+ newFileName;
        Map<String,Object> map = new HashMap<String,Object>();
        Map<String,Object> map2 = new HashMap<String,Object>();
        map.put("code",0);//0��ʾ�ɹ���1ʧ��
        map.put("msg","�ϴ��ɹ�");//��ʾ��Ϣ
        map.put("data",map2);
        map2.put("src",fileUrl);//ͼƬurl
        map2.put("title",newFileName);//ͼƬ���ƣ��������ʾ���������
        String result = new JSONObject(map).toString();
        return result;
    }

}

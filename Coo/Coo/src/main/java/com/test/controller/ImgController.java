package com.test.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.test.entity.Img;
import com.test.service.ImgService;

@Controller
public class ImgController {

	@Autowired
	private ImgService imgService;
@RequestMapping(value="/addImg")
	
	public String addImg(Img img) {
//		imgService.addImg(img);
//		System.out.println("相册添加成功");
		return "图片上传";
	}
	@RequestMapping("/imgAdd")
	public String handleFormUpload(@RequestParam("name") String name,@RequestParam("uploadfile")List<MultipartFile> uploadfile,HttpServletRequest request,HttpSession session) {
	//判断上传文件是否存在	
	if(!uploadfile.isEmpty()&&uploadfile.size()>0) {
		//循环输出上传文件
		for(MultipartFile file:uploadfile) {
			//获取上传文件的原始名称	
			String originalFilename=file.getOriginalFilename();
			//设置上传文件保存地址目录	
			String dirPath=request.getServletContext().getRealPath("/upload/");
			System.out.println(dirPath);
				File filePath=new File(dirPath);
				//如果保存文件地址不存在，就先创建目录
				if(!filePath.exists()) {
					filePath.mkdirs();
				}
				String imgpath=dirPath+originalFilename;
				request.setAttribute("msg",imgpath);
				request.setAttribute("name", name);
				Img img=new Img();
				img.setName(name);
				img.setUploadfile(originalFilename);
				session.setAttribute("imgurl", originalFilename);
				imgService.addImg(img);
				System.out.println("相册添加成功");
				try {
					//使用MultipartFile接口的方法完成文件上传到指定位置
					file.transferTo(new File(imgpath));
					System.out.println("jjjs");
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return "redirect:/show";
		
		}else {
			return "error";
		}
	}
	@RequestMapping("/show")
	public String toshow() {
		return "图片显示";
	}
	@RequestMapping(value="/showImg")
	public String showImg(HttpServletRequest request) {
	List<Img> imgList=imgService.showImg();
	request.setAttribute("imgList", imgList);
		return "showimg";
		
	}
	@RequestMapping(value="/down")
	public String show() {
		return "download";
	}
	@RequestMapping("/download")
	public ResponseEntity<byte[]> fileDownload(HttpServletRequest request,String filename) throws IOException{
		//指定要下载的文件所在路径
		String path=request.getServletContext().getRealPath("/upload/");
	//request.getSer
		//创建该文件对象
		File file=new File(path+File.separator+filename);
		//设置响应头
		HttpHeaders headers=new HttpHeaders();
		//通知浏览器以下载的方式打开文件
		headers.setContentDispositionFormData("attachment", filename);
		//定义以流的形式下载返回文件数据
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		//使用框架的ResponseEntity对象封装返回下载数据
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.OK);
	}
	@RequestMapping(value="/toAdd")
	public String login() {
		return "addimg";
	}
}

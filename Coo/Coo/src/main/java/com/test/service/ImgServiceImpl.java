package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.entity.Img;
import com.test.mapper.ImgMapper;

@Service
public class ImgServiceImpl implements ImgService {

	@Autowired
	private ImgMapper imgMapper;
	
	@Override
	public void addImg(Img img) {
		imgMapper.addImg(img);
		
	}

	@Override
	public List<Img> showImg() {
		// TODO Auto-generated method stub
		return imgMapper.showImg();
	}

}

package com.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.entity.CheckResume;
import com.test.entity.Demo;
import com.test.entity.Education;
import com.test.entity.Except;
import com.test.entity.Experience;
import com.test.entity.Ext;
import com.test.entity.Hire;
import com.test.entity.HireAndResume;
import com.test.entity.User;
import com.test.mapper.ResumeMapper;

@Service 
@Transactional
public class ResumeServiceImpl implements ResumeService {
	@Autowired
	private ResumeMapper ResumeDao;

	@Override
	public void updateUserInfo(Demo demo) {
		ResumeDao.updateUserInfo(demo);
	}

	@Override
	public Demo selectById(Long bUserId) {
		// TODO Auto-generated method stub
		Demo demo = ResumeDao.selectById(bUserId);
		Integer gender = demo.getGender();
		if(gender.equals(1)) {
			demo.setSex("男");
		}else if(gender.equals(0)) {
			demo.setSex("女");
		}
		return demo;
	}

	@Override
	public Demo selectByUserName(String username) {
		// TODO Auto-generated method stub
		Demo demo = ResumeDao.selectByUserName(username);
//		Integer gender = demo.getGender();
//		if(gender.equals(1)) {
//			demo.setSex("男");
//		}else if(gender.equals(0)) {
//			demo.setSex("女");
//		}
		return demo;
	}

	@Override
	public Ext selectExtById(Long userId) {
		// TODO Auto-generated method stub
		return ResumeDao.selectExtById(userId);
	}

	@Override
	public Ext selectByExtId(Integer except_id) {
		// TODO Auto-generated method stub
		return ResumeDao.selectByExtId(except_id);
	}

	@Override
	public void updateExtInfo(Ext ext) {
		// TODO Auto-generated method stub
		ResumeDao.updateExtInfo(ext);
	}

	@Override
	public Integer selelectByUsername(String username) {
		// TODO Auto-generated method stub
		return ResumeDao.selelectByUsername(username);
	}

	@Override
	public String selectCompanyName(Integer post_id) {
		// TODO Auto-generated method stub
		return ResumeDao.selectCompanyName(post_id);
	}

	@Override
	public void insertHire(Hire hire) {
		ResumeDao.insertHire(hire);
		
	}

	@Override
	public void modifyUserInfor(User user) {
		// TODO Auto-generated method stub
		ResumeDao.modifyUserInfor(user);
		
	}

	@Override
	public void modifyExperience(Experience experience) {
		ResumeDao.modifyExperience(experience);
		
	}

	@Override
	public void modifyEducation(Education education) {
		ResumeDao.modifyEducation(education);
		
	}

	@Override
	public CheckResume selectHireAndResume(String username_demoid) {
		// TODO Auto-generated method stub
		return ResumeDao.selectHireAndResume(username_demoid);
	}

	@Override
	public void modifyEducationStatus(Education education) {
		ResumeDao.modifyEducationStatus(education);
		
	}



}

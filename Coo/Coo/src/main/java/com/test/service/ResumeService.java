package com.test.service;

import com.test.entity.CheckResume;
import com.test.entity.Demo;
import com.test.entity.Education;
import com.test.entity.Except;
import com.test.entity.Experience;
import com.test.entity.Ext;
import com.test.entity.Hire;
import com.test.entity.HireAndResume;
import com.test.entity.User;

public interface ResumeService {

	void updateUserInfo(Demo demo);

	Demo selectById(Long bUserId);

	Demo selectByUserName(String username);

	Ext selectExtById(Long userId);


	Ext selectByExtId(Integer except_id);

	void updateExtInfo(Ext ext);

	Integer selelectByUsername(String username);
	public String selectCompanyName(Integer post_id);
	 public void insertHire(Hire hire);
	 public void modifyUserInfor(User user);
	 public void modifyExperience(Experience experience);
	 public void modifyEducation(Education education);

	CheckResume selectHireAndResume(String username_demoid);
	public void modifyEducationStatus(Education education);
}

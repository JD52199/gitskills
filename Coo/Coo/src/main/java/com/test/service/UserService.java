package com.test.service;

import java.util.List;
import java.util.Set;

import com.test.entity.Education;
import com.test.entity.Experience;
import com.test.entity.HireAndResume;
import com.test.entity.Navigation;
import com.test.entity.Note2;
import com.test.entity.User;

public interface UserService {
	void addUser(User user,Long...roleIds);
	void deleteUser(Long userId);
	void deleteMoreUsers(Long...userIds);
	User getUserByUserName(String userName);
	List<User> getAllUsers();
	
	void updateUserRoles(Long userId,Long...roleIds);
	
	Set<String> findRolesByUserName(String userName);
	Set<String> findPermissionsByUserName(String userName);
	
	List<Navigation> getNavigationBar(String userName);
	int selectFlag(String userName);
	public void modifyPwd(User user);
	public List<User> selectUsers();
	public void updateUserStatus(User user);
	public String findImgUrl(String username);
	public User selectUser(String userName);
	public Experience selectExperience(String userName);
	public Education selectEducation(String userName);
	public List<Education> selectListEducation();
	public List<Note2> selectNote();
	public Note2 selectDetailNote(Integer note_id);
	public void insertNote(Note2 note2);
	public List<HireAndResume> selectResume(String userName);
}

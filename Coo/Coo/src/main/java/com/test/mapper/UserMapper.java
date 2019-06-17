package com.test.mapper;

import java.util.List;

import com.test.entity.Education;
import com.test.entity.Experience;
import com.test.entity.HireAndResume;
import com.test.entity.Note2;
import com.test.entity.User;
import com.test.entity.UserRole;

public interface UserMapper {
	void addUser(User user);
	void deleteUser(Long userId);
	User findUserByUserName(String userName);
	List<User> findAllUsers();
	
	void deleteUserRole(Long userId);
	void addUserRole(UserRole userRole);
	
	List<String> findRolesByUserName(String userName);
	List<String> findPermissionsByUserName(String userName);
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

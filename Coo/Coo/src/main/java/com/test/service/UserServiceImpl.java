package com.test.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.entity.Education;
import com.test.entity.Experience;
import com.test.entity.HireAndResume;
import com.test.entity.Navigation;
import com.test.entity.Note2;
import com.test.entity.Role;
import com.test.entity.User;
import com.test.entity.UserRole;
import com.test.mapper.PermissionMapper;
import com.test.mapper.RoleMapper;
import com.test.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private PermissionMapper permissionMapper;
	@Autowired
	private PasswordService passwordService;

	
	public void addUser(User user, Long... roleIds) {
		passwordService.encryptPassword(user);
		userMapper.addUser(user);
		if(roleIds!=null&&roleIds.length>0){
			for(Long roleId:roleIds){
				userMapper.addUserRole(new UserRole(user.getUserId(),roleId));
			}
		}
	}

	
	public void deleteUser(Long userId) {
		userMapper.deleteUserRole(userId);
		userMapper.deleteUser(userId);
	}

	
	public void deleteMoreUsers(Long... userIds) {
		if(userIds!=null&&userIds.length>0){
			for(Long userId:userIds){
				deleteUser(userId);
			}
		}
	}

	
	public User getUserByUserName(String userName) {
		return userMapper.findUserByUserName(userName);
	}

	
	public List<User> getAllUsers() {
		return userMapper.findAllUsers();
	}

	
	public void updateUserRoles(Long userId, Long... roleIds) {
		userMapper.deleteUserRole(userId);
		if(roleIds!=null&&roleIds.length>0){
			for(Long roleId:roleIds){
				userMapper.addUserRole(new UserRole(userId,roleId));
			}
		}
	}

	
	public Set<String> findRolesByUserName(String userName) {
		return new HashSet<String>(userMapper.findRolesByUserName(userName));
	}

	
	public Set<String> findPermissionsByUserName(String userName) {
		return new HashSet<String>(userMapper.findPermissionsByUserName(userName));
	}

	
	public List<Navigation> getNavigationBar(String userName) {
		List<Navigation> navigationBar=new ArrayList<Navigation>();
		Navigation navigation;
		List<Role> roles=roleMapper.findRolesByUserName(userName);
		for(Role role:roles){
			navigation=new Navigation();
			navigation.setNavigationName(role.getRoleDesc());
			navigation.setChildNavigations(
					permissionMapper.findNavisByRoleId(role.getRoleId()));
			navigationBar.add(navigation);
		}
		return navigationBar;
	}


	@Override
	public int selectFlag(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectFlag(userName);
	}


	@Override
	public void modifyPwd(User user) {
	 userMapper.modifyPwd(user);
		
	}


	@Override
	public List<User> selectUsers() {
		// TODO Auto-generated method stub
		return userMapper.selectUsers();
	}


	@Override
	public void updateUserStatus(User user) {
		userMapper.updateUserStatus(user);
		
	}


	@Override
	public String findImgUrl(String username) {
		// TODO Auto-generated method stub
		return userMapper.findImgUrl(username);
	}


	@Override
	public User selectUser(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectUser(userName);
	}


	@Override
	public Experience selectExperience(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectExperience(userName);
	}


	@Override
	public Education selectEducation(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectEducation(userName);
	}


	@Override
	public List<Education> selectListEducation() {
		// TODO Auto-generated method stub
		return userMapper.selectListEducation();
	}


	@Override
	public List<Note2> selectNote() {
		// TODO Auto-generated method stub
		return userMapper.selectNote();
	}


	@Override
	public Note2 selectDetailNote(Integer note_id) {
		// TODO Auto-generated method stub
		return userMapper.selectDetailNote(note_id);
	}


	@Override
	public void insertNote(Note2 note2) {
		// TODO Auto-generated method stub
		userMapper.insertNote(note2);
		
	}


	@Override
	public List<HireAndResume> selectResume(String userName) {
		// TODO Auto-generated method stub
		return userMapper.selectResume(userName);
	}







}

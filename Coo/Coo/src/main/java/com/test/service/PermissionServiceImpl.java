package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.entity.Permission;
import com.test.mapper.PermissionMapper;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionMapper permissionMapper;
	
	
	public Long addPermission(Permission permission) {
		permissionMapper.addPermission(permission);
		return permission.getPermissionId();
	}

	
	public void deletePermission(Long permissionId) {
		permissionMapper.deleteRolePermission(permissionId);
		permissionMapper.deletePermission(permissionId);
	}

	
	public void deleteMorePermissions(Long... permIds) {
		if(permIds!=null&&permIds.length>0){
			for(Long permId:permIds){
				deletePermission(permId);
			}
		}
	}

	
	public Permission findById(Long permId) {
		return permissionMapper.findById(permId);
	}

	
	public List<Permission> getPermissionsByRoleId(Long roleId) {
		return permissionMapper.findPermissionsByRoleId(roleId);
	}

	
	public List<Permission> getAllPermissions() {
		return permissionMapper.findAllPermissions();
	}

	
	public void updatePermission(Permission permission) {
		permissionMapper.updatePermission(permission);
	}

}

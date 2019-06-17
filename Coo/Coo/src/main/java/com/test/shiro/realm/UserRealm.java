package com.test.shiro.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.test.entity.User;
import com.test.service.UserService;

public class UserRealm extends AuthorizingRealm{
	
	public static String userName2 = null;
	@Autowired
	private UserService userService;
//获取用户角色信息和权限信息，以代后续进行访问控制
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String userName=(String)principals.getPrimaryPrincipal();
		
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(userService.findPermissionsByUserName(userName));
		authorizationInfo.setStringPermissions(userService.findPermissionsByUserName(userName));
		
		return authorizationInfo;
	}
	//获取用户凭证（密码）
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userName=(String)token.getPrincipal();
		User user=userService.getUserByUserName(userName);
		
		setUsername(userName);
		if(user==null){
			throw new UnknownAccountException();
		}
		System.out.println(user.getUserName()+user.getPassword());
		SimpleAuthenticationInfo authenticationInfo=new SimpleAuthenticationInfo(
				user.getUserName(),
				user.getPassword(),
				ByteSource.Util.bytes(user.getUserName()+user.getPasswordSalt()),
				getName());
		return authenticationInfo;
	}
	
	public static String getUsername() {
		
		return userName2;
	}
	
	public static void setUsername(String userName) {
		userName2 = userName;
	}

}

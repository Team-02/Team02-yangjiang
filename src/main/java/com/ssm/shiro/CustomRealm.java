package com.ssm.shiro;

import com.ssm.domain.Staff;
import com.ssm.service.StaffService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import javax.annotation.Resource;
import java.util.Set;

/**
 * Created by dllo on 18/3/8.
 */
public class CustomRealm extends AuthorizingRealm {

    /**
     * 提供数据库用户,角色,权限查询的业务对象
     */
    @Resource
    private StaffService staffService;

    /**
     * 授权,即给当前用户添加某些角色或者权限
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        /*获取认证通过的当前用户对象的用户名*/
        String staffName = (String) principals.getPrimaryPrincipal();
        /*根据用户名查询角色列表*/
        Set<String> roles = staffService.getRoles(staffName);
         /*根据用户名查询权限列表*/
        Set<String> permissions = staffService.getPermissions(staffName);
         /*构建授权信息对象*/
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
         /*给授权器添加角色和权限*/
        info.setRoles(roles);
        info.setStringPermissions(permissions);
        return info;
    }

    /**
     * 认证,即对某个用户名进行身份认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
         /*获取进行认证的用户名*/
        String staffLoginName = (String) token.getPrincipal();
         /*根据用户名查找用户*/
        Staff staff = staffService.selectByStaffLoginName(staffLoginName);
        /*如果能查到则返回一个认证对象,否则返回null*/
        if (staff != null){
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(staff.getLoginName(),staff.getPassword(),getName());
            return info;
        }else {
            return null;
        }
    }
}

package com.test.service;

import java.util.List;

import com.itheima.common.utils.Page;
import com.test.entity.Post;
import com.test.entity.PostAndCompany;




public interface PostService {


	public Page<PostAndCompany> selectPostByType(String post_type,int p,int rows); //职位类型查

	public List<PostAndCompany> selectPostLike(Post post);

	public PostAndCompany selectPostById(Integer post_id);
	public List<Post> selectPostList();
 	public void modifyPostStatus(Post post);
 	public Integer selectPostCount(Post post);
	public Page<PostAndCompany> selectPostByRecType(String k, int p, int rows);

	public Page<PostAndCompany> selectPostBySearch(String k, int p, int rows);
}

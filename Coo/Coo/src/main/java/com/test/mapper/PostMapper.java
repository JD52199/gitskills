package com.test.mapper;

import java.util.List;

import com.test.entity.Post;
import com.test.entity.PostAndCompany;




public interface PostMapper {

	
	public List<PostAndCompany> selectPostByType(String post_type);

	public List<PostAndCompany> selectPostLike(Post post);

	public PostAndCompany selectPostById(Integer post_id);
	public List<Post> selectPostList();
 	public void modifyPostStatus(Post post);


	public List<PostAndCompany> showAllPost(Post post);

	public Integer selectPostListCount(Post post);

	public Integer selectPostCount(Post post);
	public List<PostAndCompany> showAllRecPost(Post post);

	public List<PostAndCompany> showAllSearchPost(Post post);

}

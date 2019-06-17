package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.common.utils.Page;
import com.test.entity.Post;
import com.test.entity.PostAndCompany;
import com.test.mapper.PostMapper;

@Service 
@Transactional
public class PostServiceImpl implements PostService{

	@Autowired
	private PostMapper postDao;
	

//	@Override
//	public List<PostAndCompany> selectPostByType(String post_type) {
//		return postDao.selectPostByType(post_type);
//		
//	}


	@Override
	public List<PostAndCompany> selectPostLike(Post post) {
		
		return postDao.selectPostLike(post);
	}


	@Override
	public PostAndCompany selectPostById(Integer post_id) {
		// TODO Auto-generated method stub
		return postDao.selectPostById(post_id);
	}


	@Override
	public List<Post> selectPostList() {
		// TODO Auto-generated method stub
		return postDao.selectPostList();
	}


	@Override
	public void modifyPostStatus(Post post) {
		postDao.modifyPostStatus(post);
	}

//根据职位类型查询
	@Override
	public Page<PostAndCompany> selectPostByType(String post_type, int p, int rows) {	
		Post post=new Post();
		//当前页
		post.setStart((p-1)*rows);
		//每页数
		post.setRows(rows);
		post.setPost_type(post_type);
		post.setStatus(1);
		System.out.println("hlll");
		
		List<PostAndCompany> postAndCompanyList=postDao.showAllPost(post);
		for (PostAndCompany postAndcompany : postAndCompanyList) {
			System.out.println(postAndcompany+"hello");
		}
	//查出职位类型数量
		Integer count=postDao.selectPostListCount(post);
		Page<PostAndCompany> result=new Page<PostAndCompany>();
		result.setPage(p);//1
		result.setRows(postAndCompanyList);
		result.setSize(rows);
		result.setTotal(count);
		return result;
		
		
	}

	@Override
	public Page<PostAndCompany> selectPostByRecType(String k, int p, int rows) {
		Post post=new Post();
		post.setStart((p-1)*rows);
		post.setRows(rows);
		post.setRecruit_type(k);
		post.setStatus(1);
		
		List<PostAndCompany> postAndCompanyList=postDao.showAllRecPost(post);
//		for (PostAndCompany postAndcompany : postAndCompanyList) {
//			System.out.println(postAndcompany+"hello");
//		}
		System.out.println(post);
		
		//Integer count=postDao.selectPostListCount();
		Integer count=postDao.selectPostCount(post);
		System.out.println(count+"sssdsdsd");
		Page<PostAndCompany> result=new Page<PostAndCompany>();
		result.setPage(p);//1
		result.setRows(postAndCompanyList);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}


	@Override
	public Page<PostAndCompany> selectPostBySearch(String k, int p, int rows) {
		System.out.println(k);
		System.out.println(p);
		Post post=new Post();
		post.setStart((p-1)*rows);
		post.setRows(rows);
		post.setKey(k);
		post.setStatus(1);
//		post.setPost_indenty(k);
		
		List<PostAndCompany> postAndCompanyList=postDao.showAllSearchPost(post);
		
		for (PostAndCompany postAndcompany : postAndCompanyList) {
			System.out.println(postAndcompany+"hhhhhhhhh");
		}
		Integer count=postDao.selectPostListCount(post);
		Page<PostAndCompany> result=new Page<PostAndCompany>();
		result.setPage(p);//1
		result.setRows(postAndCompanyList);
		result.setSize(rows);
		result.setTotal(count);
		return result;
		
	}


	@Override
	public Integer selectPostCount(Post post) {
		// TODO Auto-generated method stub
		return postDao.selectPostCount(post);
	}
	

}

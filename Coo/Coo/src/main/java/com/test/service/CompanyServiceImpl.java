package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.entity.Comment2;
import com.test.entity.Company;
import com.test.entity.Company2;
import com.test.entity.Hire;
import com.test.entity.HireAndResume;
import com.test.entity.Note2;
import com.test.entity.Post;
import com.test.entity.User;
import com.test.mapper.CompanyMapper;

@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper companyMapper;
	
	@Override
	public List<Post> selectPostList(String company_name) {
		// TODO Auto-generated method stub
		return companyMapper.selectPostList(company_name);
	}

	@Override
	public Post selectPostDetailById(int post_id) {
		// TODO Auto-generated method stub
		return companyMapper.selectPostDetailById(post_id);
	}

	@Override
	public void updatePostInfo(Post post) {
		// TODO Auto-generated method stub
		companyMapper.updatePostInfo(post);
	}

	@Override
	public void deletePostInfoById(Integer post_id) {
		// TODO Auto-generated method stub
		companyMapper.deletePostInfoById(post_id);
	}

	@Override
	public void addPostInfo(Post post) {
		// TODO Auto-generated method stub
		companyMapper.addPostInfo(post);
	}
	@Override
	public void ModifyCompanyProfile(Company2 company2) {
		companyMapper.ModifyCompanyProfile(company2);
		
	}

	@Override
	public Company2 selectCompanyProfile(String  company_name) {
		 
		return companyMapper.selectCompanyProfile(company_name);
	}

	@Override
	public void modifyCompanyPwd(User user) {
		companyMapper.modifyCompanyPwd(user);
		
	}

	@Override
	public String selectPwd(String company_name) {
		// TODO Auto-generated method stub
		return companyMapper.selectPwd(company_name);
	}

	@Override
	public List<Note2> selectNote() {
		 
		return companyMapper.selectNote();
	}

	@Override
	public Note2 selectDetailNote(Integer note_id) {
		 
		return companyMapper.selectDetailNote(note_id);
	}

	@Override
	public void insertNote(Note2 note2) {
		companyMapper.insertNote(note2);
		
	}

	@Override
	public void insertComment(Comment2 comment2) {
	    companyMapper.insertComment(comment2);
		
	}

	@Override
	public List<Comment2> showComment(Integer note_id) {
		// TODO Auto-generated method stub
		return companyMapper.showComment(note_id);
	}

	@Override
	public List<Company2> showCompanyList() {
		// TODO Auto-generated method stub
		return companyMapper.showCompanyList();
	}

	@Override
	public void modifyCompanyStatus(Company2 company2) {
		// TODO Auto-generated method stub
		companyMapper.modifyCompanyStatus(company2);
		
	}

	@Override
	public void insertImg(User user) {
		companyMapper.insertImg(user);
		
	}

	@Override
	public List<Note2> selectImg(String note_author) {
		// TODO Auto-generated method stub
		return companyMapper.selectImg(note_author);
	}

	@Override
	public List<HireAndResume> selectHireAndResume(String company_name) {
		// TODO Auto-generated method stub
		return companyMapper.selectHireAndResume(company_name);
	}

	@Override
	public Company2 companyIsexists(String userName) {
		// TODO Auto-generated method stub
		return companyMapper.companyIsexists(userName);
	}

	@Override
	public void insertCompanyProfile(Company2 company2) {
		// TODO Auto-generated method stub
		companyMapper.insertCompanyProfile(company2);
		
	}

	@Override
	public void modifyResume(Hire hire) {
		companyMapper.modifyResume(hire);
		
	}

	@Override
	public String selectByHireId(String hire_id) {
		// TODO Auto-generated method stub
		return companyMapper.selectByHireId(hire_id);
	}

	@Override
	public String selectEmailByUsername(String userName) {
		// TODO Auto-generated method stub
		return companyMapper.selectEmailByUsername(userName);
	}

	@Override
	public String selectStatusByHireId(String hire_id) {
		// TODO Auto-generated method stub
		return companyMapper.selectStatusByHireId(hire_id);
	}

}

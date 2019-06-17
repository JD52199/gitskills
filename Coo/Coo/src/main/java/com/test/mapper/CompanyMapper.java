package com.test.mapper;

import java.util.List;

import com.test.entity.Comment2;
import com.test.entity.Company2;
import com.test.entity.Hire;
import com.test.entity.HireAndResume;
import com.test.entity.Note2;
import com.test.entity.Post;
import com.test.entity.User;

public interface CompanyMapper {

	List<Post> selectPostList(String company_name);

	Post selectPostDetailById(int post_id);

	void updatePostInfo(Post post);

	void deletePostInfoById(Integer post_id);

	void addPostInfo(Post post);
	public void ModifyCompanyProfile(Company2 company2);
	public Company2 selectCompanyProfile(String company_name);
	public void modifyCompanyPwd(User user);
	public String selectPwd(String company_name);
	public List<Note2> selectNote();
	public Note2 selectDetailNote(Integer note_id);
	public void insertNote(Note2 note2);
	public void insertComment(Comment2 comment2);
	public List<Comment2> showComment(Integer note_id);
	public List<User> showUser();
	//public void modifyCompanyStatus(User user);
	public List<Company2> showCompanyList();
	public void modifyCompanyStatus(Company2 company2);
	public void insertImg(User user);

	List<Note2> selectImg(String note_author);
	public List<HireAndResume> selectHireAndResume(String company_name );
	//查询公司信息是否存在
	public Company2 companyIsexists(String userName);
	public void insertCompanyProfile(Company2 company2);
	public void modifyResume(Hire hire);

	String selectByHireId(String hire_id);

	String selectEmailByUsername(String userName);

	String selectStatusByHireId(String hire_id);
}

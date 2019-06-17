package com.test.mapper;

import java.util.List;

import com.test.entity.Hire;

public interface HireMapper {

	public void insertHire(Hire hire);
	public List<Hire> selectHires(); 
}

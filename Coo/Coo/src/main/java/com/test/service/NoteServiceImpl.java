package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.entity.Comment2;
import com.test.entity.Company;
import com.test.entity.Company2;
import com.test.entity.Note2;
import com.test.entity.Post;
import com.test.entity.User;
import com.test.mapper.CompanyMapper;
import com.test.mapper.NoteMapper;

@Service
public class NoteServiceImpl implements NoteService {

	@Autowired
	private NoteMapper noteMapper;

	@Override
	public List<Note2> showNotes() {
		
		return noteMapper.showNotes();
	}

	@Override
	public void modifyNoteStatus(Note2 note2) {
		noteMapper.modifyNoteStatus(note2);
		
	}

	@Override
	public Note2 noteDetail(Integer note_id) {
		 
		return noteMapper.noteDetail(note_id);
	}
	
	
}

package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.test.entity.Comment2;
import com.test.entity.Company;
import com.test.entity.Company2;
import com.test.entity.Note2;
import com.test.entity.Post;
import com.test.entity.User;

public interface NoteService {

	public List<Note2> showNotes();
	public Note2 noteDetail(Integer note_id);
	public void modifyNoteStatus(Note2 note2);
}

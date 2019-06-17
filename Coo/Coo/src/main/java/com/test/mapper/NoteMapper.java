package com.test.mapper;

import java.util.List;

import com.test.entity.Note2;

public interface NoteMapper {

	public List<Note2> showNotes();
	public Note2 noteDetail(Integer note_id);
	public void modifyNoteStatus(Note2 note2);
}

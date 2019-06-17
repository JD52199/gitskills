package com.test.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.entity.Note2;
import com.test.service.NoteService;

@Controller
public class NoteController {

	@Autowired
	private NoteService noteService;
	@RequestMapping("/note/listnote")
	public String showNotes(HttpSession session) {
		List<Note2> listnote=noteService.showNotes();
		session.setAttribute("listnote", listnote);
		System.out.println(listnote.toString());
        return "帖子审核";
	}
	@RequestMapping("/note/notes")
	public String toshowNotes(HttpSession session) {
		List<Note2> notes=noteService.showNotes();
		session.setAttribute("notes", notes);
		System.out.println(notes.toString());
        return "求职者论坛";
	}
	@RequestMapping("note/notedetail")
	public String noteDetail(Integer note_id,HttpSession session) {
		Note2 note=noteService.noteDetail(note_id);
		session.setAttribute("note", note);
		System.out.println(note.toString());
		return "求职者论坛详情";
	}
	@RequestMapping("/note/tomodifynotestatus")
	public String toModifyNoteStatus(HttpSession session,Integer note_id) {
		System.out.println("note_id");
		session.setAttribute("note_id", note_id);
		return "帖子状态修改";
	}
	@RequestMapping("/note/modifynotestatus")
	public String modifyNoteStatus(HttpServletRequest req,Integer note_id) {
		Integer status=Integer.parseInt(req.getParameter("status"));
		Note2 note2=new Note2();
		note2.setNote_id(note_id);
		note2.setStatus(status);
		noteService.modifyNoteStatus(note2);
		System.out.println("状态修改成功");
		return "redirect:/note/listnote";
	}
}

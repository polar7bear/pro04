package com.myshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myshop.dto.NoticeDTO;
import com.myshop.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("list.do")
	public String getNoticeList(Model model) throws Exception {
		List<NoticeDTO> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/noticeList";
	}
	
	@GetMapping("detail.do")
	public String noticeDetail(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		NoticeDTO notice = noticeService.noticeDetail(no);
		noticeService.countUp(no);
		noticeService.noticeDetail(no);
		model.addAttribute("notice", notice);
		return "notice/noticeDetail";
	}
	
	@GetMapping("insert.do")
	public String noticeInsert() {
		return "notice/noticeInsert";
	}
	
	@PostMapping("insert.do")
	public String noticeInsertPro(HttpServletRequest request) throws Exception {
		NoticeDTO dto = new NoticeDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setAuthor("admin");
		noticeService.noticeInsert(dto);
		return "redirect:list.do";
	}
	
	
}

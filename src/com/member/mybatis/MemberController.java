package com.member.mybatis;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.member.dto.MemberDTO;
import com.member.idao.IMemberDAO;

@Controller
public class MemberController
{
	@Autowired
	private SqlSession sqlSession;

	@RequestMapping(value = "/list.action", method = RequestMethod.GET)
	public String list(Model model)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		// 직원 리스트
		model.addAttribute("list", dao.list());

		return "/WEB-INF/view/MemberList.jsp";
	}

	@RequestMapping(value = "/insertform.action", method = RequestMethod.GET)
	public String insertForm(Model model)
	{
		return "/WEB-INF/view/MemberInsertForm.jsp";
	}
	
	@RequestMapping(value = "/insert.action", method = RequestMethod.POST)
	public String insert(Model model, MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.add(m);

		return "redirect:list.action";
	}
	
	@RequestMapping(value = "/updateform.action", method = RequestMethod.GET)
	public String updateform(Model model, String mid)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		model.addAttribute("member", dao.searchMid(mid));
		
		return "/WEB-INF/view/MemberUpdateForm.jsp";
	}
	
	@RequestMapping(value = "/update.action", method = RequestMethod.POST)
	public String update(Model model, MemberDTO m)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.modify(m);
		
		return "redirect:list.action";
	}
	
	@RequestMapping(value = "/delete.action", method = RequestMethod.GET)
	public String delete(Model model, String mid)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);
		
		dao.delete(mid);
		
		return "redirect:list.action";
	}
	
	@RequestMapping(value = "/search.action", method = RequestMethod.POST)
	public String search(Model model, String searchType, String searchWord)
	{
		IMemberDAO dao = sqlSession.getMapper(IMemberDAO.class);

		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		switch (searchType)
		{
			case "mid":			list.add(dao.searchMid(searchWord)); break;
			case "position":	list = dao.searchPosition(searchWord); break;
			case "name": 		list = dao.searchName(searchWord); break;
			case "tel": 		list = dao.searchTel(searchWord); break;
			case "email":		list = dao.searchEmail(searchWord); break;
		}
		
		model.addAttribute("list", list);
		
		return "/WEB-INF/view/MemberList.jsp";
	}
	
}
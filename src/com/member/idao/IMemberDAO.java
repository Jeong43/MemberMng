package com.member.idao;

import java.util.ArrayList;

import com.member.dto.MemberDTO;

public interface IMemberDAO
{
	// 직원 등록 메소드
	public int add(MemberDTO m);

	// 직원 리스트 출력 메소드
	public ArrayList<MemberDTO> list();

	// 직원 검색 메소드
	public MemberDTO searchMid(String mid);
	public ArrayList<MemberDTO> searchPosition(String position);
	public ArrayList<MemberDTO> searchName(String name);
	public ArrayList<MemberDTO> searchTel(String tel);
	public ArrayList<MemberDTO> searchEmail(String email);

	// 직원 정보 수정 메소드
	public int modify(MemberDTO m);

	// 직원 정보 삭제 메소드
	public int delete(String mid);
}

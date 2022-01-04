package com.member.dto;

public class MemberDTO
{
	// 주요 변수 선언
	private String mid, name, position, tel, email;
	private String beforeMid;	//-- 값 수정 시 사용할... 수정 전 mid

	// getter, setter
	public String getMid()
	{
		return mid;
	}

	public void setMid(String mid)
	{
		this.mid = mid;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getPosition()
	{
		return position;
	}

	public void setPosition(String position)
	{
		this.position = position;
	}

	public String getTel()
	{
		return tel;
	}

	public void setTel(String tel)
	{
		this.tel = tel;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getBeforeMid()
	{
		return beforeMid;
	}

	public void setBeforeMid(String beforeMid)
	{
		this.beforeMid = beforeMid;
	}
}

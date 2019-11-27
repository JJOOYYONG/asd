package com.wwm.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.wwm.domain.MemberVO;

public interface MemberMapper {
	
	public int insertMember(MemberVO memberVO);
	
	@Select("SELECT passwd FROM jspdb.zmember WHERE email = #{id}")
	public int userCheck(@Param("id") String id, @Param("passwd") String passwd);
		
	@Select("SELECT passwd FROM jspdb.zmember WHERE email = #{email}")
	public int userCheckByEmail(@Param("email") String email,  @Param("passwd") String passwd);
		
	@Select("SELECT COUNT(*) FROM jspdb.zmember WHERE id = #{id}")
	public int countMember(String id);
	
	@Select("Select count(*) FROM jspdb.zmember")
	public int countMemberAll();
	
	@Select("SELECT * FROM jspdb.zmember WHERE id = #{id}")
	public MemberVO getMember(String id);
		
	@Select("SELECT * FROM jspdb.zmember WHERE email = #{email}")
	public MemberVO getMemberByEmail(String email);
	
	@Select("SELECT * FROM jspdb.zmember WHERE num = #{num}")
	public MemberVO getMemberByNum(int num);
	
	public int updateMember(MemberVO memberVO);
	

	
}

package com.example.app.domain.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.app.domain.dto.UserDto;

@Mapper
public interface UserMapper {
	
	@Insert(value = "insert into user_tbl values(#{email},#{name},#{nickname},#{password},#{role})")
	public int insert(UserDto userDto);
	
	@Select(value = "select * from user_tbl where email = #{email}")
	public UserDto selectAt(String username);
	
	@Delete(value = "delete from user_tbl where email = #{email}")
	public int delete(String email);
	
	@Update(value = "update user_tbl set name=#{name}, nickname=#{nickname} where email = #{email}")
	public int update(UserDto userDto);
}



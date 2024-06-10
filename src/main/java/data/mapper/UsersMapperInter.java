package data.mapper;

import java.util.List;
import data.dto.UsersDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import data.dto.UsersDto;

@Mapper
public interface UsersMapperInter {
    void insertUser(UsersDto dto);

    @Select("SELECT * FROM Users WHERE username = #{username} AND password = #{password}")
    UsersDto getUserByUsername(@Param("username") String username, @Param("password") String password);

    @Select("SELECT userId FROM Users WHERE username = #{username}")
    UsersDto getUserId(@Param("username") String username);
}

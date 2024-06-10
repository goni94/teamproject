package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.AccountsDto;
import data.dto.UsersDto;
import data.mapper.UsersMapperInter;

@Service
public class UsersService {

    @Autowired
    private UsersMapperInter usersMapper;

    public boolean isLoginCheck(String username, String password) {
        UsersDto user = usersMapper.getUserByUsername(username, password);
        return user != null;
    }

    public UsersDto getUserByUsername(String username,String password) {
        return usersMapper.getUserByUsername(username, password);
    }
    public UsersDto getUserId(String username) {
    	return usersMapper.getUserId(username);
    }
   
}

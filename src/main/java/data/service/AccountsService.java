package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.AccountsDto;
import data.mapper.AccountsMapperInter;

@Service
public class AccountsService {
    
    @Autowired
    private AccountsMapperInter accountsMapper;
    
    public void insertAccount(AccountsDto dto) {
        accountsMapper.insertAccount(dto);
    }
    
    public AccountsDto getAccountById(int userid) {
        return accountsMapper.getAccountById(userid);
    }
    
    public int getAccountId(int userid) {
    	System.out.println("Service USERID="+userid);
    	return accountsMapper.getAccountId(userid);
    }
    
    public String getAccountNum(int AccountID){
    	return accountsMapper.getAccountNum(AccountID);
    }
    
    public List<AccountsDto> getAllAccounts() {
        return accountsMapper.getAllAccounts();
    }
    
    public void updateAccount(double balance,int userid) {
    	System.out.println(balance+"SERVICE"+userid);
        accountsMapper.updateAccount(balance, userid);
    }
    public double getAccountBalance(int accountId) {
    	return accountsMapper.getAccountBalance(accountId);
    }

}

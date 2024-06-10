package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.AccountsDto;

@Mapper
public interface AccountsMapperInter {
	
    public void insertAccount(AccountsDto dto);
    AccountsDto getAccountById(int userid);
    public int getAccountId(int userid);
    List<AccountsDto> getAllAccounts();
	public String getAccountNum(int accountid);
	public void updateAccount(double balance, int userid) ;
	double getAccountBalance(int accountId);
}

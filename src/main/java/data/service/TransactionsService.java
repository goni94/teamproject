package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.TransactionsDto;
import data.mapper.TransactionsMapperInter;

@Service
public class TransactionsService {
    
    @Autowired
    private TransactionsMapperInter transactionsMapper;
    
    public void insertTransaction(TransactionsDto dto) {
        transactionsMapper.insertTransaction(dto);
    }
    
 


	public List<TransactionsDto> getTransactionsById(int accountId) {
		
		 return transactionsMapper.getTransactionsById(accountId);
	}
    
    
}

package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.TransactionsDto;
import data.dto.UsersDto;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.TransactionsDto;

@Mapper
public interface TransactionsMapperInter {
    void insertTransaction(TransactionsDto dto);
    TransactionsDto getTransactionById(int id);
    List<TransactionsDto> getTransactionsById(int accountId);
}

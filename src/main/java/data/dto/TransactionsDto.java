package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Alias("TransactionsDto")
public class TransactionsDto {
    private int transaction_num;
    private int account_id;
    private String transaction_type;
    private long recieving_account;
    private String bank_type;
    private double amount;
    private double balance;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "Asia/Seoul")
    private Timestamp transactionDate;
}

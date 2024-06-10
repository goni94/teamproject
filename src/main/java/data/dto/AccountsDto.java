package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
public class AccountsDto {
    private int account_id;
    private int user_id;
    private String account_number;
    private String account_type;
    private double balance;
}
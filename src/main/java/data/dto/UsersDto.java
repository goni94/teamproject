package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@Alias("UserDto")
public class UsersDto {
    private int user_id;
    private String username;
    private String password;
    private String full_Name;
    private String email;
    private String phone_number;
    private String address;
}
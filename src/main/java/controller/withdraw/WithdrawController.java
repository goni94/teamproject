package controller.withdraw;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import data.dto.AccountsDto;
import data.dto.TransactionsDto;
import data.service.AccountsService;
import data.service.TransactionsService;

@Controller
public class WithdrawController {

	@Autowired
	private AccountsService accountService;

	@Autowired
	private TransactionsService transactionService;

	@GetMapping("/withdraw/sleep")
	public String goSleep() {
		return "withdraw/sleep";
	}

	@GetMapping("/withdraw/withdraw")
	public String goWithdraw() {
		return "withdraw/withdraw";
	}

	@PostMapping("/withdraw/withdraw1")
	public String deposit(@RequestParam("amount") double amount, RedirectAttributes redirectAttributes,
			HttpSession session) {

		Integer userId = (Integer) session.getAttribute("userid");
		System.out.println(userId);
		
		  if (userId == null) { redirectAttributes.addFlashAttribute("message",
		  "User not logged in");
		  System.out.println("USerNOTLOGIN:"+ userId);
		  return "redirect:./error"; }
		
		  
		  AccountsDto account = accountService.getAccountById(userId); 
		  
		  if (account ==null) { redirectAttributes.addFlashAttribute("message", "not found");
		  System.out.println("NOTFOUND");
		  return "redirect:./error";  }
		  
		  if (amount <= 0) { redirectAttributes.addFlashAttribute("message",
		 "Invalid deposit amount");  System.out.println("INVALID");
		 return "redirect:./error"; }
		 
		 // Update the account balance 
		  String accountname=account.getAccount_number();
		  System.out.println(accountname);
		  double b=account.getBalance();
		  System.out.println("Balance"+b);
		  account.setBalance(account.getBalance() -
		  amount); 
		  
		  double c=account.getBalance();
		  System.out.println(userId);
		  accountService.updateAccount(c,userId);
		  
		  System.out.println(account);
		 ;
		  System.out.println("Balance"+c);
		  
		 // Create a transaction record 
		  TransactionsDto transaction = TransactionsDto.builder()
			        .account_id(account.getAccount_id())
			        .amount(amount)
			        .balance(account.getBalance())
			        .transaction_type("withdraw")
			        .recieving_account(account.getAccount_id())  // Include the receiving account
			        .bank_type("bitbank")
			        .transactionDate(new Timestamp(System.currentTimeMillis()))
			        .build();

		  System.out.println(transaction);
		  transactionService.insertTransaction(transaction);
		  
		  // Add success message to redirect attributes
		 redirectAttributes.addFlashAttribute("message", "Deposit successful");
		 
		return "redirect:./pending";
	}

	@GetMapping("/withdraw/success")
	public String withdraSuccess() {
		return "withdraw/success";
	}

	@GetMapping("/withdraw/error")
	public String withdrawError() {
		return "withdraw/error";
	}
	@GetMapping("/login/login")
	public String logout() {
		return "login/login";
	}
	@GetMapping("/withdraw/pending")
	public String pending() {
		return "withdraw/pending";
	}
}

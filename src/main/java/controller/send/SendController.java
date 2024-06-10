package controller.send;

import java.sql.Timestamp;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import data.dto.AccountsDto;
import data.dto.TransactionsDto;
import data.service.AccountsService;
import data.service.TransactionsService;

@Controller
public class SendController {

    @Autowired
    private AccountsService accountService;

    @Autowired
    private TransactionsService transactionService;
    
    // Endpoint to save bank name
    @PostMapping("/send/saveBank")
    @ResponseBody
    public String saveBankName(@RequestParam String bankName, HttpSession session) {
        session.setAttribute("selectedBank", bankName);
        System.out.println("bankName: " + bankName);
        return "{\"status\":\"success\", \"bank\":\"" + bankName + "\"}";
    }
    
    @GetMapping("/send/sleep")
    public String go2Sleep() {
        return "send/sleep";
    }

    @GetMapping("/send/send")
    public String goSend() {
        return "send/send";
    }
    
    @GetMapping("/send/success")
    public String goSuccess() {
    	return "send/success";
    }

    @PostMapping("/send/send1")
    public String deposit(@RequestParam("amount") double amount, 
                          @RequestParam("account") String rc, 
                          RedirectAttributes redirectAttributes,
                          HttpSession session) {
    	System.out.println(session.getAttribute("selectedBank"));
        String bankName = (String) session.getAttribute("selectedBank");
        Integer userId = (Integer) session.getAttribute("userid");
        long accountRE = Long.parseLong(rc); // Use long for large numbers

        if (userId == null) {
            redirectAttributes.addFlashAttribute("message", "User not logged in");
            System.out.println("User NOT LOGIN: " + userId);
            return "redirect:./error";
        }

        AccountsDto account = accountService.getAccountById(userId);
        int aId = accountService.getAccountId(userId);
        String aNum = accountService.getAccountNum(aId);
        long accountNumber = Long.parseLong(aNum); // Use long for large numbers

        if (account == null) {
            redirectAttributes.addFlashAttribute("message", "Account not found");
            System.out.println("Account NOT FOUND");
            return "redirect:./error";
        }

        if (amount <= 0) {
            redirectAttributes.addFlashAttribute("message", "Invalid deposit amount");
            System.out.println("INVALID AMOUNT");
            return "redirect:./error";
        }

        // Update the account balance
        double currentBalance = account.getBalance();
        System.out.println("Current Balance: " + currentBalance);
        account.setBalance(currentBalance - amount);
        double newBalance = account.getBalance();
        accountService.updateAccount(newBalance, userId);
        System.out.println("New Balance: " + newBalance);
        System.out.println(bankName);
        // Create a transaction record
        TransactionsDto transaction = TransactionsDto.builder()
                .account_id(account.getAccount_id())
                .amount(amount)
                .transaction_type("transfer")
                .recieving_account(accountRE)
                .bank_type(bankName)
                .transactionDate(new Timestamp(System.currentTimeMillis()))
                .build();

        transactionService.insertTransaction(transaction);

        // Add success message to redirect attributes
        redirectAttributes.addFlashAttribute("message", "Transfer successful");
        return "redirect:./pending";
    }
    @GetMapping("/send/error")
    public String sendError() {
        return "send/error";
    }
    
    @GetMapping("/menu/visit")
    public String goVisit() { 
    	return "menu/visit";
    }
    
    @GetMapping("/menu/bank")
    public String goBank() {
    	return "menu/bank";
    }
    @GetMapping("/send/pending")
	public String pending() {
		return "send/pending";
	}
}

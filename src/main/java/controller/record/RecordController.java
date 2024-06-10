package controller.record;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.TransactionsDto;
import data.service.TransactionsService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RecordController {

    @Autowired
    private TransactionsService transactionService;



    @GetMapping("/record/sleep")
    public String go2Sleep() {
        return "record/sleep";
    }

    @GetMapping("/record/record")
    public String getTransactionsByAccountId(HttpSession session, Model model) {
        Integer accountId = (Integer) session.getAttribute("accountId");
        System.out.println(accountId);
        if (accountId != null) {
            List<TransactionsDto> transactions = transactionService.getTransactionsById(accountId);
            model.addAttribute("transactions", transactions);
            return "record/record";
        } else {
            return "redirect:/users/login"; // Redirect to login if accountId is not found
        }
    }
    @GetMapping("/record/pending")
	public String pending() {
		return "record/pending";
	}
}

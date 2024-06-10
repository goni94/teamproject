package controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.service.UsersService;
import data.service.AccountsService;
import data.dto.AccountsDto;
import data.dto.UsersDto;

@Controller
public class LoginController {

    @Autowired
    private UsersService usersService;

    @Autowired
    private AccountsService accountsService;

    @GetMapping("/users/login")
    public String isLogin(
            @RequestParam(defaultValue = "no") String saveid,
            @RequestParam String username,
            @RequestParam String password,
            HttpSession session,
            Model model) {

        String direction;
        boolean loginStatus = usersService.isLoginCheck(username, password);
        UsersDto dto = usersService.getUserByUsername(username, password);

        if (loginStatus) {
            session.setAttribute("userid", dto.getUser_id());
            session.setAttribute("userDto", dto);
            session.setAttribute("status", "true");

            // Fetch and set accountId and accountBalance in session
            int accountId = accountsService.getAccountId(dto.getUser_id());
            session.setAttribute("accountId", accountId);

            // Fetch account balance
            double accountBalance = accountsService.getAccountBalance(accountId);
            session.setAttribute("accountBalance", accountBalance);
            System.out.println(accountBalance);

            direction = "redirect:/menu/menu";
        } else {
            model.addAttribute("status", "false");
            direction = "redirect:/";
        }

        return direction;
    }

    @GetMapping("/menu/menu")
    public String goMenu(HttpSession session, Model model) {
        UsersDto userDto = (UsersDto) session.getAttribute("userDto");
        if (userDto != null) {
            model.addAttribute("userDto", userDto);
            // Add account balance to the model
            Double accountBalance = (Double) session.getAttribute("accountBalance");
            model.addAttribute("accountBalance", accountBalance);
        }
    
        return "menu/menu";
    }

    @GetMapping("/users/logout")
    public String userLogout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}

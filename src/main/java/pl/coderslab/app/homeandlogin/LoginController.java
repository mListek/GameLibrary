package pl.coderslab.app.homeandlogin;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.app.user.User;
import pl.coderslab.app.user.UserService;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String login,
                        @RequestParam String password,
                        Model model) {
        User user = userService.findUserByLogin(login);
        boolean isLogged = user != null && BCrypt.checkpw(password, user.getPassword());
        if(!isLogged) {
            model.addAttribute("loginFailed", true);
            return "login";
        }
        return "redirect:/user/" + user.getId();
    }
}

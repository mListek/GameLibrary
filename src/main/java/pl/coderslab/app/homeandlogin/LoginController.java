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

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String login() {
        return "login";
    }

    @PostMapping("/")
    public String login(@RequestParam String login,
                        @RequestParam String password,
                        Model model,
                        HttpSession session) {
        User user = userService.findUserByLogin(login);
        boolean isLogged = user != null && BCrypt.checkpw(password, user.getPassword());
        if(!isLogged) {
            model.addAttribute("loginFailed", true);
            return "login";
        }
        if(user.isAdmin()) {
            session.setAttribute("admin", true);
        }
        session.setAttribute("username", user.getUsername());
        return "redirect:/home";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        session.removeAttribute("admin");
        return "redirect:/";
    }
}

package pl.coderslab.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/add")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "user";
    }

    @PostMapping("/add")
    public String addUser(@Valid @ModelAttribute User user, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "user";
        }
        User userAlredyExists = userService.findUserByLogin(user.getLogin());
        if(userAlredyExists != null) {
            model.addAttribute("loginFailed", true);
            return "user";
        }
        userService.saveUser(user);
        return "redirect:../login";
    }

    @GetMapping("/{id}")
    public String userProfile(@PathVariable Long id, Model model){
        User user = userService.findUserById(id);
        model.addAttribute("user", user);
        return "userProfile";
    }
}

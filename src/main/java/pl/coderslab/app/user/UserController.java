package pl.coderslab.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

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
        if (result.hasErrors()) {
            return "user";
        }
        User userAlredyExists = userService.findUserByLogin(user.getLogin());
        if (userAlredyExists != null) {
            model.addAttribute("loginFailed", true);
            return "user";
        }
        userService.saveUser(user);
        return "redirect:../login";
    }

    @GetMapping("/list")
    public String listUsers(Model model) {
        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        return "userList";
    }

    @GetMapping("/update/{id}")
    public String updateUser(@PathVariable Long id, Model model) {
        User user = userService.findUserById(id);
        model.addAttribute("user", user);
        return "user";
    }

    @PostMapping("/update/{id}")
    public String updateUser(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user";
        }
        userService.updateUser(user);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable Long id) {
        userService.deleteUser(id);
        return "redirect:../list";
    }

    @GetMapping("/{id}")
    public String userProfile(@PathVariable Long id, Model model) {
        User user = userService.findUserById(id);
        model.addAttribute("user", user);
        return "userProfile";
    }
}

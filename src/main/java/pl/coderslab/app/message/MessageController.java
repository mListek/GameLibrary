package pl.coderslab.app.message;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.user.User;
import pl.coderslab.app.user.UserService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    private MessageService messageService;

    @Autowired
    private UserService userService;

    @GetMapping("/add")
    public String addMessage(Model model) {
        model.addAttribute("message", new Message());
        return "message";
    }

    @PostMapping("/add")
    public String addMessage(@Valid @ModelAttribute Message message, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "message";
        }
        User checkUser = userService.findUserByUsername(message.getUsername());
        if (checkUser == null) {
            model.addAttribute("noSuchUser", true);
            return "message";
        }
        message.setUser(checkUser);
        messageService.saveMessage(message);
        return "redirect:list";
    }

    @GetMapping("/list")
    public String listMessages(Model model) {
        List<Message> messages = messageService.findAllMessages();
        model.addAttribute("messages", messages);
        return "messageList";
    }

    @GetMapping("/delete/{id}")
    public String deleteMessage(@PathVariable Long id) {
        messageService.deleteMessage(id);
        return "redirect:../list";
    }

    @GetMapping("/{id}")
    public String messageProfile(@PathVariable Long id, Model model) {
        Message message = messageService.findMessageById(id);
        model.addAttribute("message", message);
        return "messageProfile";
    }
}

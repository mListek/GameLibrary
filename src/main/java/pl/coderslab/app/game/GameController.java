package pl.coderslab.app.game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/game")
public class GameController {


    @GetMapping("/add")
    public String addGame(Model model) {
        model.addAttribute("game", new Game());
        return "game";
    }
}

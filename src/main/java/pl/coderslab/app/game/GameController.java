package pl.coderslab.app.game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.comment.Comment;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/game")
public class GameController {
    @Autowired
    private GameService gameService;

    @GetMapping("/add")
    public String addGame(Model model) {
        model.addAttribute("game", new Game());
        return "game";
    }

    @PostMapping("/add")
    public String addGame(@Valid @ModelAttribute Game game, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "game";
        }
        Game gameAlredyExists = gameService.findGameByTitle(game.getTitle());
        if (gameAlredyExists != null) {
            model.addAttribute("gameFailed", true);
            return "game";
        }
        gameService.saveGame(game);
        return "redirect:list";
    }

    @GetMapping("/list")
    public String listGames(Model model) {
        List<Game> games = gameService.findAllGames();
        model.addAttribute("games", games);
        return "gameList";
    }

    @GetMapping("/update/{id}")
    public String updateGame(@PathVariable Long id, Model model) {
        Game game = gameService.findGameById(id);
        model.addAttribute("game", game);
        return "game";
    }

    @PostMapping("/update/{id}")
    public String updateGame(@Valid @ModelAttribute Game game, BindingResult result) {
        if (result.hasErrors()) {
            return "game";
        }
        gameService.updateGame(game);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteGame(@PathVariable Long id) {
        gameService.deleteGame(id);
        return "redirect:../list";
    }

    @GetMapping("/{id}")
    public String gameProfile(@PathVariable Long id, Model model) {
        Game game = gameService.findGameById(id);
        model.addAttribute("game", game);
        return "gameProfile";
    }

    @PostMapping("/{id}")
    public String gameProfile(@RequestParam String  description,
                              @RequestParam String game) {
        Game game1 = gameService.findGameByTitle(game);
        List<Comment> comments = game1.getComments();
        if(comments == null) {
            comments = new ArrayList<>();
        }
        Comment comment = new Comment();
        comment.setDescription(description);
        comments.add(comment);
        game1.setComments(comments);
        return "gameProfile";
    }

    @GetMapping("/{id}/rate")
    public String gameRate(@PathVariable Long id, Model model) {
        Game game = gameService.findGameById(id);
        model.addAttribute("game", game);
        return "gameRate";
    }

    @PostMapping("/{id}/rate")
    public String gameRate(@PathVariable Long id,
                           @RequestParam String rating,
                           @RequestParam String game) {
        Game game1 = gameService.findGameByTitle(game);
        game1.setRating(Integer.parseInt(rating));
        return "redirect:../{id}";
    }

}

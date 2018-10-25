package pl.coderslab.app.news;

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
@RequestMapping("/news")
public class NewsController {
    @Autowired
    private NewsService newsService;

    @GetMapping("/add")
    public String addNews(Model model) {
        model.addAttribute("news", new News());
        return "news";
    }

    @PostMapping("/add")
    public String addNews(@Valid @ModelAttribute News news, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "news";
        }
        newsService.saveNews(news);
        return "redirect:list";
    }

    @GetMapping("/list")
    public String listNews(Model model) {
        List<News> news = newsService.findAllNews();
        model.addAttribute("news", news);
        return "newsList";
    }

    @GetMapping("/update/{id}")
    public String updateNews(@PathVariable Long id, Model model) {
        News news = newsService.findNewsById(id);
        model.addAttribute("news", news);
        return "news";
    }

    @PostMapping("/update/{id}")
    public String updateUser(@Valid @ModelAttribute News news, BindingResult result) {
        if (result.hasErrors()) {
            return "news";
        }
        newsService.updateNews(news);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteNews(@PathVariable Long id) {
        newsService.deleteNews(id);
        return "redirect:../list";
    }

    @GetMapping("/{id}")
    public String newsProfile(@PathVariable Long id, Model model) {
        News news = newsService.findNewsById(id);
        model.addAttribute("news", news);
        return "newsProfile";
    }
}

package pl.coderslab.app.homeandlogin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.app.news.News;
import pl.coderslab.app.news.NewsService;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private NewsService newsService;

    @GetMapping("/home")
    public String home(Model model) {
        List<News> news = newsService.findAllNews();
        model.addAttribute("news", news);
        return "home";
    }
}

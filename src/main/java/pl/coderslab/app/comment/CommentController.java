package pl.coderslab.app.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.category.Category;
import pl.coderslab.app.game.GameService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @GetMapping("/add/{id}")//do poprawy, przerobic na comment
    public String addComment(Model model) {
        model.addAttribute("comment", new Comment());
        return "comment";
    }

//    @PostMapping("/add")
//    public String addCategory(@Valid @ModelAttribute Category category, BindingResult result, Model model) {
//        if (result.hasErrors()) {
//            return "category";
//        }
//        Category categoryAlredyExists = categoryService.findCategoryByName(category.getName());
//        if (categoryAlredyExists != null) {
//            model.addAttribute("categoryFailed", true);
//            return "category";
//        }
//        categoryService.saveCategory(category);
//        return "redirect:list";
//    }
//
//    @GetMapping("/list")
//    public String listCategories(Model model) {
//        List<Category> categories = categoryService.findAllCategories();
//        model.addAttribute("categories", categories);
//        return "categoryList";
//    }
//
//    @GetMapping("/update/{id}")
//    public String updateCategory(@PathVariable Long id, Model model) {
//        Category category = categoryService.findCategoryById(id);
//        model.addAttribute("category", category);
//        return "category";
//    }
//
//    @PostMapping("/update/{id}")
//    public String updateCategory(@Valid @ModelAttribute Category category, BindingResult result) {
//        if (result.hasErrors()) {
//            return "category";
//        }
//        categoryService.updateCategory(category);
//        return "redirect:../list";
//    }
//
//    @GetMapping("/delete/{id}")
//    public String deleteCategory(@PathVariable Long id) {
//        categoryService.deleteCategory(id);
//        return "redirect:../list";
//    }
//
//    @GetMapping("/{id}")
//    public String categoryProfile(@PathVariable Long id, Model model) {
//        Category category = categoryService.findCategoryById(id);
//        model.addAttribute("category", category);
//        return "categoryProfile";
//    }
}

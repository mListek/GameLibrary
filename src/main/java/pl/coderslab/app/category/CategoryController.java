package pl.coderslab.app.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.app.game.Game;
import pl.coderslab.app.game.GameService;
//to be added
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @GetMapping("/add")
    public String addCategory(Model model) {
        model.addAttribute("category", new Category());
        return "category";
    }

    @PostMapping("/add")
    public String addCategory(@Valid @ModelAttribute Category category, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "category";
        }
        Category categoryAlredyExists = categoryService.findCategoryByName(category.getName());
        if (categoryAlredyExists != null) {
            model.addAttribute("categoryFailed", true);
            return "category";
        }
        categoryService.saveCategory(category);
        return "redirect:list";
    }

    @GetMapping("/list")
    public String listCategories(Model model) {
        List<Category> categories = categoryService.findAllCategories();
        model.addAttribute("categories", categories);
        return "categoryList";
    }

    @GetMapping("/update/{id}")
    public String updateCategory(@PathVariable Long id, Model model) {
        Category category = categoryService.findCategoryById(id);
        model.addAttribute("category", category);
        return "category";
    }

    @PostMapping("/update/{id}")
    public String updateCategory(@Valid @ModelAttribute Category category, BindingResult result) {
        if (result.hasErrors()) {
            return "category";
        }
        categoryService.updateCategory(category);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteCategory(@PathVariable Long id) {
        categoryService.deleteCategory(id);
        return "redirect:../list";
    }

    @GetMapping("/{id}")
    public String categoryProfile(@PathVariable Long id, Model model) {
        Category category = categoryService.findCategoryById(id);
        model.addAttribute("category", category);
        return "categoryProfile";
    }
}

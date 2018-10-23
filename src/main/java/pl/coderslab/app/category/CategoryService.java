package pl.coderslab.app.category;

public interface CategoryService {
    void addCategory(Category category);
    Category findCategoryById(Long id);
    Category findCategoryByName(String name);
    void deleteCategory(Long id);
}

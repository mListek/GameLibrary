package pl.coderslab.app.category;

import java.util.List;

public interface CategoryService {
    void saveCategory(Category category);
    Category findCategoryById(Long id);
    Category findCategoryByName(String name);
    void deleteCategory(Long id);
    List<Category> findAllCategories();
    void updateCategory(Category category);
}

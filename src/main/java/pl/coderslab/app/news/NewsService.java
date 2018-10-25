package pl.coderslab.app.news;

import pl.coderslab.app.user.User;

import java.util.List;

public interface NewsService {
    void saveNews(News news);
    News findNewsById(Long id);
    void deleteNews(Long id);
    List<News> findAllNews();
    void updateNews(News news);
}

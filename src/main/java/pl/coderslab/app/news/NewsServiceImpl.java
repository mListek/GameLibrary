package pl.coderslab.app.news;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsRepository newsRepository;

    @Override
    public void saveNews(News news) {
        newsRepository.save(news);
    }

    @Override
    public News findNewsById(Long id) {
        return newsRepository.findOne(id);
    }

    @Override
    public void deleteNews(Long id) {
        newsRepository.delete(id);
    }

    @Override
    public List<News> findAllNews() {
        return newsRepository.findAll();
    }

    @Override
    public void updateNews(News news) {
        newsRepository.saveAndFlush(news);
    }
}

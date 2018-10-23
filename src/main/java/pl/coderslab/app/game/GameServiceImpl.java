package pl.coderslab.app.game;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GameServiceImpl implements GameService {
    @Autowired
    private GameRepository gameRepository;

    @Override
    public void saveGame(Game game) {
        gameRepository.save(game);
    }

    @Override
    public Game findGameById(Long id) {
        return gameRepository.findOne(id);
    }

    @Override
    public Game findGameByTitle(String title) {
        return gameRepository.findFirstByTile(title);
    }

    @Override
    public void deleteGame(Long id) {
        Game game = findGameById(id);
        gameRepository.delete(game);
    }
}

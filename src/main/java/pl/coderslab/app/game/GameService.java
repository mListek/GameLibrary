package pl.coderslab.app.game;

import java.util.List;

public interface GameService {
    void saveGame(Game game);
    Game findGameById(Long id);
    Game findGameByTitle(String title);
    void deleteGame(Long id);
    List<Game> findAllGames();
    void updateGame(Game game);
}

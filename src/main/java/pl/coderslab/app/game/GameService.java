package pl.coderslab.app.game;


public interface GameService {
    void saveGame(Game game);
    Game findGameById(Long id);
    Game findGameByTitle(String title);
    void deleteGame(Long id);
}

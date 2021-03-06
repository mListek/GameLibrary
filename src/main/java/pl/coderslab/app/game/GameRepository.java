package pl.coderslab.app.game;


import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<Game, Long> {
    Game findFirstByTitle(String title);
}

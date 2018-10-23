package pl.coderslab.app.user;

public interface UserService {
    void saveUser(User user);
    User findUserById(Long id);
    User findUserByLogin(String login);
    void deleteUser(Long id);
}

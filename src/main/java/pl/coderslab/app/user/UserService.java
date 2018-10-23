package pl.coderslab.app.user;

public interface UserService {
    void saveUser(User user);
    User findUser(Long id);
    void deleteUser(Long id);
}

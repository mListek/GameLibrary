package pl.coderslab.app.user;

import java.util.List;

public interface UserService {
    void saveUser(User user);
    User findUserById(Long id);
    User findUserByLogin(String login);
    void deleteUser(Long id);
    List<User> findAllUsers();
    void updateUser(User user);
    User findUserByUsername(String username);
}

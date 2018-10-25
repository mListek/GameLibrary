package pl.coderslab.app.message;

import java.util.List;

public interface MessageService {
    void saveMessage(Message message);
    List<Message> findAllMessages();
    void deleteMessage(Long id);
    Message findMessageById(Long id);
}

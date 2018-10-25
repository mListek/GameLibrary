package pl.coderslab.app.comment;

import java.util.List;

public interface CommentService {
    void saveComment(Comment comment);
    Comment findCommentById(Long id);
    void deleteComment(Long id);
    List<Comment> findAllComments();
    void updateComment(Comment comment);
}

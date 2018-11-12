package pl.coderslab.app.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;


import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @GetMapping("/add/{id}")
    public String addComment(Model model) {
        model.addAttribute("comment", new Comment());
        return "comment";
    }

    @PostMapping("/add")
    public String addComment(@Valid @ModelAttribute Comment comment, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "comment";//add comment view
        }
        commentService.saveComment(comment);
        return "redirect:list";
    }

    @GetMapping("/list")
    public String listComments(Model model) {
        List<Comment> comments = commentService.findAllComments();
        model.addAttribute("comments", comments);
        return "commentList";//add commentList view
    }

    @GetMapping("/update/{id}")
    public String updateComment(@PathVariable Long id, Model model) {
        Comment comment = commentService.findCommentById(id);
        model.addAttribute("comment", comment);
        return "comment";
    }

    @PostMapping("/update/{id}")
    public String updateComment(@Valid @ModelAttribute Comment comment, BindingResult result) {
        if (result.hasErrors()) {
            return "comment";
        }
        commentService.updateComment(comment);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteComment(@PathVariable Long id) {
        commentService.deleteComment(id);
        return "redirect:../list";
    }

    @GetMapping("/{id}")
    public String commentProfile(@PathVariable Long id, Model model) {
        Comment comment = commentService.findCommentById(id);
        model.addAttribute("comment", comment);
        return "commentProfile";//add commentProfile view
    }
}

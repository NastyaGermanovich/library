package varava.testtask.library.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import varava.testtask.library.models.Book;
import varava.testtask.library.models.PagerModel;
import varava.testtask.library.repositories.BookRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@Controller
public class BookshelfController {
    private static final int BUTTONS_TO_SHOW = 3;
    public static final int INITIAL_PAGE = 0;
    public static final int INITIAL_PAGE_SIZE = 10;
    public static final int[] PAGE_SIZES = {10};

    @Autowired
    BookRepository bookRepository;

    @GetMapping("/")
    public ModelAndView homepage(@RequestParam("pageSize") Optional<Integer> pageSize,
                                 @RequestParam("page") Optional<Integer> page){
        if(bookRepository.count()!=0){
        }else{
            bookRepository.findAll();
        }

        ModelAndView modelAndView = new ModelAndView("index");
        int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);
        int evalPage = (page.orElse(0) < 1) ? INITIAL_PAGE : page.get() - 1;
        System.out.println("here is client repo " + bookRepository.findAll());
        Page<Book> booklist = bookRepository.findAll(new PageRequest(evalPage, evalPageSize));
        System.out.println("client list get total pages" + booklist.getTotalPages() + "client list get number " + booklist.getNumber());
        PagerModel pager = new PagerModel(booklist.getTotalPages(),booklist.getNumber(),BUTTONS_TO_SHOW);
        modelAndView.addObject("booklist", booklist);
        modelAndView.addObject("selectedPageSize", evalPageSize);
        modelAndView.addObject("pageSizes", PAGE_SIZES);
        modelAndView.addObject("pager", pager);
        return modelAndView;
    }
    @GetMapping("/delete/{id}")
    public ModelAndView delete(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView("redirect:/");
        bookRepository.deleteById(id);
        return modelAndView;
    }
    @GetMapping("/read/{id}")
    public ModelAndView read(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView("redirect:/");
        Book book = bookRepository.findById(id).get();
        if (!book.isReadalready()) {
            book.setReadalready(true);
            bookRepository.save(book);
        }
        return modelAndView;
    }
        @RequestMapping("/find")
    public ModelAndView doFind(@RequestParam("column") String column, @RequestParam("query") String query) {
        ModelAndView modelAndView = new ModelAndView("find");
        List<Book> list1 = new ArrayList<>();
        Page<Book> page = bookRepository.findAll(new PageRequest(0,Integer.MAX_VALUE));
        List<Book> list = page.getContent();
        String string;

        switch (column) {
            case "author" :
                for (Book book:  list) {
                    if (book.getAuthor().contains(query)) list1.add(book);
                } break;
            case "isbn" :
                for (Book book:  list) {
                    if (book.getIsbn().contains(query)) list1.add(book);
                } break;
            case "title" :
                for (Book book : list) {
                    if (book.getTitle().contains(query)) list1.add(book);
                } break;
            case "year" :
                for (Book book:  list) {
                    string = String.valueOf(book.getPrintyear());
                    if (string.contains(query)) list1.add(book);
                } break;
        }

        modelAndView.addObject("booklist", list1);
        return modelAndView;
    }

        @RequestMapping(value = "/addNewBook")
    public ModelAndView doAdd() {
        ModelAndView modelAndView = new ModelAndView("addNewBook");
        modelAndView.addObject("booklist", bookRepository.findAll());
        return modelAndView;
    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id, @RequestParam("title") String title, @RequestParam("description") String description, @RequestParam("author") String author, @RequestParam("isbn") String isbn, @RequestParam("printyear") String printyear, @RequestParam("readalready") String readalready) {
        ModelAndView modelAndView = new ModelAndView("redirect:/");
        Book book;
        if(!id.isEmpty()){
            book = bookRepository.findById(Integer.parseInt(id)).get();
        } else {
            book = new Book();
        }
        book.setTitle(title);
        book.setDescription(description);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setPrintyear(Integer.parseInt(printyear));
        book.setReadalready(Boolean.parseBoolean(readalready));
        bookRepository.save(book);
        return modelAndView;
    }
    @RequestMapping( value = "/editBook/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView("editBook");
        modelAndView.addObject("booklist",bookRepository.findById(id).get());
        return modelAndView;
    }
}

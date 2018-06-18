package varava.testtask.library.models;


import javax.persistence.*;

@Entity
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String description;
    private String author;
    private String isbn;
    private int printyear;
    private boolean readalready;


    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getPrintyear() {
        return printyear;
    }

    public void setPrintyear(int printyear) {
        this.printyear = printyear;
    }

    public boolean isReadalready() {
        return readalready;
    }

    public void setReadalready(boolean readalready) {
        this.readalready = readalready;
    }

}

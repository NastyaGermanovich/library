package varava.testtask.library.repositories;

import org.springframework.data.repository.PagingAndSortingRepository;
import varava.testtask.library.models.Book;

public interface BookRepository extends PagingAndSortingRepository<Book, Integer> {
}

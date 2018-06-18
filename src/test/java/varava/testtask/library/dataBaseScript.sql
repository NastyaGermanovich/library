#DROP DATABASE IF EXISTS test;
CREATE DATABASE IF NOT EXISTS test CHARACTER SET utf8 COLLATE utf8_general_ci;

USE test;


DROP TABLE IF EXISTS book;
CREATE TABLE book
(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL,
  author VARCHAR(100) NOT NULL,
  isbn VARCHAR(20) NOT NULL,
  printYear INT NOT NULL,
  readAlready tinyint(4) NOT NULL DEFAULT 0
)
  ENGINE = innoDB
  DEFAULT CHARACTER SET = utf8;

INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (1, 'The Pilgrim’s Progress', 'A story of a man in search of truth told with the simple clarity and beauty of Bunyan’s prose make this the ultimate English classic.', 'John Bunyan', '978-5-09-014485-8', 1678, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (2, 'Robinson Crusoe', 'By the end of the 19th century, no book in English literary history had enjoyed more editions, spin-offs and translations. Crusoe’s world-famous novel is a complex literary confection, and it’s irresistible.', 'Daniel Defoe', '978-5-05-000091-0', 1719, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (3, 'Gulliver’s Travels', 'A satirical masterpiece that’s never been out of print, Jonathan Swift’s Gulliver’s Travels comes third in our list of the best novels written in English', 'Jonathan Swift', '978-5-472-01012-2', 1726, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (4, 'Clarissa', 'Clarissa is a tragic heroine, pressured by her unscrupulous nouveau-riche family to marry a wealthy man she detests, in the book that Samuel Johnson described as “the first book in the world for the knowledge it displays of the human heart.”', 'Samuel Richardson', '978-5-02-033899-9', 1748, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (5, 'Tom Jones', 'Tom Jones is a classic English novel that captures the spirit of its age and whose famous characters have come to represent Augustan society in all its loquacious, turbulent, comic variety.', 'Henry Fielding', '978-5-89349-822-6', 1749, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (6, 'The Life and Opinions of Tristram Shandy, Gentleman', 'Laurence Sterne’s vivid novel caused delight and consternation when it first appeared and has lost little of its original bite.', 'Laurence Sterne', '978-5-282-02671-9', 1759, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (7, 'Emma', 'Jane Austen’s Emma is her masterpiece, mixing the sparkle of her early books with a deep sensibility.', 'Jane Austen', '833-7-4302-6151-7', 1816, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (8, 'Frankenstein', 'Mary Shelley’s first novel has been hailed as a masterpiece of horror and the macabre.', 'Mary Shelley', '437-3-2789-9528-3', 1818, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (9, 'Nightmare Abbey', 'The great pleasure of Nightmare Abbey, which was inspired by Thomas Love Peacock’s friendship with Shelley, lies in the delight the author takes in poking fun at the romantic movement.', 'Thomas Love Peacock', '978-5-02-033897-5', 1818, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (10, 'The Narrative', 'Edgar Allan Poe’s only novel – a classic adventure story with supernatural elements – has fascinated and influenced generations of writers.', 'Edgar Allan Poe', '978-5-89349-820-2', 1838, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (11, 'Sybil', 'The future prime minister displayed flashes of brilliance that equalled the greatest Victorian novelists.', 'Benjamin Disraeli', '346-8-4302-6151-4', 1845, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (12, 'Jane Eyre', 'Charlotte Brontë’s erotic, gothic masterpiece became the sensation of Victorian England. Its great breakthrough was its intimate dialogue with the reader.', 'Charlotte Brontë', '978-1-84334-151-2', 1847, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (13, 'Wuthering Heights', 'Emily Brontë’s windswept masterpiece is notable not just for its wild beauty but for its daring reinvention of the novel form itself.', 'Emily Brontë', '978-5-282-02670-2', 1847, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (14, 'Vanity Fair', 'William Thackeray’s masterpiece, set in Regency England, is a bravura performance by a writer at the top of his game.', 'William Thackeray', '978-5-93347-212-4', 1848, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (15, 'David Copperfield', 'David Copperfield marked the point at which Dickens became the great entertainer and also laid the foundations for his later, darker masterpieces.', 'Charles Dickens', '978-5-93913-059-3', 1850, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (16, 'The Scarlet Letter', 'Nathaniel Hawthorne’s astounding book is full of intense symbolism and as haunting as anything by Edgar Allan Poe.', 'Nathaniel Hawthorne', '978-1-4302-6151-3', 1850, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (17, 'The Pilgrim’s Progress', 'A story of a man in search of truth told with the simple clarity and beauty of Bunyan’s prose make this the ultimate English classic.', 'John Bunyan', '978-1-4302-6151-3', 1678, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (18, 'Robinson Crusoe', 'By the end of the 19th century, no book in English literary history had enjoyed more editions, spin-offs and translations. Crusoe’s world-famous novel is a complex literary confection, and it’s irresistible.', 'Daniel Defoe', '388-7-4302-8532-2', 1719, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (19, 'Gulliver’s Travels', 'A satirical masterpiece that’s never been out of print, Jonathan Swift’s Gulliver’s Travels comes third in our list of the best novels written in English', 'Jonathan Swift', '978-5-85939-017-5', 1726, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (20, 'Clarissa', 'Clarissa is a tragic heroine, pressured by her unscrupulous nouveau-riche family to marry a wealthy man she detests, in the book that Samuel Johnson described as “the first book in the world for the knowledge it displays of the human heart.”', 'Samuel Richardson', '378-3-3738-3889-7', 1748, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (21, 'Tom Jones', 'Tom Jones is a classic English novel that captures the spirit of its age and whose famous characters have come to represent Augustan society in all its loquacious, turbulent, comic variety.', 'Henry Fielding', '837-1-3783-3893-4', 1749, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (22, 'The Life and Opinions of Tristram Shandy, Gentleman', 'Laurence Sterne’s vivid novel caused delight and consternation when it first appeared and has lost little of its original bite.', 'Laurence Sterne', '978-5-85429-016-6', 1759, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (23, 'Emma', 'Jane Austen’s Emma is her masterpiece, mixing the sparkle of her early books with a deep sensibility.', 'Jane Austen', '833-7-4302-6151-7', 1816, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (24, 'Frankenstein', 'Mary Shelley’s first novel has been hailed as a masterpiece of horror and the macabre.', 'Mary Shelley', '437-3-2789-9528-3', 1818, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (25, 'Nightmare Abbey', 'The great pleasure of Nightmare Abbey, which was inspired by Thomas Love Peacock’s friendship with Shelley, lies in the delight the author takes in poking fun at the romantic movement.', 'Thomas Love Peacock', '372-8-3884-3892-9', 1818, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (26, 'The Narrative', 'Edgar Allan Poe’s only novel – a classic adventure story with supernatural elements – has fascinated and influenced generations of writers.', 'Edgar Allan Poe', '978-5-09-024016-1', 1838, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (27, 'Sybil', 'The future prime minister displayed flashes of brilliance that equalled the greatest Victorian novelists.', 'Benjamin Disraeli', '346-8-4302-6151-4', 1845, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (28, 'Jane Eyre', 'Charlotte Brontë’s erotic, gothic masterpiece became the sensation of Victorian England. Its great breakthrough was its intimate dialogue with the reader.', 'Charlotte Brontë', '978-2-4302-6151-3', 1847, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (29, 'Wuthering Heights', 'Emily Brontë’s windswept masterpiece is notable not just for its wild beauty but for its daring reinvention of the novel form itself.', 'Emily Brontë', '978-5-93347-026-7', 1847, 0);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (30, 'Vanity Fair', 'William Thackeray’s masterpiece, set in Regency England, is a bravura performance by a writer at the top of his game.', 'William Thackeray', '978-5-33333-444-5', 1848, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (31, 'David Copperfield', 'David Copperfield marked the point at which Dickens became the great entertainer and also laid the foundations for his later, darker masterpieces.', 'Charles Dickens', '978-5-288-00544-2', 1850, 1);
INSERT INTO book (id, title, description, author, isbn, printYear, readAlready) VALUES (32, 'The Scarlet Letter', 'Nathaniel Hawthorne’s astounding book is full of intense symbolism and as haunting as anything by Edgar Allan Poe.', 'Nathaniel Hawthorne', '978-1-4302-6151-3', 1850, 0);

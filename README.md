# Bookリストアプリ

## DBの準備

```bash
-> % mysql -u root

mysql> CREATE DATABASE booklist;
Query OK, 1 row affected (0.00 sec)

mysql> SHOW databases;
+-------------------------+
| Database                |
+-------------------------+
| booklist                |

mysql> source ~/playground/ta_mentor/mysql/booklist/sqls/create_table_book
Query OK, 0 rows affected (0.03 sec)

mysql> USE booklist;

Database changed
mysql> INSERT INTO books (book_title) VALUES("book1");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO books (book_title) VALUES("book2");
Query OK, 1 row affected (0.00 sec)

mysql>  SELECT * FROM books;
+----+--------------------------+---------------------+
| id | book_title               | created_at          |
+----+--------------------------+---------------------+
|  1 | book1                    | 2021-04-24 22:24:41 |
|  2 | book2                    | 2021-04-24 22:24:45 |
+----+--------------------------+---------------------+
2 rows in set (0.00 sec)

```

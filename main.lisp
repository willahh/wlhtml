;; Lecture-mysql http://www.obrezan.com/lisp/mysql/index.htm
;; Lecture cl-mysql http://www.hackinghat.com/index.php/cl-mysql
(load "/Users/user/quicklisp/setup.lisp")
(ql:quickload "cl-mysql")
(use-package :cl-mysql)
(setq db (connect :host "localhost" :user "root" :password "root" :database "bdd"))

(defun get-all-from-table ()
  (query "SELECT * FROM `table`" :database db))

(defun get-query-fields (sql-query-result-list)
  (car (cdr (car sql-query-result-list))))

(defun get-query-body (sql-query-result-list)
  (car (car sql-query-result-list)))

(get-query-fields (get-all-from-table))
(get-query-body (get-all-from-table))

;; Connection avec clsql-sqlite3 en cours
(ql:quickload "clsql-sqlite3")
(use-package :clsql-sqlite3)

(defvar *db* (sqlite3:sqlite3-open "/Users/willahh/www/projects/wlhtml/databases/wlhtml.db"))

;; (clsql-sqlite3:sqlite3-database:)

;; todo ------->
(clsql-sqlite3::database-query "SELECT * FROM `table`" *db* :auto :auto)

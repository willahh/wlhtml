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

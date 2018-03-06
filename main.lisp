;; Lecture-mysql http://www.obrezan.com/lisp/mysql/index.htm
;; Lecture asdf https://common-lisp.net/project/asdf-install/tutorial/index-save.html#install-asdf
;; Lecture cl-mysql http://www.hackinghat.com/index.php/cl-mysql
(load "/Users/wravel/quicklisp/setup.lisp")
(ql:quickload "cl-mysql")
(use-package :cl-mysql)

(setq db (connect :host "localhost" :user "root" :password "root" :database "bdd"))

(setq test (query "SELECT * FROM `easy_action`" :database db))
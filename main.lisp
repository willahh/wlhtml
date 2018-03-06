;; Lecture-mysql http://www.obrezan.com/lisp/mysql/index.htm
;; Lecture asdf https://common-lisp.net/project/asdf-install/tutorial/index-save.html#install-asdf
;; Lecture cl-mysql http://www.hackinghat.com/index.php/cl-mysql
(load "/Users/wravel/quicklisp/setup.lisp")
(ql:quickload "cl-mysql")
(use-package :cl-mysql)

(setq db (connect :host "localhost" :user "wravel" :password "wravel" :database "easy3p_218"))

(setq test (query "SELECT * FROM `easy_action`" :database db))
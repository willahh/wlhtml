;; TODO get user path + get pwd
;; (pathname-name (user-homedir-pathname))

;; Load dependencies files
(load "/Users/wravel/quicklisp/setup.lisp")
(ql:quickload "clsql")

;; 
(defparameter db-name "/Users/wravel/www/project_perso/wlhtml/databases/wlhtml.db")

;; Data base connecton
(clsql:connect (list db-name) :database-type :sqlite3)

;; Helper
(defun get-all-user ()
  (clsql:query "SELECT * FROM country"))

;; Test
(get-all-user)














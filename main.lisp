;; Lecture-mysql http://www.obrezan.com/lisp/mysql/index.htm
;; Lecture cl-mysql http://www.hackinghat.com/index.php/cl-mysql
(load "/Users/user/quicklisp/setup.lisp")
(ql:quickload "cl-mysql")
(use-package :cl-mysql)
(setq db (connect :host "localhost" :user "root" :password "root" :database "bdd"))


;; ----------------------------------------------
;; insert
;; update
;; delete
;; deleteByCriteriaList
;; deleteByIdxList
;; findByIdx
;; findListByIdxList
;; findList
;; countResults
;; ----------------------------------------------
;; getFieldList
;; getObjectFromResult
;; insert
;; update
;; delete
;; deleteByCriteriaList
;; deleteByFPPrIdx
;; deleteByStatIdx
;; deleteByStepIdx
;; deleteByPADTIdx
;; deleteByIdxList
;; findByIdx
;; findListByIdxList
;; findList
;; findListByFPPrIdx
;; findListByStatIdx
;; findListByStepIdx
;; findListByPADTIdx
;; countResults
;; desactivate
;; activate
;; desactivateByCriteriaList
;; activateByCriteriaList
;; findActivedList
;; findDesactivedList
;; activatedCountResults
;; desactivatedCountResults
;; ----------------------------------------------
;; insert
;; update
;; delete
;; findList
;; findByIdx
;; getFieldList
;; countResults
;; getOrderClause
;; deleteByAssiIdx
;; deleteByUserIdx
;; deleteByIdxList
;; findListByIdxList
;; findListByAssiIdx
;; findListByUserIdx
;; getObjectFromResult
;; deleteByCriteriaList
;; countResultsByAssiIdx
;; countResultsByUserIdx
;; deleteByLastChangeUserIdx
;; countResultsByAssiIdxList
;; countResultsByUserIdxList
;; findListByLastChangeUserIdx
;; countResultsByLastChangeUserIdx
;; countResultsByLastChangeUserIdxList
;; ----------------------------------------------
;; getInstance
;; findByLogin
;; findActivatedListByIdxList
;; activateByUserIdx
;; activateByUserIdxList
;; desactivateByUserIdx
;; desactivateByUserIdxList
;; deleteByUserIdxList
;; deleteByUserIdx
;; countResultsForUserIdxList
;; activatedCountResultsForUserIdxList
;; desactivatedCountResultsForUserIdxList
;; findActivedListExterneByIdxList
;; findActivedListGUNByIdxList
;; desactivateByCriteriaList
;; getObjectFromResult
;; updateLastAction
;; findActivatedListByIdxListAndCriteria
;; findListByGroupIdx
;; findRedifinedUserForPageAndRole
;; findActivatedListByGroupIdxList
;; updateDeletedFieldByUserIdx
;; desactivatedCountResults
;; findDesactivedList
;; findActivatedListByGroupIdx
;; findFirstBySuppIdx
;; getOrderClause
;; updateLastConnexion
;; countResultsForPassIdxList
;; countResultsForPassIdx
;; findActivatedListByPassIdx



(defun get-all-from-table ()
  (query "SELECT * FROM `table`" :database db))

(defun get-query-fields (sql-query-result-list)
  (car (cdr (car sql-query-result-list))))

(defun get-query-body (sql-query-result-list)
  (car (car sql-query-result-list)))

(get-query-fields (get-all-from-table))
(get-query-body (get-all-from-table))

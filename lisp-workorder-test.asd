(defsystem "lisp-workorder-test"
  :defsystem-depends-on ("prove-asdf")
  :author ""
  :license ""
  :depends-on ("lisp-workorder"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "lisp-workorder"))))
  :description "Test system for lisp-workorder"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))

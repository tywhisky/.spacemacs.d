;;; personal.el --- The random config dumping ground -*- lexical-binding: t; -*-

(provide 'personal)

;; Don't enable this package as this config is not generally applicable

;;; Emacs Anywhere

;; Emacs-anywhere defaults to org-mode with maximized window
(add-hook 'ea-popup-hook
          (lambda (&rest args) (org-mode) (spacemacs/toggle-maximize-buffer)))

;;; Hy-mode

;; Hy-mode development
;; (load-file "~/dev/hy-mode/hy-mode.el")
;; (load-file "~/dev/hy-mode/hy-personal.el")
;; (require 'hy-mode)
;; (require 'hy-personal)

;;; Mail

;; message.el
(setq message-directory "~/mail")
(setq message-send-mail-function 'smtpmail-send-it)

;; smptmail.el
(setq smtpmail-smtp-server "smtp.gmail.com")
(setq smtpmail-smtp-service 587)
(setq smtpmail-default-smtp-server "smtp.gmail.com")
(setq smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil)))
(setq smtpmail-auth-credentials '(("smtp.gmail.com" 587
                                   "ekaschalk@gmail.com" nil)))

;;; Notate Development

(add-to-list 'load-path "~/dev/virtual-indent/")
(with-eval-after-load 'hl-todo
  (setq hl-todo-keyword-faces
        (--remove (s-equals? (car it) "NOTE") hl-todo-keyword-faces)))
(require 'nt-dev)
(load-file "~/dev/virtual-indent/nt-test.el")

;;; Hy-mode Development

(add-to-list 'load-path "~/dev/hy-mode/")
(load-file "~/dev/hy-mode/hy-mode.el")
(load-file "~/dev/hy-mode/hy-test.el")
(spacemacs/set-leader-keys-for-major-mode 'hy-mode
  "'" #'hy-shell-start-or-switch-to-shell
  "," #'lisp-state-toggle-lisp-state)
(spacemacs/set-leader-keys-for-major-mode 'inferior-hy-mode
  "," #'lisp-state-toggle-lisp-state)

(spacemacs/set-leader-keys-for-major-mode 'cider-repl-mode
  "," #'lisp-state-toggle-lisp-state)

;;; Misc

(setq find-function-C-source-directory "~/dev/emacs-dev/src/")

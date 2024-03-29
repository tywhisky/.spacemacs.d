;;; -*- lexical-binding: t; -*-

(configuration-layer/declare-layers
 '(;; Core
   (auto-completion :variables
                    auto-completion-return-key-behavior 'complete
                    auto-completion-tab-key-behavior 'complete
                    auto-completion-enable-snippets-in-popup t)
   better-defaults
   git
   (ivy :variables
        ivy-extra-directories nil)
   (org :variables
        org-want-todo-bindings t
        org-enable-hugo-support t)
   (shell :variables
          shell-default-shell 'eshell)
   syntax-checking
   (version-control :variables
                    version-control-global-margin t
                    version-control-diff-tool 'git-gutter+)

   ;; Misc
   graphviz
   ranger
   (ibuffer :variables
            ibuffer-group-buffers-by 'projects)

   ;; Markups
   csv
   html
   markdown
   yaml

   ;; Languages
   lsp
   emacs-lisp
   elixir
   hy  ; I wrote this mode/layer

   (elixir :variables
           elixir-backend 'alchemist)

   (c-c++ :variables
          ;; c-c++-backend 'lsp-ccls
          c-c++-backend 'lsp-cquery
          c-c++-enable-google-style t
          c-c++-enable-google-newline t)

   (python :variables

           python-backend 'lsp
           python-lsp-server 'pyls
           ;; python-lsp-server 'mspyls
           python-pipenv-activate t

           python-test-runner 'pytest
           python-spacemacs-indent-guess nil)
   ))
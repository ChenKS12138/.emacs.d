(require 'eglot)
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(global-set-key (kbd "M-SPC") 'company-complete)

(provide 'init-auto-complete)
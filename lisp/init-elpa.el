;; 包管理器设定

(require 'package)

;; 设定package源
(add-to-list 'package-archives '("gnu" . "http://elpa.emacs-china.org/gnu/"))
(add-to-list 'package-archives '("melpa" . "http://elpa.emacs-china.org/melpa/"))


(defun require-package (package &optional min-version no-refresh)
"Install given PACKAGE, optionally reqquiring MIN-VERSION.
if NO-REFRESH is non-nil, the available package lists will not b re-downloaded in order to locate PACKAGE."
(if (package-installed-p package min-version)
t
(if (or (assoc package package-archive-contents) no-refresh)
(package-install package)
(progn
(package-refresh-contents)
(require-package package min-version t)))))

(package-initialize)

(require-package 'all-the-icons)
(require-package 'exec-path-from-shell)
(require-package 'cl-lib)
(require-package 'eglot)
(require-package 'neotree)
(require-package 'company)
(require-package 'vterm)
(require-package 'vterm-toggle)
(require-package 'restart-emacs)
(require-package 'magit)

;; exec-path
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


(provide 'init-elpa)

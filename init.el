;;; 初始化配置的入口


;; 全屏
(add-to-list 'default-frame-alist '(fullscreen . fullboth))

;; 添加lisp路径到启动加载路径
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; 添加elpa路径到启动加载路径，该路径为包管理器elpa所使用
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))

(require 'init-elpa)
(require 'init-themes)
(require 'init-editing)
(require 'init-auto-complete)

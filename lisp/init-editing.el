;; 编辑属性设置

;; 字体大小设置
;; (set-default-font "-*-Menlo-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")

;; 调整字体
;; (set-default-front "Monaco 16")

;; 隐藏 welcome screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; 全局开启行号显示
(global-linum-mode t) ;; 开启全局行号显示

;; 设置问答为简问答
(fset 'yes-or-no-p 'y-or-n-p)

;; 不生成备份文件
(setq make-backup-files nil)

;; 开启ido-mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; 设置默认的tab模式为空格，且为4格
(setq-default indent-tabs-mode t)
(setq default-tab-width 4)
(dolist (hook (list
'python-mode
'html-node
'js-mode
'erlang-mode
'go-mode
'c-mode
'c++-mode
))
(add-hook hook '(lambda () (setq indent-tabs-mode nil))))

;; 设置编码
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

;; 删除选中模型
(delete-selection-mode)

;; 回车并缩进
(global-set-key (kbd "RET") 'newline-and-indent)

;; 设置kill-ring大小限制
(setq global-mark-ring-max 5000
mark-ring-max 5000
mode-require-final-newline t)
(setq kill-ring-max 5000
kill-whole-line t)

;; 在diff-mode中显示 whitespace
(add-hook 'diff-mode-hook (lambda ()
(setq-local whitespace-style
'(face
tabs
tab-mark
spaces
space-mark
trailing
indentation::space
indentation::tab
newline
newline-mark))
(whitespace-mode 1)))


;; toggle vterm
(setq vterm-toggle-fullscreen-p nil)
(add-to-list 'display-buffer-alist
             '((lambda(bufname _) (with-current-buffer bufname (equal major-mode 'vterm-mode)))
                (display-buffer-reuse-window display-buffer-at-bottom)
                (reusable-frames . visible)
                (window-height . 0.3)))

;; key binding
(global-set-key (kbd "C-s-f") 'toggle-frame-fullscreen)
(global-set-key (kbd "s-b") 'neotree-toggle)
(global-set-key (kbd "C-<escape>") 'vterm-toggle)
(global-set-key (kbd "C-`") 'vterm-toggle)

(provide 'init-editing)
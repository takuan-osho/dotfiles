;; emacs directory
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; package management
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun package-install-with-refresh (package)
  (unless (assq package package-alist)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (package-install package)))

;; install evil
(package-install-with-refresh 'evil)

;; enable evil
(require 'evil)
(evil-mode 1)

;; ノーマルステートでemacsとして足りないキーバインドを追加する。
(define-key evil-normal-state-map (kbd "C-e") 'move-end-of-line)

;; インサートステートでemacsとして足りないキーバインドを追加する。
(define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)

;; golang用の設定
(add-to-list 'load-path "~/.emacs.d/elpa/golang")
(require 'go-mode-load)
(add-hook 'go-mode-hook
          '(lambda()
            (setq c-basic-offset 4)
            (setq indent-tabs-mode t)
            (local-set-key (kbd "M-.") 'godef-jump)
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c i") 'go-goto-imports)
            (local-set-key (kbd "C-c d") 'godoc)))

(add-hook 'before-save-hook 'gofmt-before-save)
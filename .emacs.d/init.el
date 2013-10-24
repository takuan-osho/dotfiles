(global-linum-mode t)
(show-paren-mode t)
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))
(add-to-load-path "elisp" "conf" "public_repos")

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

;; Erlang用の設定
(load "init-erlang")
;; golang用の設定
(load "init-golang")

;; Wind Moveの設定
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;; 各種設定
(global-linum-mode t)
(show-paren-mode t)

;; バックアップとオートセーブの設定
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

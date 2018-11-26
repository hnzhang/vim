;;name this file in %userprofile/AppData/Roaming/.emacs or .emacs.el for windows platform

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (## evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))

;;to display file path on the tile of the window
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))

            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))
;;enale keybinding of evil to use emacs as vim
;; how to get evil git clone https://github.com/emacs-evil/evil ~/.emacs.d/evil
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

;;visualize whitespace and tab. Please download blank-mode.el to blank-mode folder
(add-to-list 'load-path "~/.emacs.d/blank-mode")
(require 'blank-mode)
(blank-mode 1)


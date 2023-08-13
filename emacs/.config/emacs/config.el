(require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize)
;; (setq package-check-signature nil) ;; chequea las firmas digitales

; basic mode
  (tool-bar-mode -1 )
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  (blink-cursor-mode -1)
  (delete-selection-mode +1)
  (global-goto-address-mode +1) ;; allows to access links

  ; Set default zoom
  (set-face-attribute 'default nil :height 138)

  ; initial frame defaults
;;  (setq initial-frame-alist '((top . 1)
;;			    (left . 450)
;;			    (width . 101)
;;			    (height . 70)))
;;

  ; case-insensitive search
  (setq case-fold-search t)

  ; emacs cree que las oraciones terminan con un
  ; punto y dos espacios. Le decimos que no es así.
  (setq sentence-end-double-space nil)

(load-theme 'modus-vivendi t)

(set-face-attribute 'default nil
      :font "JetBrains Mono Nerd Font"
      :height 160
      :weight 'medium)
    (set-face-attribute 'variable-pitch nil
      :font "DejaVu Sans"
      :height 160
      :weight 'medium)
    (set-face-attribute 'fixed-pitch nil
      :font "JetBrains Mono Nerd Font"
      :height 160
      :weight 'medium)
    ;; Makes commented text and keywords italics.
    ;; This is working in emacsclient but not emacs.
    ;; Your font must have an italic face available.
    (set-face-attribute 'font-lock-comment-face nil
      :slant 'italic)
    (set-face-attribute 'font-lock-keyword-face nil
      :slant 'italic)

    ;; This sets the default font on all graphical frames created after restarting Emacs.
    ;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
    ;; are not right unless I also add this method of setting the default font.
;    (add-to-list 'default-frame-alist '(font . "JetBrains Mono-16"))

    ;; Uncomment the following line if line spacing needs adjusting.
    (setq-default line-spacing 0.12)

;; auto-fill mode kbd
(global-set-key (kbd "C-x C-a") 'auto-fill-mode)

; ranger
(global-set-key (kbd "C-x r a") 'ranger)

(setq dired-listing-switches "-alt --dired --group-directories-first -h -G")

;; icons
  (use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :ensure t
  :hook (dired-mode . (lambda () (all-the-icons-dired-mode t))))

;; hide details
(add-hook 'dired-mode-hook 'dired-hide-details-mode)

(use-package ranger
    :ensure t)

  ;; configs
  (setq ranger-cleanup-on-disable t)

  ;; previews
  (setq ranger-preview-file t)
;;  (setq ranger-show-literal t)

(use-package transpose-frame
  :ensure t)

(use-package auctex
  :defer t
  :ensure t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(use-package auctex-latexmk
  :defer t
  :ensure t)

(require 'auctex-latexmk)
  (auctex-latexmk-setup)

(use-package ess
  :ensure t
  :init (require 'ess-site))

(use-package pdf-tools
  :ensure t
  :defer t)

(pdf-tools-install)

(use-package toc-org
    :ensure t
    :commands toc-org-enable
    :init (add-hook 'org-mode-hook 'toc-org-enable))

(add-hook 'org-mode-hook 'org-indent-mode)
(use-package org-bullets
  :ensure t)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(require 'org-tempo)

(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.4))

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "pancho horrillo"
      user-mail-address "pancho@pancho.name")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "IBM Plex Mono" :size 18)
      doom-big-font (font-spec :family "IBM Plex Mono" :size 32)
      doom-variable-pitch-font (font-spec :family "IBM Plex Sans" :size 18))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; Use `doom-colors' theme on treemacs (with icons!)
;; Possible caveat: https://github.com/hlissner/emacs-doom-themes/issues/392
(setq doom-themes-treemacs-theme 'doom-colors)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; :tools magit
;; Enable gravatars when viewing commits
(setq magit-revision-show-gravatars '("^Author:     " . "^Commit:     "))
;; Tell magit where to look for local repos
(setq magit-repository-directories '(("~/sandbox" . 2)))

;;; :ui doom-dashboard
(setq fancy-splash-image (concat doom-private-dir "pics/splash.png"))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'visual)

;; Focus on the newly created window
(setq evil-split-window-below t
      evil-vsplit-window-right t)

;; Disable confirmation on exit
;; https://github.com/hlissner/doom-emacs/issues/2688
(setq confirm-kill-emacs nil)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

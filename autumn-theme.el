;;; autoumn-theme.el --- Autumn theme for Emacs

;; Copyright (C) 2011-2014 Jordan Galby
;; Author: Jordan Galby
;; URL: http://github.com/Gravemind/emacs-theme-autumn

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

(deftheme autumn "Low contrast dark autumn theme")

(let* (
      (background   "#101010")
      (foreground   "#b0b0b0")
      (cursor       "#00ffff")

      (bg-hl        "#1c1c1c")

      (selection    "#303030")

      (color1       "#f7bc75")
      (color2       "#d47f54")
      (color3       "#ab5b48")
      (color4       "#8A423f")

      (bluefg1      "#adcbdd")
      (bluefg2      "#97b0be")
      (bluefg3      "#82959f")
      (bluefg4      "#6d7a82")
      (bluefg5      "#596166")
      (bluefg6      "#45494b")

      (comment      bluefg5)
      (doc          bluefg4)

      (strings      "#b2ad79")
      (link         "#61cfd4")

      (colorrem     "#bd5959")
      (colorrem-bg  "#553535")
      (colorrem-bg2 "#2f2523")
      (coloradd     "#6AAB6A")
      (coloradd-bg  "#3A5A3A")
      (coloradd-bg2 "#232c24")
      (colorC       "#b6a849")
      (colorC-bg    "#6A6230")
      (colorC-bg2   "#2f2c23")
      (colorD       "#7A6FA3")
      (colorD-bg    "#4A4060")
      (colorD-bg2   "#29252e")

      (useless      "#602929")

      (ansi-bold-blue "#5b90bf")
      (ansi-bold-cyan "#6cc6c3")

      (winframe       "#080808")
      (winframe-fg    "#707070")
      (winframe-border winframe)
      (winframe-active winframe)
      (winframe-inacti winframe)
      (winframe-fringe-fg "#505050")
      (winframe-fringe-bg winframe)

      (term-red      "#c96969")
      (term-green    "#8dca8d")
      (term-blue     "#5b90bf")
      (term-yellow   "#d2c360")
      (term-cyan     "#6cc6c3")
      (term-mangenta "#bb7793")

      )

  (progn

    (setq x-use-underline-position-properties nil)
    (setq underline-minimum-offset 4)

    (custom-theme-set-faces
     'autumn

     `(cursor ((t (:background ,cursor))))

     `(default ((t (:foreground ,foreground))))
     `(link ((t (:foreground ,link :underline t))))

     ;; Languages
     `(font-lock-builtin-face ((t (:foreground ,link))))
     `(font-lock-preprocessor-face ((t (:foreground ,color4))))
     `(font-lock-constant-face ((t (:foreground ,color3))))
     `(font-lock-function-name-face ((t (:foreground ,color1))))
     `(font-lock-keyword-face ((t (:foreground ,color3 :weight normal))))
     `(font-lock-string-face ((t (:foreground ,strings))))
     `(font-lock-type-face ((t (:foreground ,color2))))
     `(font-lock-variable-name-face ((t (:foreground ,color1))))
     `(sh-heredoc ((t (:foreground ,strings))))

     ;; Comments
     `(font-lock-comment-face ((t (:foreground ,comment ;; :slant italic
                                               ))))
     `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
     `(font-lock-doc-face ((t (:foreground ,doc))))

     `(shadow ((t (:foreground ,comment))))

     ;; Modeline
     `(mode-line ((t (:background ,winframe-active :foreground ,winframe-fg :weight normal))))
     `(mode-line-inactive ((t (:inherit mode-line :background ,winframe))))
     `(header-line ((t (:inherit mode-line-inactive))))
     `(mode-line-buffer-id ((t (:foreground "#d0d0d0"))))
     `(mode-line-highlight ((t (:background ,bg-hl))))
     `(vertical-border ((t (:foreground ,winframe-border))))

     `(window-divider ((t (:foreground ,winframe))))
     `(window-divider-first-pixel ((t (:inherit window-divider))))
     `(window-divider-last-pixel ((t (:inherit window-divider))))

     `(fringe ((t (:foreground ,winframe-fringe-fg, :background ,winframe-fringe-bg))))

     ;; White space mode
     `(whitespace-space-before-tab ((t (:background ,useless))))
     `(whitespace-trailing ((t (:background ,useless))))
     `(whitespace-indentation ((t (:background ,useless))))

     `(minibuffer-prompt ((t (:foreground "#36b5b1"))))

     `(linum ((t (:foreground ,winframe-border :background ,background))))
     `(highlight ((t (:background "gray15" :height 1.0 :weight normal))))
     `(mouse ((t (:background "white"))))
     `(region ((t (:background ,selection))))
     `(ac-completion-face ((t (:foreground "white" :underline t))))
     `(popup-isearch-match ((t (:background "sky blue" :foreground "red"))))
     `(semantic-tag-boundary-face ((t (:overline "#303030"))))
     `(font-lock-warning-face ((t (:foreground "#B34949" :weight normal :underline nil))))

     `(match ((t (:background unspecified :foreground "RoyalBlue2"))))

     `(mumamo-background-chunk-major ((t (:background "#202020"))))
     `(mumamo-background-chunk-submode1 ((t (:background "gray10"))))
     `(mumamo-background-chunk-submode2 ((t (:background "gray10"))))
     `(mumamo-background-chunk-submode3 ((t (:background "gray10"))))
     `(mumamo-background-chunk-submode4 ((t (:background "gray10"))))

     `(ebrowse-root-class ((t (:foreground "#f1aa7e" :weight normal ))))
     `(ebrowse-member-class ((t (:foreground "#f1aa7e" :weight normal ))))

     `(buffer-menu-star-buffer ((t (:foreground ,comment :slant normal))))
     `(buffer-menu-buffer-name ((t (:foreground ,color2 :weight normal))))
     `(buffer-menu-read-only-mark ((t (:foreground ,strings))))
     `(buffer-menu-directory-buffer ((t (:foreground ,color3 :background unspecified))))

     `(buffer-menu-mode ((t (:foreground ,color3))))
     `(buffer-menu-file-name ((t (:foreground ,color3))))
     `(buffer-menu-modified-mark ((t (:foreground ,strings))))
     `(buffer-menu-size ((t (:foreground ,color3))))

     `(git-gutter-fr:deleted  ((t (:foreground "#722"))))
     `(git-gutter-fr:added    ((t (:foreground "#393"))))
     `(git-gutter-fr:modified ((t (:foreground "#CA0"))))
     `(git-gutter-fr+-deleted  ((t (:foreground "#722"))))
     `(git-gutter-fr+-added    ((t (:foreground "#393"))))
     `(git-gutter-fr+-modified ((t (:foreground "#CA0"))))

     `(diff-hl-delete ((t (:foreground "#853434"))))
     `(diff-hl-insert ((t (:foreground "#3B7C3B"))))
     `(diff-hl-change ((t (:foreground "#45517C"))))

     `(dired-ignored ((t (:inherit shadow :foreground "#999"))))
     `(dired-k-added ((t (:foreground ,coloradd :weight bold))))
     `(dired-k-commited ((t (:foreground ,coloradd :weight bold))))
     `(dired-k-directory ((t nil)))
     `(dired-k-modified ((t (:foreground ,colorrem :weight bold))))
     `(dired-k-untracked ((t (:foreground "#8B3D3D" :weight bold))))

     `(org-table ((t (:foreground ,bluefg2))))
     `(markdown-table-face ((t (:foreground ,bluefg2))))

     `(org-meta-line ((t (:inherit font-lock-comment-face))))
     `(org-block-end-line ((t (:inherit org-block-begin-line))))

     `(org-block ((t (:inherit default :foreground ,bluefg2 :background "#242424"))))
     `(markdown-pre-face ((t (:inherit default :foreground ,bluefg2 :background "#242424"))))

     `(org-code ((t (:foreground ,bluefg2))))
     `(markdown-inline-code-face ((t (:foreground ,bluefg2))))
     `(org-verbatim ((t (:foreground ,strings))))

     `(markdown-url-face ((t (:foreground ,link))))

     `(fill-column-indicator ((t (:foreground ,winframe))))

     ;; Make org-indent fake indentation blend with fringe
     `(org-indent ((t (:background ,winframe-fringe-bg))))
     `(org-hide ((t (:background ,winframe-fringe-bg :foreground ,winframe-fringe-bg))))
     ;; org-indent-boundary-char is not fontified, see below for workarround

     ;; Outlines (org, markdown)
     `(outline-base ((t ())))
     `(outline-1 ((t (:inherit outline-base :height 1.2 :foreground ,color1))))
     `(outline-2 ((t (:inherit outline-base :height 1.1 :foreground ,color2))))
     `(outline-3 ((t (:inherit outline-base :height 1.0 :foreground ,color3))))
     `(outline-4 ((t (:inherit outline-base :foreground ,color4))))
     `(outline-5 ((t (:inherit outline-base :foreground ,strings))))
     `(outline-6 ((t (:inherit outline-base :foreground ,doc))))
     `(outline-7 ((t (:inherit outline-base :foreground ,comment))))
     `(markdown-header-delimiter-face ((t (:inherit outline-1 :foreground ,comment))))
     `(markdown-header-face ((t (:inherit outline-base))))
     `(markdown-header-face-1 ((t (:inherit outline-1))))
     `(markdown-header-face-2 ((t (:inherit outline-2))))
     `(markdown-header-face-3 ((t (:inherit outline-3))))
     `(markdown-header-face-4 ((t (:inherit outline-4))))
     `(markdown-header-face-5 ((t (:inherit outline-5))))
     `(markdown-header-face-6 ((t (:inherit outline-6))))

     ;;
     ;; wgrep
     ;;
     `(wgrep-delete-face ((t :background ,colorrem-bg)))
     `(wgrep-face ((t :background ,colorC-bg)))
     `(wgrep-file-face ((t :background ,colorC-bg)))
     `(wgrep-done-face ((t :background ,coloradd-bg)))

     ;;
     ;; compilation
     ;;
     `(success ((t (:foreground ,coloradd :weight normal :underline nil))))
     `(error   ((t (:foreground ,colorrem :weight normal :underline nil))))
     `(warning ((t (:foreground ,color2   :weight normal :underline nil))))

     `(compilation-message-face-face ((t (:background "#181818"))))
     `(compilation-column-number ((t (:inherit shadow))))
     `(compilation-line-number ((t (:inherit shadow))))
     ;;`(compilation-error ((t (:inherit error))))
     ;;`(compilation-info ((t (:foreground "#6AAB6A" :underline nil :weight normal))))
     ;;`(compilation-warning ((t (:foreground "#66D466" :underline nil :weight normal))))
     ;;`(compilation-message-face-face ((t (:background "#111"))))
     `(compilation-mode-line-exit ((t (:inherit compilation-info :weight bold))))
     `(compilation-mode-line-fail ((t (:inherit compilation-error :weight bold))))

     ;; `(compilation-warning ((t (:foreground "#66D466" :weight normal :underline nil))))
     ;; `(compilation-info ((t (:foreground "#79B379" :weight normal :underline nil))))

     `(flymake-errline ((t (:background unspecified :underline "#CC2222"))))
     `(flymake-warnline ((t (:background unspecified :underline "#22CC22"))))
     `(flymake-note ((nil)))

     `(rtags-errline ((t (:background unspecified :underline "#CC2222"))))
     `(rtags-warnline ((t (:background unspecified :underline "#22CC22"))))
     `(rtags-fixitline ((t (:background unspecified :underline "#FFBB00"))))

     `(flycheck-inline-error   ((t (:inherit compilation-error   :background "#181818" :box (:line-width 4 :color "#181818")))))
     `(flycheck-inline-info    ((t (:inherit compilation-info    :background "#181818" :box (:line-width 4 :color "#181818")))))
     `(flycheck-inline-warning ((t (:inherit compilation-warning :background "#181818" :box (:line-width 4 :color "#181818")))))

     ;;
     ;; ediff
     ;;
     `(ediff-current-diff-A ((t (:background ,colorrem-bg2))))
     `(ediff-current-diff-B ((t (:background ,coloradd-bg2))))
     `(ediff-current-diff-C ((t (:background ,colorC-bg2))))
     `(ediff-current-diff-Ancestor ((t (:background ,colorD-bg2))))
     `(ediff-fine-diff-A ((t (:background ,colorrem-bg))))
     `(ediff-fine-diff-B ((t (:background ,coloradd-bg))))
     `(ediff-fine-diff-C ((t (:background ,colorC-bg))))
     `(ediff-fine-diff-Ancestor ((t (:background ,colorD-bg))))
     `(ediff-even-diff-A ((t (:background ,bg-hl))))
     `(ediff-even-diff-B ((t (:background ,bg-hl))))
     `(ediff-even-diff-C ((t (:background ,bg-hl))))
     `(ediff-even-diff-Ancestor ((t (:background ,bg-hl))))
     `(ediff-odd-diff-A ((t (:background ,bg-hl))))
     `(ediff-odd-diff-B ((t (:background ,bg-hl))))
     `(ediff-odd-diff-C ((t (:background ,bg-hl))))
     `(ediff-odd-diff-Ancestor ((t (:background ,bg-hl))))

     ;;
     ;; diff
     ;;
     `(diff-context ((t nil)))
     `(diff-file-header ((t (:background "#aaa" :foreground "#000" :weight bold))))
     `(diff-function ((t (:inherit diff-file-header))))
     `(diff-header ((t (:background "#aaa" :foreground "#555" :weight bold))))

     `(diff-indicator-removed ((t (:background ,colorrem :foreground ,background))))
     `(diff-indicator-added   ((t (:background ,coloradd :foreground ,background))))

     `(diff-removed ((t (:background unspecified :foreground ,colorrem))))
     `(diff-added ((t (:background unspecified :foreground ,coloradd))))
     `(diff-refine-removed ((t (:background ,colorrem-bg))))
     `(diff-refine-added   ((t (:background ,coloradd-bg))))

     ;;
     ;; smerge
     ;;
     `(smerge-base ((t (:background "#181818"))))
     `(smerge-lower ((t (:background "#181818"))))
     `(smerge-markers ((t (:background "#181818"))))
     `(smerge-refined-added ((t (:background ,coloradd-bg))))
     `(smerge-refined-removed ((t (:background ,colorrem-bg))))
     `(smerge-upper ((t (:background "#181818"))))

     ;;
     ;; magit
     ;;
     `(magit-item-highlight ((t (:background ,bg-hl))))
     `(magit-section-highlight ((t (:background ,bg-hl))))
     `(magit-diff-context ((t nil)))
     `(magit-diff-context-highlight ((t (:background ,bg-hl))))

     `(magit-diff-file-heading ((t (:foreground ,bluefg2
                                                :height 1.2
                                                ;; :box (:line-width 4 :color ,background)
                                                ))))
     `(magit-diff-file-heading-highlight ((t (:background ,bg-hl
                                                          ;; :box (:line-width 4 :color ,bg-hl)
                                                       ))))
     `(magit-diff-hunk-heading ((t (:foreground ,bluefg4))))
     `(magit-diff-hunk-heading-highlight ((t (:inherit magit-diff-hunk-heading :background ,bg-hl))))
     `(magit-diff-revision-summary ((t (:height 1.2))))
     `(magit-diff-revision-summary-highlight ((t ())))

     `(magit-diff-none ((nil ())))
     ;`(magit-diff-removed-highlight ((t (:background ,background :foreground ,colorrem))))
     ;`(magit-diff-added-highlight ((t (:background ,background :foreground ,coloradd))))
     `(magit-diff-removed-highlight ((t (:background ,bg-hl :foreground ,colorrem))))
     `(magit-diff-added-highlight ((t (:background ,bg-hl :foreground ,coloradd))))
     `(magit-diff-removed ((t (:foreground ,colorrem))))
     `(magit-diff-added ((t (:foreground ,coloradd))))

     `(magit-branch-local ((t (:foreground "DarkSeaGreen2"))))
     `(magit-branch-remote ((t (:foreground "LightSkyBlue1"))))
     ;; disable remote head branch face, make it like any other remote branch
     `(magit-branch-remote-head ((t (:inherit magit-branch-remote))))

     `(transient-disabled-suffix ((t (:background "red4" :foreground "black" :weight bold))))
     `(transient-enabled-suffix ((t (:background "green4" :foreground "black" :weight bold))))
     `(transient-mismatched-key ((t (:background "#302820"))))
     `(transient-nonstandard-key ((t (:background "#302820"))))

     ;;
     ;; auto-highlight-symbol
     ;;
     `(ahs-plugin-default-face ((t (:foreground unspecified :background unspecified :underline ,cursor))))
     `(ahs-face ((t (:foreground unspecified :background unspecified :underline "Orange1"))))
     `(ahs-definition-face ((t (:foreground unspecified :background unspecified :underline t))))

     ;;
     ;; rtags
     ;;
     `(rtags-skippedline ((t (:background unspecified))))

     ;;
     ;; Man
     ;;
     `(Man-overstrike ((t (:foreground ,ansi-bold-blue :weight bold))))
     `(Man-underline ((t (:foreground ,ansi-bold-cyan :weight bold))))

     ;;
     ;; ido
     ;;
     `(ido-first-match ((t (:foreground ,link))))
     `(ido-only-match ((t (:foreground ,link))))
     `(ido-virtual ((t (:foreground ,comment))))
     `(ido-subdir ((t nil)))

     ;;
     ;; helm
     ;;
     `(helm-header ((t (:inherit header-line))))
     `(helm-source-header ((t (:foreground ,color2 :box (:line-width 3 :color ,background)))))
     `(helm-match ((t (:foreground ,color1))))
     `(helm-selection ((t (:background ,selection))))
     `(helm-visible-mark ((t (:weight bold))))
     `(helm-action ((t nil)))
     ;; in mode line
     `(helm-candidate-number ((t (:foreground ,color2))))
     ;; grep
     `(helm-grep-file ((t (:inherit compilation-info))))
     `(helm-grep-finish ((t nil)))
     `(helm-grep-lineno ((t (:inherit compilation-line-number))))
     `(helm-grep-match ((t (:foreground ,color1))))
     ;; helm files
     `(helm-ff-denied ((t (:foreground "#c22"))))
     `(helm-ff-directory ((t (:inherit font-lock-function-name-face))))
     `(helm-ff-dotted-directory ((t (:foreground "#999"))))
     `(helm-ff-executable ((t (:foreground "#2c2"))))
     `(helm-ff-file ((t (:inherit default))))
     `(helm-ff-invalid-symlink ((t (:background "black" :foreground "#c22"))))
     `(helm-ff-file-extension ((t)))
     ;; buffers
     `(helm-buffer-file ((t (:inherit default))))
     `(helm-buffer-modified ((t (:foreground "orange"))))
     `(helm-buffer-directory ((t (:inherit font-lock-function-name-face))))
     `(helm-buffer-saved-out ((t (:foreground "#c22")))) ;; modified outside
     `(helm-non-file-buffer ((t (:foreground "#999"))))
     ;; helm-ls-git
     `(helm-ls-git-added-copied-face ((t (:foreground ,term-green))))
     `(helm-ls-git-added-modified-face ((t (:foreground ,term-yellow)))) ;; new file, added and modified
     `(helm-ls-git-untracked-face ((t (:foreground ,term-red))))
     `(helm-ls-git-deleted-not-staged-face ((t (:foreground ,term-blue))))
     `(helm-ls-git-deleted-and-staged-face ((t (:foreground ,term-green))))
     `(helm-ls-git-modified-not-staged-face ((t (:foreground ,term-blue))))
     `(helm-ls-git-modified-and-staged-face ((t (:foreground ,term-green))))

     ;;
     ;; ivy
     ;;
     `(ivy-current-match ((t (:background ,selection))))
     `(ivy-minibuffer-match-face-1 ((t (:background ,selection))))
     `(ivy-minibuffer-match-face-2 ((t (:foreground ,color2))))
     `(ivy-minibuffer-match-face-3 ((t (:inherit ivy-minibuffer-match-face-2))))
     `(ivy-minibuffer-match-face-4 ((t (:inherit ivy-minibuffer-match-face-2))))

     ;;
     ;; history
     ;;
     `(history-prompt ((t (:inherit minibuffer-prompt))))
     `(history-current-history ((t (:background ,cursor :foreground ,background))))
     `(history-other-history ((t nil)))

     ;;
     ;; visible-mark
     ;;
     `(visible-mark-face1 ((t (:background "#080808" :foreground unspecified))))
     `(visible-mark-face2 ((t (:background "#181818" :foreground unspecified))))

     ;;
     ;; which-key
     ;;
     `(which-key-command-description-face ((t :foreground ,color2)))
     `(which-key-key-face ((t :foreground ,color1)))

     ;;
     ;; evil
     ;;
     `(evil-goggles-delete-face ((t (:background ,colorrem-bg2))))
     `(evil-goggles-paste-face ((t (:background ,coloradd-bg2))))
     `(evil-goggles-yank-face ((t (:background ,colorD-bg2))))

     )

    (when window-system
        (set-face-background 'default background))

    ;; ;;
    ;; ;; Enable Window Divider (pixel/border line between windows)
    ;; ;;
    ;; (when window-system
    ;;     (setq-default
    ;;      window-divider-default-places t ;; 'right-only
    ;;      window-divider-default-bottom-width 4
    ;;      window-divider-default-right-width 4
    ;;      )
    ;;   (window-divider-mode 1)
    ;;   )

    ;;
    ;; Workaround to make org-indent fake indentation blend with fringe.
    ;;
    ;; Org-indent last space (org-indent-boundary-char) is not fontified, it has
    ;; default face. Workarround that by hiding it a zero-width whitespace.
    ;;
    (when window-system
        (setq-default
         org-indent-boundary-char ?​;; << there is a zero-width space here between ? and ;
        ))

    ;; if we are in a windowed emacs, set the backgroud, else let it transparent for terminals
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (select-frame frame)
                (when (window-system frame)
                    (set-face-background 'default "#101010"))
                ))

    (setq-default
     ansi-color-names-vector
     (vector
      "#666666" term-red term-green term-yellow term-blue term-mangenta term-cyan "#ffffff"
      ))
    ;; rustic use xterm-color and defines it's own default colors
    (setq-default rustic-ansi-faces ansi-color-names-vector)

    ;; #9CABBA
    ;; #A59FA8
    ;; #AE9397
    ;; #B88886
    ;; #C17C75
    ;; #CB7164
    ;; #D46553
    ;; #DD5942
    ;; #E74E31
    ;; #F04220
    ;; #FA370F
    (setq-default dired-k-size-colors
                  '((10000     . "#9CABBA") ; 10K
                    (50000     . "#AE9397") ; 50K
                    (100000    . "#B88886") ; 100K
                    (1000000   . "#CB7164") ; 1M
                    (10000000  . "#DD5942") ; 10M
                    (100000000 . "#F04220") ; 100M
                    )
                  dired-k-date-colors
                  '((0        . "red")     ; 0
                    (86400    . "#d0d0d0") ; 1day
                    (604800   . "#b0b0b0") ; 1week
                    (2419200  . "#909090") ; 4weeks
                    (15778800 . "#707070") ; 6months
                    (31557600 . "#505050") ; 1year
                    )
                  )

    ;; (setq buffer-menu-buffer-font-lock-keywords
    ;;     '(("^....[*]Man .*Man.*" . font-lock-variable-name-face) ; Man page
    ;;       (".*Dired.*"       . font-lock-comment-face)   ; Dired
    ;;       ("^....[*]shell.*"   . font-lock-preprocessor-face)  ; shell buff
    ;;       (".*[*]scratch[*].*"   . font-lock-function-name-face) ; scratch buffer
    ;;       ("^....[*].*"      . font-lock-string-face)    ; "*" named buffers
    ;;       ("^..[*].*"        . font-lock-constant-face)    ; Modified
    ;;       ("^.[%].*"       . font-lock-keyword-face)))   ; Read only
    ;; (defun buffer-menu-custom-font-lock  ()
    ;;   (let ((font-lock-unfontify-region-function
    ;;      (lambda (start end)
    ;;        (remove-text-properties start end '(font-lock-face nil)))))
    ;;     (font-lock-unfontify-buffer)
    ;;     (set (make-local-variable 'font-lock-defaults)
    ;;      '(buffer-menu-buffer-font-lock-keywords t))
    ;;     (font-lock-fontify-buffer)))
    ;; (add-hook 'buffer-menu-mode-hook 'buffer-menu-custom-font-lock)
    ;; (add-hook 'electric-buffer-menu-mode-hook 'buffer-menu-custom-font-lock)

    (defface compilation-message-face-face
      '((t :inherit underline))
      "compilation-message-face."
      :group 'compilation)
    (setq-default compilation-message-face 'compilation-message-face-face)

    (defface outline-base
      '((t))
      "Face inherited by all outlines."
      :group 'outlines)

    )
  )

(provide-theme 'autumn)

;;EOF

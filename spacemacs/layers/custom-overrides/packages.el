;;; packages.el --- custom-overrides layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: szujek <szujek@szujowisko>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `custom-overrides-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `custom-overrides/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `custom-overrides/pre-init-PACKAGE' and/or
;;   `custom-overrides/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst custom-overrides-packages
  '()
  "")

(defun custom-overrides/pre-init-PACKAGE ()
  (require 'evil)
  (require 'javascript)
  )

(defun custom-overrides/split-vertical ()
  (split-window-below)
  (evil-window-down)
  )

;;; packages.el ends here

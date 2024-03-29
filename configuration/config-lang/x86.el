;;; config-lang/x86.el --- Configure for editing x86 code -*- lexical-binding: t -*-
(eval-when-compile
  (require 'use-package))
(eval-and-compile
  (require 'bind-key))

(require 'asm-mode)

(use-package x86-lookup
  :when (executable-find "pdftotext")
  
  :custom
  (x86-lookup-browse-pdf-function #'x86-lookup-browse-pdf-pdf-tools)
  (x86-lookup-pdf (expand-file-name "~/Documents/Intel64-Manual-Vol-2.pdf"))

  :config
  (require 'config-pdf)
  
  :bind
  (:map asm-mode-map
		("C-h x" . x86-lookup)))

(provide 'config-lang/x86)

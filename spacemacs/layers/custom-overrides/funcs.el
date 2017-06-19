(defun bb/setup-term-mode ()
  (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r)
  (evil-local-set-key 'insert (kbd "C-c") 'bb/send-C-c))

(defun bb/send-C-r ()
  (interactive)
  (term-send-raw-string "\C-r"))

(defun bb/send-C-c ()
  (interactive)
  (term-send-raw-string "\C-c"))

(add-hook 'term-mode-hook 'bb/setup-term-mode)

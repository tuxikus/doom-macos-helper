;;; os/macos-helper/open-in-cursor.el -*- lexical-binding t -*-

;;;###autoload
(defun +macos-helper/open-current-file-in-cursor ()
  (interactive)
  (let ((path (buffer-file-name)))
    (shell-command (concat "cursor " path))))

;;;###autoload
(defun +macos-helper/open-current-project-in-cursor ()
  (interactive)
  (let ((project (projectile-project-root)))
    (shell-command (concat "cursor " project))))

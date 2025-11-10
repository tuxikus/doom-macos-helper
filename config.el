;;; os/macos-helper/config.el -*- lexical-binding t -*-

(defun +macos-helper/open-current-file-in-cursor ()
  (interactive)
  (let ((path (buffer-file-name)))
    (shell-command (concat "cursor " path))))

(defun +macos-helper/open-current-project-in-cursor ()
  (interactive)
  (let ((project (projectile-project-root)))
    (shell-command (concat "cursor " project))))

;;; doom-xcode-theme.el --- ibased off of Apple's Xcode Dark Theme -*- no-byte-compile: t; -*-
(require 'doom-themes)

(defgroup doom-xcode-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-xcode-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-xcode-theme
  :type '(choice integer boolean))

(def-doom-theme doom-xcode
  "A theme based off of the Xcode Dark Theme"

  ;; name        gui       256       16
  ((bg         '("#292A30" nil       nil          ))
   (bg-alt     '("#252629" nil       nil          ))
   (base0      '("#0d0d0d" "black"   "black"      ))
   (base1      '("#1b1b1b" "#1b1b1b"              ))
   (base2      '("#212122" "#1e1e1e"              ))
   (base3      '("#292b2b" "#292929" "brightblack"))
   (base4      '("#3f4040" "#3f3f3f" "brightblack"))
   (base5      '("#5c5e5e" "#525252" "brightblack"))
   (base6      '("#757878" "#6b6b6b" "brightblack"))
   (base7      '("#969896" "#979797" "brightblack"))
   (base8      '("#ffffff" "#ffffff" "white"      ))
   (fg         '("#FFFFFF" "#ffffff" "white"))
   (fg-alt     (doom-darken fg 0.4))

   (red        '("#F16A5E" "#F16A5E" "red"))
   (orange     '("#F9C79B" "#D8C77B" "orange"))
   (yellow     '("#D8C77B" "#D8C77B" "yellow"))
   (green      '("#9BD46A" "#9BD46A" "green"))
   (blue       '("#59B0CF" "#59B0CF" "brightblue"))
   (teal       blue) ; FIXME replace with real teal
   (magenta    '("#c9b4cf" "#c9b4cf" "magenta"))
   (cyan       '("#8abeb7" "#8abeb7" "cyan"))
   (dark-cyan  (doom-darken cyan 0.4))


   (grey       '("#818C98" "#818C98" "brightblack"))
   (light-green'("#95D1C4" "#95D1C4" "lightgreen"))
   (violet     '("#A29DF5" "#A29DF5" "brightmagenta"))
   (light-blue '("#77E8FF" "#77E8FF" "lightblue"))
   (dark-blue  '("#41B2D0" "#41B2D0" "darkblue"))
   (pink       '("#F47AB0" "#F47AB0" "pink"))

   ;; face categories
   (highlight      blue)
   (vertical-bar   `("#161616" ,@base0))
   (selection      `(,(car (doom-lighten bg 0.1)) ,@(cdr base4)))
   (builtin        light-green)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.14))
   (constants      dark-blue)
   (functions      red)
   (keywords       pink)
   (methods        red)
   (operators      fg)
   (type           light-blue)
   (strings        light-green)
   (variables      dark-blue)
   (numbers        violet)
   (region         selection)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    fg-alt)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg     `(,(doom-darken (car bg-alt) 0.3) ,@(cdr base3)))
   (modeline-bg-alt `(,(car bg) ,@(cdr base1)))
   (modeline-fg     base8)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-xcode-padded-modeline
      (if (integerp doom-xcode-padded-modeline)
          doom-xcode-padded-modeline
        4))))

  ;; --- faces ------------------------------
  ((doom-modeline-buffer-path       :foreground dark-blue :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)

   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground orange :bold bold)

   (font-lock-keyword-face :inherit 'bold :foreground keywords)

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground teal)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt))))

  ;; --- variables --------------------------
  ;; ()
  )

(provide 'doom-xcode-theme)
;;; doom-xcode-theme.el ends here

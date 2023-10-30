;;; modus-operandi-tinted-theme.el --- Elegant, highly legible theme with a light ochre background -*- lexical-binding:t -*-

;; Copyright (C) 2019-2023  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Modus-Themes Development <~protesilaos/modus-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/modus-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/modus-themes

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The Modus themes conform with the highest standard for
;; color-contrast accessibility between background and foreground
;; values (WCAG AAA).  Please refer to the official Info manual for
;; further documentation (distributed with the themes, or available
;; at: <https://protesilaos.com/emacs/modus-themes>).

;;; Code:



(eval-and-compile
  (unless (and (fboundp 'require-theme)
               load-file-name
               (equal (file-name-directory load-file-name)
                      (expand-file-name "themes/" data-directory))
               (require-theme 'modus-themes t))
    (require 'modus-themes))

;;;###theme-autoload
  (deftheme modus-operandi-tinted
    "Elegant, highly legible theme with a light ochre background.
Conforms with the highest legibility standard for color contrast
between background and foreground in any given piece of text,
which corresponds to a minimum contrast in relative luminance of
7:1 (WCAG AAA standard)."
    :background-mode 'light
    :kind 'color-scheme
    :family 'modus)

  (defconst modus-operandi-tinted-palette
    '(
;;; Basic values

      (bg-main          "#f6fff9")
      (bg-dim           "#e8f0f0")
      (fg-main          "#34494a")
      (fg-dim           "#777294")
      (fg-alt           "#9d5e7a")
      (bg-info          "#BEC23F")
      (bg-err           "#F17C67")
      (bg-active        "#c0c6c3")
      (bg-inactive      "#f0f8f4")
      (border           "#376751")

;;; Common accent foregrounds

      (orange          "#FFB11B")
      (red             "#a60000")
      (red-warmer      "#972500")
      (red-cooler      "#a0132f")
      (red-faint       "#7f0000")
      (red-intense     "#d00000")
      (green           "#006800")
      (green-warmer    "#316500")
      (green-cooler    "#00663f")
      (green-faint     "#2a5045")
      (green-intense   "#008900")
      (yellow          "#6f5500")
      (yellow-warmer   "#884900")
      (yellow-cooler   "#7a4f2f")
      (yellow-faint    "#624416")
      (yellow-intense  "#808000")
      (blue            "#0031a9")
      (blue-warmer     "#3548cf")
      (blue-cooler     "#0000b0")
      (blue-faint      "#003497")
      (blue-intense    "#0000ff")
      (magenta         "#721045")
      (magenta-warmer  "#8f0075")
      (magenta-cooler  "#531ab6")
      (magenta-faint   "#7c318f")
      (magenta-intense "#dd22dd")
      (cyan            "#005e8b")
      (cyan-warmer     "#3f578f")
      (cyan-cooler     "#005f5f")
      (cyan-faint      "#005077")
      (cyan-intense    "#008899")


;;; Uncommon accent foregrounds

      (rust       "#B54434")
      (gold       "#CA7A2C")
      (olive      "#838A2D")
      (slate      "#4E4F97")
      (indigo     "#77428D")
      (maroon     "#C1328E")
      (pink       "#A8497A")

;;; Common accent backgrounds

      (bg-red-intense     "#ff8f88")
      (bg-green-intense   "#6fdf30")
      (bg-yellow-intense  "#efcf00")
      (bg-blue-intense    "#afdfff")
      (bg-magenta-intense "#df8fff")
      (bg-cyan-intense    "#88cfe0")

      (bg-red-subtle      "#ffcfbf")
      (bg-green-subtle    "#afffbf")
      (bg-yellow-subtle   "#fff576")
      (bg-blue-subtle     "#ccdfff")
      (bg-magenta-subtle  "#ffddff")
      (bg-cyan-subtle     "#bfefff")

      (bg-red-nuanced     "#350f14")
      (bg-green-nuanced   "#002718")
      (bg-yellow-nuanced  "#2c1f00")
      (bg-blue-nuanced    "#131c4d")
      (bg-magenta-nuanced "#2f133f")
      (bg-cyan-nuanced    "#04253f")

;;; Graphs

      (bg-graph-red-0     "#ef7969")
      (bg-graph-red-1     "#ffaab4")
      (bg-graph-green-0   "#2fe029")
      (bg-graph-green-1   "#75ef30")
      (bg-graph-yellow-0  "#ffcf00")
      (bg-graph-yellow-1  "#f9ff00")
      (bg-graph-blue-0    "#7f90ff")
      (bg-graph-blue-1    "#9fc6ff")
      (bg-graph-magenta-0 "#e07fff")
      (bg-graph-magenta-1 "#fad0ff")
      (bg-graph-cyan-0    "#70d3f0")
      (bg-graph-cyan-1    "#afefff")

;;; Special purpose

      (bg-completion      "#ccedff")
      (bg-hover           "#ffc09f")
      (bg-hover-secondary "#f0bfff")
      (bg-hl-line         "#f9e0e5")
      (bg-region          "#d0e6ff")
      (fg-region             fg-main)
      (fg-comment          "#808F7C")

      (bg-char-0 "#7feaff")
      (bg-char-1 "#ffaaff")
      (bg-char-2 "#dff000")

      (bg-mode-line-active        "#ace6c1")
      (fg-mode-line-active        "#243228")
      (border-mode-line-active    "#ccffeb")
      (bg-mode-line-inactive      "#e1e6e3")
      (fg-mode-line-inactive      "#969696")
      (border-mode-line-inactive  "#c0c6c3")

      (modeline-err     "#9f0030")
      (modeline-warning "#5f0f9f")
      (modeline-info    "#1240af")

      (bg-tab-bar         bg-main)
      (bg-tab-current     bg-main)
      (bg-tab-other       bg-main)

;;; Diffs
      (bg-added           "#c9ffda")
      (bg-added-faint     "#d7ffe5")
      (bg-added-refine    "#b3efcf")
      (bg-added-fringe    "#23884f")
      (fg-added           "#005000")
      (fg-added-intense   "#80e080")

      (bg-changed         "#f0e8bd")
      (bg-changed-faint   "#f5efcb")
      (bg-changed-refine  "#efd299")
      (bg-changed-fringe  "#edce5f")
      (fg-changed         "#553d00")
      (fg-changed-intense "#c0b05f")

      (bg-removed         "#ffd6e0")
      (bg-removed-faint   "#ffe9e6")
      (bg-removed-refine  "#f5bfc8")
      (bg-removed-fringe  "#b81a26")
      (fg-removed         "#8f1313")
      (fg-removed-intense "#ff9095")

      (bg-diff-context    "#e9f0f0")

;;; Uncommon accent backgrounds

      (bg-ochre    "#442c2f")
      (bg-lavender "#38325c")
      (bg-sage     "#0f3d30")

;;; Paren match

      (bg-paren-match        "#7fddd0")
      (bg-paren-expression   "#9c628e")
      (underline-paren-match unspecified)

;;; Mappings

;;;; General mappings

      (fringe bg-dim)
      (cursor maroon)

      (keybind blue-cooler)
      (name magenta)
      (identifier yellow-faint)

      (err red)
      (warning yellow-warmer)
      (info cyan-cooler)

      (underline-err red-intense)
      (underline-warning yellow)
      (underline-note cyan)

      (bg-prominent-err bg-red-intense)
      (fg-prominent-err fg-main)
      (bg-prominent-warning bg-yellow-intense)
      (fg-prominent-warning fg-main)
      (bg-prominent-note bg-cyan-intense)
      (fg-prominent-note fg-main)

;;;; Code mappings

      (builtin magenta-warmer)
      (comment fg-comment)
      (constant blue-cooler)
      (docstring cyan-faint)
      (docmarkup magenta-faint)
      (fnname magenta)
      (keyword magenta-cooler)
      (preprocessor red-cooler)
      (string blue-warmer)
      (type cyan-cooler)
      (variable cyan)
      (rx-construct green-cooler)
      (rx-backslash magenta)

;;;; Accent mappings

      (accent-0 blue-cooler)
      (accent-1 magenta-warmer)
      (accent-2 cyan-cooler)
      (accent-3 yellow)

;;;; Button mappings

      (fg-button-active fg-main)
      (fg-button-inactive fg-dim)
      (bg-button-active bg-active)
      (bg-button-inactive bg-dim)

;;;; Completion mappings

      (fg-completion-match-0 cyan-intense)
      (fg-completion-match-1 red-warmer)
      (fg-completion-match-2 magenta)
      (fg-completion-match-3 cyan-cooler)
      (bg-completion-match-0 unspecified)
      (bg-completion-match-1 unspecified)
      (bg-completion-match-2 unspecified)
      (bg-completion-match-3 unspecified)

;;;; Date mappings

      (date-common cyan)
      (date-deadline red)
      (date-event fg-alt)
      (date-holiday red-cooler)
      (date-holiday-other blue)
      (date-now fg-main)
      (date-range fg-alt)
      (date-scheduled yellow-warmer)
      (date-weekday cyan)
      (date-weekend red-faint)

;;;; Line number mappings

      (fg-line-number-inactive fg-dim)
      (fg-line-number-active fg-main)
      (bg-line-number-inactive bg-main)
      (bg-line-number-active bg-dim)

;;;; Link mappings

      (fg-link blue-warmer)
      (bg-link unspecified)
      (underline-link blue-warmer)

      (fg-link-symbolic cyan)
      (bg-link-symbolic unspecified)
      (underline-link-symbolic cyan)

      (fg-link-visited magenta)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)

;;;; Mail mappings

      (mail-cite-0 blue-warmer)
      (mail-cite-1 yellow-cooler)
      (mail-cite-2 cyan-cooler)
      (mail-cite-3 red-cooler)
      (mail-part blue)
      (mail-recipient magenta-cooler)
      (mail-subject magenta-warmer)
      (mail-other magenta-faint)

;;;; Mark mappings

      (bg-mark-delete bg-red-subtle)
      (fg-mark-delete red-cooler)
      (bg-mark-select bg-cyan-subtle)
      (fg-mark-select cyan)
      (bg-mark-other bg-yellow-subtle)
      (fg-mark-other yellow)

;;;; Prompt mappings

      (fg-prompt fg-main)
      (bg-prompt unspecified)
      (bg-space-err bg-red-intense)

;;;; Prose mappings

      (prose-block fg-dim)
      (prose-code cyan-cooler)
      (prose-done green)
      (prose-macro magenta-cooler)
      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)
      (prose-table fg-alt)
      (prose-tag magenta-faint)
      (prose-todo red)
      (prose-verbatim magenta-warmer)

;;;; Rainbow mappings

      (rainbow-0 fg-main)
      (rainbow-1 magenta-intense)
      (rainbow-2 cyan-intense)
      (rainbow-3 red-warmer)
      (rainbow-4 yellow-intense)
      (rainbow-5 magenta-cooler)
      (rainbow-6 green-intense)
      (rainbow-7 blue-warmer)
      (rainbow-8 magenta-warmer)

;;;; Space mappings

      (bg-space unspecified)
      (fg-space border)

;;;; Terminal mappings

      (bg-term-black           "black")
      (fg-term-black           "black")
      (bg-term-black-bright    "gray35")
      (fg-term-black-bright    "gray35")

      (bg-term-red             red)
      (fg-term-red             red)
      (bg-term-red-bright      red-warmer)
      (fg-term-red-bright      red-warmer)

      (bg-term-green           green)
      (fg-term-green           green)
      (bg-term-green-bright    green-cooler)
      (fg-term-green-bright    green-cooler)

      (bg-term-yellow          yellow)
      (fg-term-yellow          yellow)
      (bg-term-yellow-bright   yellow-warmer)
      (fg-term-yellow-bright   yellow-warmer)

      (bg-term-blue            blue)
      (fg-term-blue            blue)
      (bg-term-blue-bright     blue-warmer)
      (fg-term-blue-bright     blue-warmer)

      (bg-term-magenta         magenta)
      (fg-term-magenta         magenta)
      (bg-term-magenta-bright  magenta-cooler)
      (fg-term-magenta-bright  magenta-cooler)

      (bg-term-cyan            cyan)
      (fg-term-cyan            cyan)
      (bg-term-cyan-bright     cyan-cooler)
      (fg-term-cyan-bright     cyan-cooler)

      (bg-term-white           "gray65")
      (fg-term-white           "gray65")
      (bg-term-white-bright    "white")
      (fg-term-white-bright    "white")

;;;; Heading mappings

      (fg-heading-0 red-cooler)
      (fg-heading-1 red-faint)
      (fg-heading-2 yellow-faint)
      (fg-heading-3 blue-faint)
      (fg-heading-4 magenta)
      (fg-heading-5 green-faint)
      (fg-heading-6 magenta-faint)
      (fg-heading-7 cyan-faint)
      (fg-heading-8 fg-dim)

      (bg-heading-0 unspecified)
      (bg-heading-1 unspecified)
      (bg-heading-2 unspecified)
      (bg-heading-3 unspecified)
      (bg-heading-4 unspecified)
      (bg-heading-5 unspecified)
      (bg-heading-6 unspecified)
      (bg-heading-7 unspecified)
      (bg-heading-8 unspecified)

      (overline-heading-0 unspecified)
      (overline-heading-1 unspecified)
      (overline-heading-2 unspecified)
      (overline-heading-3 unspecified)
      (overline-heading-4 unspecified)
      (overline-heading-5 unspecified)
      (overline-heading-6 unspecified)
      (overline-heading-7 unspecified)
      (overline-heading-8 unspecified))
    "The entire palette of the `modus-operandi-tinted' theme.

Named colors have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a named color that already
exists in the palette and is associated with a HEX-VALUE.")

  (defcustom modus-operandi-tinted-palette-overrides nil
    "Overrides for `modus-operandi-tinted-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Modus themes,
refer to `modus-themes-common-palette-overrides'.

Theme-specific overrides take precedence over shared overrides.
The idea of common overrides is to change semantic color
mappings, such as to make the cursor red.  Wherea theme-specific
overrides can also be used to change the value of a named color,
such as what hexadecimal RGB value the red-warmer symbol
represents."
    :group 'modus-themes
    :package-version '(modus-themes . "4.0.0")
    :version "30.1"
    :type '(repeat (list symbol (choice symbol string)))
    :set #'modus-themes--set-option
    :initialize #'custom-initialize-default
    :link '(info-link "(modus-themes) Palette overrides"))

  (modus-themes-theme modus-operandi-tinted
                      modus-operandi-tinted-palette
                      modus-operandi-tinted-palette-overrides)

  (provide-theme 'modus-operandi-tinted))

;;; modus-operandi-tinted-theme.el ends here

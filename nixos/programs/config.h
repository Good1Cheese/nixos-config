/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int instant = 1;                     /* -n  option; if 1, dmenu ends immediately on a distinct match */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
    "JetBrains Mono Medium:size=10:antialias=true:autohint=true",
    "Hack Nerd Font:pixelsize=10:antialias=true:autohint=true", // Powerline
    "Symbola:pixelsize=10:antialias=true:autohint=true" // Unicode
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
    [SchemeNorm] = { "#d8dee9", "#1d1f21" },
    [SchemeSel] = { "#268bd2", "#444" },
    // [SchemeSelHighlight] = { "#ffc978", "#005577" },
    // [SchemeNormHighlight] = { "#ffc978", "#222222" },
    [SchemeOut] = { "#87cdff", "#444" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 8;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

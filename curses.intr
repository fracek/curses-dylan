module: curses

define interface
  #include "curses.h",
    equate: { "char *" => <c-string> },
    import: {
      // curs_attr
      "attroff",
      "wattroff",
      "attron",
      "wattron",
      "attrset",
      "wattrset",
      "color_set",
      "wcolor_set",
      "stanend",
      "wstandend",
      "standout",
      "wstandout",
      "attr_get",
      "wattr_get",
      "attr_off",
      "wattr_off",
      "attr_on",
      "wattr_on",
      "attr_set",
      "wattr_set",
      "chgat",
      "wchgat",
      "mvchgat",
      "mvwchgat",

      // curs_border
      "border",
      "wborder",
      "box",
      "hline",
      "whline",
      "vline",
      "wvline",
      "mvhline",
      "mvwhline",
      "mvvline",
      "mvwvline",

      // curs_border_set
      "border_set",
      "wborder_set",
      "box_set",
      "hline_set",
      "whline_set",
      "mvhline_set",
      "mvwhline_set",
      "vline_set",
      "wvline_set",
      "mvvline_set",
      "mvwvline_set",

      // curs_color
      "start_color",
      "init_pair",
      "init_color",
      "has_colors",
      "can_change_color",
      "color_content",
      "pair_content",
      "COLOR_BLACK",
      "COLOR_RED",
      "COLOR_GREEN",
      "COLOR_YELLOW",
      "COLOR_BLUE",
      "COLOR_MAGENTA",
      "COLOR_CYAN",
      "COLOR_WHITE",

      // curs_clear
      "erase",
      "werase",
      "clear",
      "wclear",
      "clrtobot",
      "wclrtobot",
      "clrtoeol",
      "wclrtoeol",

      // curs_delch
      "delch",
      "wdelch",
      "mvdelch",
      "mvwdelch",

      // curses_extend
      "curses_version",
      "use_extended_names",

      // curs_getch
      "getch",
      "wgetch",
      "mvgetch",
      "mvwgetch",
      "ungetch",
      "has_key",

      // curs_initscr
      "initscr",
      "endwin",
      "isendwin",
      "newterm",
      "set_term",
      "delscreen",

      // curs_inopts
      "cbreak",
      "nocbreak",
      "echo",
      "noecho",
      "halfdelay",
      "intrflush",
      "keypad",
      "meta",
      "nodelay",
      "raw",
      "noraw",
      "noqiflush",
      "qiflush",
      "notimeout",
      "timeout",
      "wtimeout",
      "typeahead",

      // curs_printw
      "printw",
      "wprintw",
      "mvprintw",
      "mvwprintw",
      "vwprintw",
      "vw_printw",

      // curs_refresh
      "refresh",
      "wrefresh",
      "wnoutrefresh",
      "doupdate",
      "redrawwin",
      "wredrawln",

      // curs_util
      "unctrl",
      "wunctrl",
      "keyname",
      "key_name",
      "filter",
      "nofilter",
      "use_env",
      "use_tioctl",
      "putwin",
      "getwin",
      "delay_output",
      "flushinp",

      // curs_window
      "newwin",
      "delwin",
      "mvwin",
      "subwin",
      "derwin",
      "mvderwin",
      "dupwin",
      "wsyncup",
      "syncok",
      "wcursyncup",
      "wsyncdown",

      // default_colors
      "use_default_colors",
      "assume_default_colors"
    }
end interface;

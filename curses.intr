module: curses

define interface
  #include "curses.h",
    equate: { "char *" => <c-string> },
    import: {
      "curses_version",

      // curs_color
      "start_color",
      "init_pair",
      "init_color",
      "has_colors",
      "can_change_color",
      "color_content",
      "pair_content"
    }
end interface;

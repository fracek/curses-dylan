module: dylan-user

define library curses
  use common-dylan;
  use c-ffi;
  use io;

  export curses;
end library;

define module curses
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use c-ffi;

  export
    curses-version;

  // curs_color
  export
    init-color,
    color-content,
    has-colors,
    init-pair,
    pair-content,
    start-color,
    can-change-color;
end module;

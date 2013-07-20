module: dylan-user

define library curses-test-suite
  use common-dylan;
  use curses;
  use io;
  use testworks;

  export curses-test-suite;
end library;

define module curses-test-suite
  use common-dylan, exclude: { format-to-string };
  use curses;
  use format;
  use streams;
  use format-out;
  use testworks;

  export curses-test-suite;
end module;

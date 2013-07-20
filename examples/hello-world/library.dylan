module: dylan-user

define library hello-world
  use common-dylan;
  use curses;
  use io;
end library;

define module hello-world
  use common-dylan, exclude: { format-to-string };
  use curses;
  use format-out;
end module;

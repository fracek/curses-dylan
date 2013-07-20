module: hello-world
synopsis: Simple ncurses example
author: Francesco Ceccon

define function main (name :: <string>, arguments :: <vector>)
  initscr();
  cbreak();
  refresh();
  let window = newwin(10, 40, 0, 0);
  box(window, 0, 0);
  mvwprintw(window, 0, 1, "press any key to exit.");
  wrefresh(window);
  getch();
  endwin();

  exit-application(0);
end function main;

main(application-name(), application-arguments());

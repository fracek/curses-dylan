module: curses

define C-pointer-type <short*> => <C-signed-short>;
define C-function color-content
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <short*>;
  input parameter arg3_ :: <short*>;
  input parameter arg4_ :: <short*>;
  result res :: <C-signed-int>;
  c-name: "color_content";
end;

define C-function init-pair
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <C-signed-short>;
  input parameter arg3_ :: <C-signed-short>;
  result res :: <C-signed-int>;
  c-name: "init_pair";
end;

define C-function start-color
  result res :: <C-signed-int>;
  c-name: "start_color";
end;

define C-function init-color
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <C-signed-short>;
  input parameter arg3_ :: <C-signed-short>;
  input parameter arg4_ :: <C-signed-short>;
  result res :: <C-signed-int>;
  c-name: "init_color";
end;

define C-function can-change-color
  result res :: <C-boolean>;
  c-name: "can_change_color";
end;

define C-function pair-content
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <short*>;
  input parameter arg3_ :: <short*>;
  result res :: <C-signed-int>;
  c-name: "pair_content";
end;

define C-function has-colors
  result res :: <C-boolean>;
  c-name: "has_colors";
end;

define C-pointer-type <c-string> => <C-signed-char>;
define C-function curses-version
  result res :: <c-string>;
  c-name: "curses_version";
end;


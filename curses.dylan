module: curses

define C-struct <_win-st>
end;

define constant <WINDOW> = <_win-st>;

define C-pointer-type <WINDOW*> => <WINDOW>;
define C-function syncok
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "syncok";
end;

define C-function werase
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "werase";
end;

define C-function standout
  result res :: <C-signed-int>;
  c-name: "standout";
end;

define C-function clrtoeol
  result res :: <C-signed-int>;
  c-name: "clrtoeol";
end;

define C-pointer-type <c-string> => <C-signed-char>;
define C-function curses-version
  result res :: <c-string>;
  c-name: "curses_version";
end;

define constant <chtype> = <C-unsigned-int>;

define constant <attr-t> = <chtype>;

define C-function chgat
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <attr-t>;
  input parameter arg3_ :: <C-signed-short>;
  input parameter arg4_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "chgat";
end;

define C-function wclrtobot
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wclrtobot";
end;

define C-function mvderwin
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvderwin";
end;

define C-function mvwin
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvwin";
end;

define constant $COLOR-MAGENTA = 5;

define C-function wprintw
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "wprintw";
end;

define C-function has-colors
  result res :: <C-boolean>;
  c-name: "has_colors";
end;

define C-function doupdate
  result res :: <C-signed-int>;
  c-name: "doupdate";
end;

define C-function noecho
  result res :: <C-signed-int>;
  c-name: "noecho";
end;

define C-function mvwdelch
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvwdelch";
end;

define C-struct <screen>
end;

define constant <SCREEN> = <screen>;

define C-pointer-type <SCREEN*> => <SCREEN>;
define C-pointer-type <unsigned-char*> => <C-unsigned-char>;
define C-struct <__sbuf>
  slot __sbuf$_base :: <unsigned-char*>;
  slot __sbuf$_size :: <C-signed-int>;
end;

define constant <_close> = <C-function-pointer>;
define constant <_read> = <C-function-pointer>;
define constant <__int64-t> = <C-signed-long>;

define constant <__darwin-off-t> = <__int64-t>;

define constant <fpos-t> = <__darwin-off-t>;

define constant <_seek> = <C-function-pointer>;
define constant <_write> = <C-function-pointer>;
define C-struct <__sFILEX>
end;

define C-pointer-type <__sFILEX*> => <__sFILEX>;
define constant <unsigned-char<@3>> = <unsigned-char*>;
define constant <unsigned-char<@1>> = <unsigned-char*>;
define C-struct <__sFILE>
  slot __sFILE$_p :: <unsigned-char*>;
  slot __sFILE$_r :: <C-signed-int>;
  slot __sFILE$_w :: <C-signed-int>;
  slot __sFILE$_flags :: <C-signed-short>;
  slot __sFILE$_file :: <C-signed-short>;
  slot __sFILE$_bf :: <__sbuf>;
  slot __sFILE$_lbfsize :: <C-signed-int>;
  slot __sFILE$_cookie :: <C-void*>;
  slot __sFILE$_close :: <_close>;
  slot __sFILE$_read :: <_read>;
  slot __sFILE$_seek :: <_seek>;
  slot __sFILE$_write :: <_write>;
  slot __sFILE$_ub :: <__sbuf>;
  slot __sFILE$_extra :: <__sFILEX*>;
  slot __sFILE$_ur :: <C-signed-int>;
  array slot __sFILE$_ubuf :: <C-unsigned-char>, length: 3;
  array slot __sFILE$_nbuf :: <C-unsigned-char>, length: 1;
  slot __sFILE$_lb :: <__sbuf>;
  slot __sFILE$_blksize :: <C-signed-int>;
  slot __sFILE$_offset :: <C-signed-long>;
end;

define constant <FILE> = <__sFILE>;

define C-pointer-type <FILE*> => <FILE>;
define C-function newterm
  input parameter arg1_ :: <c-string>;
  input parameter arg2_ :: <FILE*>;
  input parameter arg3_ :: <FILE*>;
  result res :: <SCREEN*>;
  c-name: "newterm";
end;

define C-function use-default-colors
  result res :: <C-signed-int>;
  c-name: "use_default_colors";
end;

define C-function refresh
  result res :: <C-signed-int>;
  c-name: "refresh";
end;

define C-function wgetch
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wgetch";
end;

define C-function mvhline
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <chtype>;
  input parameter arg4_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvhline";
end;

define C-function wcolor-set
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-short>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "wcolor_set";
end;

define C-function clear
  result res :: <C-signed-int>;
  c-name: "clear";
end;

define C-function wclrtoeol
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wclrtoeol";
end;

define C-function box
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <chtype>;
  input parameter arg3_ :: <chtype>;
  result res :: <C-signed-int>;
  c-name: "box";
end;

define C-function intrflush
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "intrflush";
end;

define C-function attr-on
  input parameter arg1_ :: <attr-t>;
  input parameter arg2_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "attr_on";
end;

define C-function getch
  result res :: <C-signed-int>;
  c-name: "getch";
end;

define C-function wvline
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <chtype>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "wvline";
end;

define C-function endwin
  result res :: <C-signed-int>;
  c-name: "endwin";
end;

define C-function wtimeout
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  c-name: "wtimeout";
end;

define C-function dupwin
  input parameter arg1_ :: <WINDOW*>;
  result res :: <WINDOW*>;
  c-name: "dupwin";
end;

define constant $COLOR-BLUE = 4;

define constant $COLOR-BLACK = 0;

define C-function nofilter
  c-name: "nofilter";
end;

define C-function printw
  input parameter arg1_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "printw";
end;

define C-function whline
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <chtype>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "whline";
end;

define C-function start-color
  result res :: <C-signed-int>;
  c-name: "start_color";
end;

define C-function use-extended-names
  input parameter arg1_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "use_extended_names";
end;

define C-function wcursyncup
  input parameter arg1_ :: <WINDOW*>;
  c-name: "wcursyncup";
end;

define C-function keypad
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "keypad";
end;

define constant <__darwin-va-list> = <C-void*>;

define constant <va-list> = <__darwin-va-list>;

define C-function vwprintw
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <c-string>;
  input parameter arg3_ :: <va-list>;
  result res :: <C-signed-int>;
  c-name: "vwprintw";
end;

define C-pointer-type <attr-t*> => <attr-t>;
define C-pointer-type <short*> => <C-signed-short>;
define C-function wattr-get
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <attr-t*>;
  input parameter arg3_ :: <short*>;
  input parameter arg4_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "wattr_get";
end;

define C-function can-change-color
  result res :: <C-boolean>;
  c-name: "can_change_color";
end;

define C-function wattron
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "wattron";
end;

define C-function isendwin
  result res :: <C-boolean>;
  c-name: "isendwin";
end;

define C-function wattroff
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "wattroff";
end;

define C-function assume-default-colors
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "assume_default_colors";
end;

define C-function mvvline
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <chtype>;
  input parameter arg4_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvvline";
end;

define C-function mvwchgat
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <C-signed-int>;
  input parameter arg5_ :: <attr-t>;
  input parameter arg6_ :: <C-signed-short>;
  input parameter arg7_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mvwchgat";
end;

define C-function keyname
  input parameter arg1_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "keyname";
end;

define C-function mvprintw
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "mvprintw";
end;

define C-function echo
  result res :: <C-signed-int>;
  c-name: "echo";
end;

define C-function wattr-off
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <attr-t>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "wattr_off";
end;

define C-function delay-output
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "delay_output";
end;

define C-function timeout
  input parameter arg1_ :: <C-signed-int>;
  c-name: "timeout";
end;

define C-function wdelch
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wdelch";
end;

define C-function init-pair
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <C-signed-short>;
  input parameter arg3_ :: <C-signed-short>;
  result res :: <C-signed-int>;
  c-name: "init_pair";
end;

define C-function mvgetch
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvgetch";
end;

define C-function cbreak
  result res :: <C-signed-int>;
  c-name: "cbreak";
end;

define C-function mvwprintw
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "mvwprintw";
end;

define C-function mvdelch
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvdelch";
end;

define constant $COLOR-WHITE = 7;

define C-function wattr-set
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <attr-t>;
  input parameter arg3_ :: <C-signed-short>;
  input parameter arg4_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "wattr_set";
end;

define C-function mvwhline
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <chtype>;
  input parameter arg5_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvwhline";
end;

define C-function attr-get
  input parameter arg1_ :: <attr-t*>;
  input parameter arg2_ :: <short*>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "attr_get";
end;

define C-function filter
  c-name: "filter";
end;

define C-function wredrawln
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "wredrawln";
end;

define C-function noqiflush
  c-name: "noqiflush";
end;

define constant $COLOR-YELLOW = 3;

define C-function nocbreak
  result res :: <C-signed-int>;
  c-name: "nocbreak";
end;

define C-function delch
  result res :: <C-signed-int>;
  c-name: "delch";
end;

define C-function typeahead
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "typeahead";
end;

define C-function unctrl
  input parameter arg1_ :: <chtype>;
  result res :: <c-string>;
  c-name: "unctrl";
end;

define C-function putwin
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <FILE*>;
  result res :: <C-signed-int>;
  c-name: "putwin";
end;

define C-function wstandend
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wstandend";
end;

define C-function color-content
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <short*>;
  input parameter arg3_ :: <short*>;
  input parameter arg4_ :: <short*>;
  result res :: <C-signed-int>;
  c-name: "color_content";
end;

define C-function border
  input parameter arg1_ :: <chtype>;
  input parameter arg2_ :: <chtype>;
  input parameter arg3_ :: <chtype>;
  input parameter arg4_ :: <chtype>;
  input parameter arg5_ :: <chtype>;
  input parameter arg6_ :: <chtype>;
  input parameter arg7_ :: <chtype>;
  input parameter arg8_ :: <chtype>;
  result res :: <C-signed-int>;
  c-name: "border";
end;

define constant vw-printw = vwprintw;

define C-function noraw
  result res :: <C-signed-int>;
  c-name: "noraw";
end;

define C-function hline
  input parameter arg1_ :: <chtype>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "hline";
end;

define C-function attr-set
  input parameter arg1_ :: <attr-t>;
  input parameter arg2_ :: <C-signed-short>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "attr_set";
end;

define C-function mvchgat
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <attr-t>;
  input parameter arg5_ :: <C-signed-short>;
  input parameter arg6_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "mvchgat";
end;

define C-function wrefresh
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wrefresh";
end;

define C-function attroff
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "attroff";
end;

define constant $COLOR-GREEN = 2;

define C-function mvwgetch
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvwgetch";
end;

define C-function delscreen
  input parameter arg1_ :: <SCREEN*>;
  c-name: "delscreen";
end;

define C-function ungetch
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "ungetch";
end;

define C-function qiflush
  c-name: "qiflush";
end;

define C-function subwin
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <C-signed-int>;
  input parameter arg5_ :: <C-signed-int>;
  result res :: <WINDOW*>;
  c-name: "subwin";
end;

define C-function has-key
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "has_key";
end;

define C-function init-color
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <C-signed-short>;
  input parameter arg3_ :: <C-signed-short>;
  input parameter arg4_ :: <C-signed-short>;
  result res :: <C-signed-int>;
  c-name: "init_color";
end;

define C-function wchgat
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <attr-t>;
  input parameter arg4_ :: <C-signed-short>;
  input parameter arg5_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "wchgat";
end;

define C-function meta
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "meta";
end;

define C-function wattrset
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "wattrset";
end;

define constant $COLOR-CYAN = 6;

define C-function getwin
  input parameter arg1_ :: <FILE*>;
  result res :: <WINDOW*>;
  c-name: "getwin";
end;

define C-function set-term
  input parameter arg1_ :: <SCREEN*>;
  result res :: <SCREEN*>;
  c-name: "set_term";
end;

define C-function attron
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "attron";
end;

define C-function erase
  result res :: <C-signed-int>;
  c-name: "erase";
end;

define C-function wsyncdown
  input parameter arg1_ :: <WINDOW*>;
  c-name: "wsyncdown";
end;

define C-function derwin
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <C-signed-int>;
  input parameter arg5_ :: <C-signed-int>;
  result res :: <WINDOW*>;
  c-name: "derwin";
end;

define C-function vline
  input parameter arg1_ :: <chtype>;
  input parameter arg2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "vline";
end;

define C-function nodelay
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "nodelay";
end;

define C-function delwin
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "delwin";
end;

define C-function raw
  result res :: <C-signed-int>;
  c-name: "raw";
end;

define C-function mvwvline
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <chtype>;
  input parameter arg5_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "mvwvline";
end;

define C-function color-set
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "color_set";
end;

define C-function clrtobot
  result res :: <C-signed-int>;
  c-name: "clrtobot";
end;

define C-function wclear
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wclear";
end;

define C-function initscr
  result res :: <WINDOW*>;
  c-name: "initscr";
end;

define C-function pair-content
  input parameter arg1_ :: <C-signed-short>;
  input parameter arg2_ :: <short*>;
  input parameter arg3_ :: <short*>;
  result res :: <C-signed-int>;
  c-name: "pair_content";
end;

define C-function wborder
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <chtype>;
  input parameter arg3_ :: <chtype>;
  input parameter arg4_ :: <chtype>;
  input parameter arg5_ :: <chtype>;
  input parameter arg6_ :: <chtype>;
  input parameter arg7_ :: <chtype>;
  input parameter arg8_ :: <chtype>;
  input parameter arg9_ :: <chtype>;
  result res :: <C-signed-int>;
  c-name: "wborder";
end;

define C-function notimeout
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <C-boolean>;
  result res :: <C-signed-int>;
  c-name: "notimeout";
end;

define C-function halfdelay
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "halfdelay";
end;

define C-function attr-off
  input parameter arg1_ :: <attr-t>;
  input parameter arg2_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "attr_off";
end;

define C-function flushinp
  result res :: <C-signed-int>;
  c-name: "flushinp";
end;

define C-function attrset
  input parameter arg1_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "attrset";
end;

define C-function wsyncup
  input parameter arg1_ :: <WINDOW*>;
  c-name: "wsyncup";
end;

define C-function wnoutrefresh
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wnoutrefresh";
end;

define constant $COLOR-RED = 1;

define C-function use-env
  input parameter arg1_ :: <C-boolean>;
  c-name: "use_env";
end;

define C-function newwin
  input parameter arg1_ :: <C-signed-int>;
  input parameter arg2_ :: <C-signed-int>;
  input parameter arg3_ :: <C-signed-int>;
  input parameter arg4_ :: <C-signed-int>;
  result res :: <WINDOW*>;
  c-name: "newwin";
end;

define C-function wstandout
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "wstandout";
end;

define C-function redrawwin
  input parameter arg1_ :: <WINDOW*>;
  result res :: <C-signed-int>;
  c-name: "redrawwin";
end;

define C-function wattr-on
  input parameter arg1_ :: <WINDOW*>;
  input parameter arg2_ :: <attr-t>;
  input parameter arg3_ :: <C-void*>;
  result res :: <C-signed-int>;
  c-name: "wattr_on";
end;


// 左右切换tab标签页: Ctrl+h/Ctrl+l
api.map("H", "E");
api.map("L", "R");

// ctrl+u/ctrl+d 上下翻页
api.map("<Ctrl-u>", "u");
api.map("<Ctrl-d>", "d");

// 向左/右移动tab
api.map(">", ">>");
api.map("<", "<<");

//////////////////////////////////////////////////////////////////////////////////////
// ╭──────────────────────────────────────────────────────────────────────────────╮ //
// │                                  _   _                                       │ //
// │                       ___  _ __ | |_(_) ___  _ __  ___                       │ //
// │                      / _ \| '_ \| __| |/ _ \| '_ \/ __|                      │ //
// │                     | (_) | |_) | |_| | (_) | | | \__ \                      │ //
// │                      \___/| .__/ \__|_|\___/|_| |_|___/                      │ //
// │                           |_|                                                │ //
// ╰──────────────────────────────────────────────────────────────────────────────╯ //
//////////////////////////////////////////////////////////////////////////////////////
// 设置语言(默认英文)
settings.language = "zh-CN";

// 显示当前模式
settings.showModeStatus = true;

// 显示搜索框时延迟多少秒显示搜索结果提示
settings.omnibarSuggestionTimeout = 100;

// 按下按键延迟多少毫秒显示提示
settings.richHintsForKeystroke = 100;

// 使用 github API 来解析 markdown
settings.useLocalMarkdownAPI = false;

// 自动选中第一个结果
settings.focusFirstCandidate = true;

// 设置主题: https://github.com/brookhong/Surfingkeys/wiki/Color-Themes
settings.theme = `
.sk_theme {
  font-family: SauceCodePro Nerd Font, Consolas, Menlo, monospace;
  font-size: 10pt;
  background: #f0edec;
  color: #2c363c;
}
.sk_theme tbody {
  color: #f0edec;
}
.sk_theme input {
  color: #2c363c;
}
.sk_theme .url {
  color: #1d5573;
}
.sk_theme .annotation {
  color: #2c363c;
}
.sk_theme .omnibar_highlight {
  color: #88507d;
}
.sk_theme #sk_omnibarSearchResult ul li:nth-child(odd) {
  background: #f0edec;
}
.sk_theme #sk_omnibarSearchResult ul li.focused {
  background: #cbd9e3;
}
#sk_keystroke {
  background: #f0edec !important;
  color: #2c363c !important;
}
#sk_status {
  position: fixed;
  bottom: 0;
  left: 0;
  right: auto;
  border-radius: 0;
  border: none !important;
  background-color: rgba(81, 162, 116, 0.15);
  color: #888;
}
#sk_status, #sk_find {
  font-size: 12pt;
}`;

/* prettier-ignore */
const hintsCss = "font-size: 10pt; border: none; color:#f8f8f8; background: initial; background-color: #51a274;";
api.Hints.style(hintsCss);
api.Hints.style(hintsCss, "text");

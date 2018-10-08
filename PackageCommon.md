# BracketHighlighter

https://packagecontrol.io/packages/BracketHighlighter

括号、标签高亮显示，快速选择、折叠、删除

推荐快捷键设置
```
    // alt+e 括号内容删除，alt+t 选中括号内容，alt+s 折叠当前括号内
    {
        "keys": ["alt+e"], "command": "bh_remove_brackets"
    }, {
        "no_outside_adj": true,
        "keys": ["alt+t"],
        "command": "bh_key",
        "args": {"lines" : true, "plugin": {"type": ["__all__"], "command": "bh_modules.bracketselect"}
        }
    }, {
        "keys": ["alt+s"],
        "command": "bh_key",
        "args": {"plugin": {"type": ["__all__"], "command" : "bh_modules.foldbracket"} } 
    },
```



; コピーしたらツールチップを表示
OnClipboardChange:
    my_tooltip_function("コピー", 300)
Return

; 上書き保存したらツールチップ表示
^s::
    Send, ^s
    my_tooltip_function("上書き保存", 300)
Return

; タイムシフト録画したら保存フォルダを開く
~!F10::Goto, ^!F10

; 録画の保存フォルダを開く
^!F10::Run, D:\Videos\GeforceExperience

; カレントディレクトリのパスを取得
^+!p::Clipboard := get_current_dir()

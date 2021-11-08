; 英数キー無効
vkF0::Return

; F24でアンダーバー入力
F24::_

;デスクトップフォルダを開く
;#e::Run, %A_Desktop%

; 音量変更
; 単体押下の動作指定
AppsKey::Send,{AppsKey}

; ボリュームを上げる
AppsKey & Up::Send,{Volume_Up 1}

; ボリュームを下げる
AppsKey & Down::Send,{Volume_Down 1}

; ミュート
AppsKey & Left::Send,{Volume_Mute}

; 日付入力
^vkBB::
    FormatTime, dateStr, , yyyy/MM/dd
    Send, {vkF2}{vkF3}%dateStr%
Return

; Ctrl + Q -> ウィンドウを閉じる
^q::WinClose, A

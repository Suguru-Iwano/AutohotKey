; ; 出先PCで半角数字を入力する
; 1::Send, {Numpad1}
; 2::Send, {Numpad2}
; 3::Send, {Numpad3}
; 4::Send, {Numpad4}
; 5::Send, {Numpad5}
; 6::Send, {Numpad6}
; 7::Send, {Numpad7}
; 8::Send, {Numpad8}
; 9::Send, {Numpad9}
; 0::Send, {Numpad0}

; 左手テンキー
; 修飾キーと無変換の組み合わせのトリガーを有効にする(例: ^{vk1D}r::OneNote赤文字)
#If, !(GetKeyState("Ctrl", "P")
    || GetKeyState("Shift", "P")
|| GetKeyState("Alt", "P")
|| GetKeyState("LWin", "P"))
vk1C & z::Send, {Numpad0}
vk1C & x::Send, {Numpad1}
vk1C & c::Send, {Numpad2}
vk1C & v::Send, {Numpad3}
vk1C & s::Send, {Numpad4}
vk1C & d::Send, {Numpad5}
vk1C & f::Send, {Numpad6}
vk1C & w::Send, {Numpad7}
vk1C & e::Send, {Numpad8}
vk1C & r::Send, {Numpad9}

; 常に半角
#UseHook
vk1C & b::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, =
    IME_SET(ime_mode)
Return
vk1C & a::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {NumpadMult}
    IME_SET(ime_mode)
Return
vk1C & q::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {NumpadDiv}
    IME_SET(ime_mode)
Return
vk1C & g::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {NumpadAdd}
    IME_SET(ime_mode)
Return
vk1C & t::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {NumpadSub}
    IME_SET(ime_mode)
Return
vk1C & Alt::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {NumpadDot}
    IME_SET(ime_mode)
Return
vk1C & Space::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {Space}
    IME_SET(ime_mode)
Return
vk1C & Tab::
    ime_mode := IME_GET()
    IME_SET(0)
    Send, {Enter}
    IME_SET(ime_mode)
Return
#UseHook OFF

#If

; テンキー
; Numpad0::Return
; Numpad1::Return
; Numpad2::Return
; Numpad3::Return
; Numpad4::Return
; Numpad5::Return
; Numpad6::Return
; Numpad7::Return
; Numpad8::Return
; Numpad9::Return
; NumpadDot::Return
; NumpadAdd::Return
; NumpadSub::Return
; NumpadMult::Return
; NumpadDiv::Return
; NumpadEnter::Return

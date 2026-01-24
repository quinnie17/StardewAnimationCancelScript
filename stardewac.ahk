;General Functions, these should apply to most games so feel free to try using them in scripts for other games.

GameInput(keys*)
{
    ;Sends keys in a way that game engines can understand.
    ;Input: Key(s) that you want to press.
    ;Example Usage: GameInput("a")
    ;To send multiple keys at the same time: GameInput("a","b","c")
    ;To click: GameInput("LButton")

    for index,key in keys
    {
        downtext .= "{" . key . " down}"
        uptext .= "{" . key . " up}"
    }

    Send downtext
    FrameSleep(12)
    Send uptext
}

FrameSleep(x)
{
    ;Input: how many frames you want to sleep for.
    ;Example Usage: FrameSleep(1)
    Sleep x * 16.666
}


;Stardew Valley Specific stuff

#HotIf WinActive("ahk_class SDL_app") 
;If you're planning to adapt this to another game, you should include a line like this! In fact, please just always do it wherever relevant, it saves a lot of headache.
;You can get the correct ahk_class using the Window Spy which is included with AutoHotKey.

AnimationCancel()
{
    GameInput("Del","RShift","r")
}

Space::
{
    GameInput("LButton")
    AnimationCancel()
}
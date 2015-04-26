[_tb_system_call storage=system/_03_message_window_start.ks]

[tb_start_tyrano_code]
[position layer=message0 page=fore width=800 height=240 top=380 left=70 ]
[position layer=message0 page=fore frame="none" margint="25" marginl="50" marginr="70" marginb="60"]

[layopt layer="message0" visible=true]
[_tb_end_tyrano_code]

[chara_mod  name="yuri"  time="600"  storage="chara/1/yuri_normal.png"  ]
[chara_show  name="yuri"  time="1000"  left="350"  top="60"  ]
Текстовую область можно изменять по своему вкусу.[p]
Сейчас вы видите ее стандартное состояние. А теперь отобразим ее на весь экран.[p]


[tb_start_tyrano_code]
[position layer=message0 page=fore width=800 height=540 top=20 left=70 margint="25" marginl="25" marginr="25" marginb="25" ]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
Как вам?[l][r]
Так игру можно на ходу превратить в sound novell.[l][r]
Вернемся к исходному виду.[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[position layer=message0 page=fore frame="none" width=800 height=240 top=380 left=70 margint="25" marginl="50" marginr="70" marginb="60"]
[_tb_end_tyrano_code]

Теперь попробуем изменить цвет и прозрачность.[p]


[tb_start_tyrano_code]
[position layer=message0 color=blue margint="25" marginl="50" marginr="70" marginb="60" ]
[_tb_end_tyrano_code]

Как вам?[p]


[tb_start_tyrano_code]
[position layer=message0 color=green margint="25" marginl="50" marginr="70" marginb="60" ]
[_tb_end_tyrano_code]

При создании игры, нужно постараться чтобы внешний вид окна сообщений был оптимальным.[p]


[tb_start_tyrano_code]
[position layer=message0 color=black margint="25" marginl="50" marginr="70" marginb="60" ]
[_tb_end_tyrano_code]

Кроме того, можно использовать собственноручно нарисованное изображение для фона окна сообщений.[p]


[tb_start_tyrano_code]
[position layer=message0 page=fore frame="message_window/frame_01.png" width=800 height=240 top=380 left=70 margint="25" marginl="50" marginr="70" marginb="60"]
[_tb_end_tyrano_code]

Вот так.[p]


[tb_start_tyrano_code]
[position layer=message0 page=fore frame="message_window/frame_02.png" width=800 height=240 top=380 left=70 margint="50" marginl="50" marginr="70" marginb="60"]
[_tb_end_tyrano_code]

Так можно придать нужную атмосферу.[p]
Меняя внешний вид игры для разных сцен.[p]
Такой гибкостью обладает TyranoScript.[p]


[tb_start_tyrano_code]
[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[_tb_end_tyrano_code]

Вы можете скачать исходный код этой игры, так что используйте его в качестве примера.[p]
Файл этого сценария находится в папке scenario/03_message_window... ![p]


[jump  storage="select.ks"  target="*select"  ]

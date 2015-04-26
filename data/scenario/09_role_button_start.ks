[_tb_system_call storage=system/_09_role_button_start.ks]

[tb_show_message_window  ]
[chara_mod  name="yuri"  time="600"  storage="chara/1/yuri_normal.png"  ]
[chara_show  name="yuri"  time="1000"  left="350"  top="60"  ]
В игре на TyranoScript, в правом нижнему углу экрана есть кнопка меню.[p]
Там вы можете найти кнопки сохранения, загрузки и другие стандартные функции.[p]
Но вы также можете вынести кнопки на основной экран игры. Например кнопку пропуска сообщений.[p]
В TyranoScript вы можете сделать оригинальное меню для своей игры.[p]
Итак, давайте добавим кнопки.[p]


[tb_start_tyrano_code]
;Добавлены разные кнопки
;Нужно добавить такую же обработку в make.ks
;Иначе кнопки перестанут работать после загрузки

[button name="role_button" role="skip" graphic="button/skip.gif" x=350 y=400]
[button name="role_button" role="save" graphic="button/save.gif" x=430 y=400]
[button name="role_button" role="load" graphic="button/load.gif" x=510 y=400]
[button name="role_button" role="backlog" graphic="button/log.gif" x=590 y=400]
[button name="role_button" role="window" graphic="button/close.gif" x=670 y=400]
[button name="role_button" role="menu" graphic="button/menu.gif" x=750 y=400]
[_tb_end_tyrano_code]

Нужные кнопки появились прямо на экране.[p]
Теперь можно убрать кнопку меню, она больше не нужна.[p]


[tb_start_tyrano_code]
@hidemenubutton
[_tb_end_tyrano_code]

И, одна важная вещь.[p]
Нужно обязательно добавить такой же код в make.ks файл[p]
Файл make.ks выполняется при загрузке, поэтому если вы не добавите кнопки в него, то они не появятся.[p]
Ведь игра при загрузке открывается в таком месте, где кнопки должны были быть уже выведены на экран![p]


Вы можете скачать исходный код этой игры, так что используйте его в качестве примера.[p][p]
Файл этого сценария находится в папке scenario/09_role_button... ![p][p]


[tb_start_tyrano_code]
@clearfix name="role_button"
[_tb_end_tyrano_code]

[jump  storage="select.ks"  target="*select"  ]

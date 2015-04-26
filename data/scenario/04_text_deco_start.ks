[_tb_system_call storage=system/_04_text_deco_start.ks]

[tb_show_message_window  ]
[chara_mod  name="yuri"  time="600"  storage="chara/1/yuri_normal.png"  ]
[chara_show  name="yuri"  time="1000"  left="350"  top="60"  ]
В TyranoScript текст тоже может быть оформлен в соответствии со сценой.[p]
Можно менять цвет и делать красочное оформление.[p]
Давайте посмотрим как это выглядит.[p]


[font  size="40"  color="0xffffff"  ]
Можно изменить размер символов.[p]


[resetfont  ]
[tb_start_tyrano_code]
[font color="0xFAEBD7"]Или
[resetfont] свободно
[font color="pink"] изменять
[resetfont] цвет
[font color="green"] текста
[resetfont] вот
[font color="0xAFEEEE"] таким
[resetfont] образом[p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
Можно добавлять фуригану для иероглифов.[l][r]
[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[p]
[_tb_end_tyrano_code]

Еще можно настраивать скорость появления символов.[p]


[tb_start_tyrano_code]
[font size=40]Начали! [wait time=1000]
[_tb_end_tyrano_code]

[cm  ]
[delay  speed="430"  ]
[tb_start_tyrano_code]
По-че-ре-па-шьи [r]
[_tb_end_tyrano_code]

[delay  speed="10"  ]
Как молния-аааааааааа-ааа-аа-а![p]


[resetfont  ]
[delay  speed="20"  ]
[tb_start_tyrano_code]
Уф.[l][r]
Даже просто изменив отображение символов в TyranoScript можно ярко выразить эмоции персонажа![p]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
В тексте можно поместить файл изображения. [graph storage="present.png"][p]
[_tb_end_tyrano_code]

Так, эффективно модифицируя текст можно заметно улучшить подачу истории.[p]
Вы можете скачать исходный код этой игры, так что используйте его в качестве примера.[p]
Файл этого сценария находится в папке scenario/04_test_deco... ![p]


[jump  storage="select.ks"  target="*select"  ]

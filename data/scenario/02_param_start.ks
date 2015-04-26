[_tb_system_call storage=system/_02_param_start.ks]

[tb_show_message_window  ]
[chara_mod  name="yuri"  time="600"  storage="chara/1/yuri_normal.png"  ]
[chara_show  name="yuri"  time="0"  top="60"  left="330"  ]
Теперь посмотрим на то, как можно измененять параметры персонажа.[p]
Выбор главного героя может влиять на благосклонность к нему того или иного персонажа.[p]
Будет ли в конце романтическое признание?[p]
Начнем. Например, можете попробовать покорить меня.[p]


[tb_start_tyrano_code]
[eval exp="f.chara_point=100"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
Как тебе моя новая прическа?[r]

[link target=*select_1_1]1) Тебе очень идет[endlink][r]
[link target=*select_1_2]2) Похоже на водоросли[endlink][r]
[_tb_end_tyrano_code]

[s  ]
*select_1_1

[cm  ]
Хе-хе, спасибо.[p]


[tb_start_tyrano_code]
[eval exp="f.chara_point=f.chara_point+20"]
[_tb_end_tyrano_code]

[jump  storage=""  target="*select_1_common"  ]
*select_1_2

[tb_start_tyrano_code]
[eval exp="f.chara_point=f.chara_point-20"]
[_tb_end_tyrano_code]

......[p]


*select_1_common

[tb_start_tyrano_code]
@call target=check_face
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
Текущий рейтинг: [emb exp="f.chara_point"][p]
[_tb_end_tyrano_code]

Сходим потом в караоке?[p]


[tb_start_tyrano_code]
[link target=*select_2_1]1) Конечно. Сходим вместе![endlink][r]
[link target=*select_2_2]2) Не, я лучше на бейсбол схожу.[endlink][r]
[_tb_end_tyrano_code]

[s  ]
*select_2_1

[cm  ]
Хе-хе, хорошо.[p]


[tb_start_tyrano_code]
[eval exp="f.chara_point=f.chara_point+20"]
[_tb_end_tyrano_code]

[jump  storage="02_param_start.ks"  target="*select_2_common"  ]
*select_2_2

[cm  ]
[tb_start_tyrano_code]
[eval exp="f.chara_point=f.chara_point-20"]
[_tb_end_tyrano_code]

......[p]


*select_2_common

[tb_start_tyrano_code]
@call target=check_face
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
Текущий рейтинг: [emb exp="f.chara_point"][p]
[_tb_end_tyrano_code]

Вот так можно делать рейтинг благосклонности.[p]
И настроить хорошую и плохую концовки.[p]
Таким же образом можно настроить выход на ветки сюжета с разными персонажами.[p]
Вы можете скачать исходный код этой игры, так что используйте его в качестве примера.[p]
Файл этого сценария находится в папке scenario/02_param... ![p]


[jump  storage="select.ks"  target="*select"  ]
[s  ]
*check_face

[tb_start_tyrano_code]
[if exp="f.chara_point > 120" ]
[chara_mod  name="yuri"  storage="chara/1/yuri_shy.png"  ]
[elsif exp="f.chara_point >= 100"]
[chara_mod  name="yuri"  storage="chara/1/yuri_normal.png"  ]
[elsif exp="f.chara_point >=80"]
[chara_mod  name="yuri"  storage="chara/1/yuri_anger.png"  ]
[else]
[chara_mod  name="yuri"  storage="chara/1/yuri_staring_eyes.png"  ]
[endif]
[return]

[_tb_end_tyrano_code]


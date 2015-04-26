[_tb_system_call storage=system/_01_bunki_start.ks]

[chara_mod  name="yuri"  time="0"  storage="chara/1/yuri_normal.png"  ]
[chara_show  name="yuri"  top="60"  left="330"  ]
[tb_show_message_window  ]
В TyranoScript можно переходить на разные ветки сценария в зависимости от выбора игрока.[p]
К тому же, внешнее представление выбора может быть разным.[p]
Давайте посмотрим на способы.[p]
Во-первых, наиболее простой текстовый способ.[p]


[tb_start_tyrano_code]
Ты сегодня завтракал?[r]
[link target=*breakfast_yes]１) Да[endlink][r]
[link target=*breakfast_no]２) Нет[endlink][r]
[_tb_end_tyrano_code]

[s  ]
*breakfast_yes

[cm  ]
О, завтракал! Хорошо, хорошо.[p]


[jump  target="breakfast_common"  storage=""  ]
*breakfast_no

[cm  ]
Зря, нужно правильно питаться![p]


*breakfast_common

Ну как? Правда просто?[p]
Теперь попробуем сделать выбор с помощью кнопки.[p]


[glink  text="Вариант1"  size="20"  width="500"  x="120"  y="100"  exp="tf.selected='Вариант1'"  target="glink_select"  ]
[glink  text="Вариант2"  size="20"  width="500"  x="120"  y="200"  exp="tf.selected='Вариант2'"  target="glink_select"  color="blue"  ]
[glink  text="Вариант3"  size="20"  width="500"  x="120"  y="300"  exp="tf.selected='Вариант3'"  target="glink_select"  color="pink"  ]
[glink  text="Вариант4"  size="20"  width="500"  x="120"  y="400"  exp="tf.selected='Вариант4'"  target="glink_select"  color="orange"  ]
[s  ]
*glink_select

[tb_start_tyrano_code]
「[emb exp="tf.selected"]」был выбран.[p]
[_tb_end_tyrano_code]

Кроме того, для каждой кнопки можно менять цвет.[p]
И вы можете придумать способы анимации появления кнопок.[p]


[glink  name="glink1"  text="Вариант1"  size="20"  width="500"  x="-1000"  y="100"  exp="tf.selected='Вариант1'"  target="glink_select2"  ]
[glink  name="glink2"  text="Вариант2"  size="20"  width="500"  x="1000"  y="200"  exp="tf.selected='Вариант2'"  target="glink_select2"  color="blue"  ]
[glink  name="glink3"  text="Вариант3"  size="20"  width="500"  x="-1000"  y="300"  exp="tf.selected='Вариант3'"  target="glink_select2"  color="pink"  ]
[glink  name="glink4"  text="Вариант4"  size="20"  width="500"  x="1000"  y="400"  exp="tf.selected='Вариант4'"  target="glink_select2"  color="orange"  ]
[tb_start_tyrano_code]
@anim name="glink1" left=150 time=500
[_tb_end_tyrano_code]

[wait  time="100"  ]
[tb_start_tyrano_code]
@anim name="glink2" left=150 time=500
[_tb_end_tyrano_code]

[wait  time="100"  ]
[tb_start_tyrano_code]
@anim name="glink3" left=150 time=500
[_tb_end_tyrano_code]

[wait  time="100"  ]
[tb_start_tyrano_code]
@anim name="glink4" left=150 time=500
[_tb_end_tyrano_code]

[s  ]
*glink_select2

Позицию кнопки на экране, тоже можно изменить.[p]
Также, очень просто назначить изображение для кнопки.[p]
Какая из этих девушек тебе больше нравится?[p]


[chara_hide  name="yuri"  ]
[tb_hide_message_window  ]
[button  graphic="chara_select/fuyuko_laughter.png"  enterimg="chara_select/fuyuko_lonely.png"  target="*chara_select"  x="100"  y="100"  storage=""  ]
[button  graphic="chara_select/koto_anger.png"  enterimg="chara_select/koto_normal.png"  target="*chara_select"  x="360"  y="100"  storage=""  ]
[button  graphic="chara_select/shikine_shocked.png"  enterimg="chara_select/shikine_shy.png"  target="*chara_select"  x="640"  y="100"  storage=""  ]
[s  ]
*chara_select

[cm  ]
[chara_mod  name="yuri"  time="600"  storage="chara/1/yuri_normal.png"  ]
[chara_show  top="60"  name="yuri"  ]
[tb_show_message_window  ]
Хм... вот как.[p]
Используя изображения в качестве кнопок можно многое сделать.[p]
Можно менять изображение при наведении курсора (и проигрывать звук)[p]
Или добавить эффект при нажатии на кнопку.[p]


[tb_start_tyrano_code]
Для получения дополнительно информации, проверьте документацию по тегу button.[r]
http://tyrano.jp/home/tag[r]
http://tyranobuilder.com/tyranoscript-tags-reference/[p]
[_tb_end_tyrano_code]

Вы можете скачать исходный код этой игры, так что используйте его в качестве примера.[p]
Файл этого сценария находится в папке scenario/examples/01_bunki ![p]


[jump  storage="select.ks"  target="*select"  ]

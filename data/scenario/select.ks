[_tb_system_call storage=system/_select.ks]

[iscript]
f.current_page=0;
[endscript]

*select

[chara_mod  name="yuri"  time="0"  storage="chara/1/yuri_shy.png"  ]
[anim name="yuri" left="640" time="1000"]

[tb_hide_message_window  ]
[iscript]
f.page_str = "page"+f.current_page;
[endscript]

[jump  target="&f.page_str"  storage=""  ]
*page0

[glink  text="Способы&nbsp;отображения&nbsp;выбора"  size="20"  width="500"  x="30"  y="40"  color="blue"  target="exe_game"  exp="tf.selected='01_bunki'"  ]
[glink  text="Изменение&nbsp;параметров&nbsp;игры&nbsp;при&nbsp;выборе&nbsp;игрока"  size="20"  width="500"  x="30"  y="100"  color="blue"  target="exe_game"  exp="tf.selected='02_param'"  ]
[glink  text="Кастомизация&nbsp;окна&nbsp;сообщений"  size="20"  width="500"  x="30"  y="160"  color="blue"  target="exe_game"  exp="tf.selected='03_message_window'"  ]
[glink  text="Украшение&nbsp;текста"  size="20"  width="500"  x="30"  y="220"  color="blue"  target="exe_game"  exp="tf.selected='04_text_deco'"  ]
[glink  text="Эффективное&nbsp;переключение&nbsp;сцен[???]"  size="20"  width="500"  x="30"  y="280"  color="blue"  target="exe_game"  exp="tf.selected='05_back'"  ]
[glink  text="Кликабельные&nbsp;области&nbsp;на&nbsp;экране&nbsp;-&nbsp;игра&nbsp;&laquo;Побег&raquo;"  size="20"  width="500"  x="30"  y="340"  color="blue"  target="exe_game"  exp="tf.selected='06_escape'"  ]
[glink  text="Возможность&nbsp;ввести&nbsp;имя&nbsp;игрока"  size="20"  width="500"  x="30"  y="400"  color="blue"  target="exe_game"  exp="tf.selected='07_input'"  ]
[glink  text="Создание&nbsp;анимаций&nbsp;в&nbsp;игре"  size="20"  width="500"  x="30"  y="460"  color="blue"  target="exe_game"  exp="tf.selected='08_anim'"  ]
[jump  target="*common"  storage=""  ]
*page1

[glink  text="Установка&nbsp;кнопок&nbsp;сохранения&nbsp;и&nbsp;загрузки&nbsp;на&nbsp;экране"  size="20"  width="500"  x="30"  y="40"  color="blue"  target="exe_game"  exp="tf.selected='09_role_button'"  ]
[jump  target="*common"  storage=""  ]
*common

[glink  text="＜＜Назад"  target="backpage"  size="20"  width="140"  x="30"  y="520"  color="pink"  ]
[glink  text="Вперед＞＞"  target="nextpage"  size="20"  width="140"  x="390"  y="520"  color="pink"  ]
[s  ]
*nextpage

[iscript]
f.current_page++;
if(f.current_page == 2){
f.current_page =0;
}
[endscript]

[jump  target="*select"  storage=""  ]
*backpage

[iscript]
if(f.current_page > 0){
f.current_page--;
}
[endscript]

[jump  target="*select"  storage=""  ]
*exe_game

[iscript]
tf.target_storage = tf.selected + "_start.ks";
[endscript]

[cm  ]
[chara_hide  name="yuri"  ]
[showmenubutton]

[jump  storage="&tf.target_storage"  target=""  ]
[s  ]

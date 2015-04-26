[_tb_system_call storage=system/_title_screen.ks]

[tb_hide_message_window  ]
[bg  storage="title.jpg"  ]
*title

[glink  text="New&nbsp;Game"  x="600"  y="370"  size="20"  target="*start"  ]
[glink  text="Load&nbsp;Game"  x="600"  y="470"  size="20"  target="*load"  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]
*load

[showmenubutton]

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]

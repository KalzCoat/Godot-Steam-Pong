GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�u      U      -��`�0��x�5�[   res://Scenes/Ball.tscn  �      �      ���$�a��f�1[}I   res://Scenes/Game.tscn  P      �      �L43$Z��
*l����$   res://Scenes/JoinLobbyButton.tscn   @      �      ��5�W�彝�Hn!_   res://Scenes/Menu.tscn  0      L      [&���S@���ǩXEQ   res://Scenes/Player.tscn�4      �      ?:����9ه���.��   res://Scripts/Ball.gd.remap �     '       A������xE��   res://Scripts/Ball.gdc  �6      w      E�=��*���+�S   res://Scripts/Game.gd.remap �     '       M�����*+��e��:�   res://Scripts/Game.gdc   <      =       Ya�yIz���Bm0    res://Scripts/Global.gd.remap   �     )       GȎD�?]�)�@�W{   res://Scripts/Global.gdc@K      �      '[�O	28}�M�h�M�   res://Scripts/Menu.gd.remap 	     '       l���A���gq��U4   res://Scripts/Menu.gdc   P      v      �Nu!��?8�����(    res://Scripts/Player.gd.remap   @	     )       <y;�9Y;�k��S�   res://Scripts/Player.gdc�o      h      �%�Z�Z�n�ugl�   res://default_env.tres  u      �       um�`�N��<*ỳ�8   res://icon.png  p	     �      G1?��z�c��vN��   res://icon.png.import    �      �      �����%��(#AB�   res://project.binary`     �      ��g����fq�]�`   res://saxmono.ttf   ��      ؂     �5�~��ū��{[gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Ball.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[node name="Ball" type="KinematicBody2D"]
position = Vector2( 416, 288 )
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="."]
visible = false
margin_left = -8.0
margin_top = -8.0
margin_right = 8.0
margin_bottom = 8.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 0.25, 0.25 )
texture = ExtResource( 2 )
           [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/Game.gd" type="Script" id=1]

[sub_resource type="DynamicFontData" id=1]
font_path = "res://saxmono.ttf"

[sub_resource type="DynamicFont" id=2]
size = 32
font_data = SubResource( 1 )

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 416, 8 )

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 16, 288 )

[node name="Game" type="Node2D"]
script = ExtResource( 1 )

[node name="UI" type="Control" parent="."]
margin_right = 832.0
margin_bottom = 512.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Background" type="ColorRect" parent="UI"]
margin_right = 832.0
margin_bottom = 512.0
color = Color( 0, 0, 0, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player1" type="Label" parent="UI"]
margin_left = 32.0
margin_right = 320.0
margin_bottom = 64.0
custom_fonts/font = SubResource( 2 )
text = "Player1"
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Score" type="Label" parent="UI"]
margin_left = 320.0
margin_right = 512.0
margin_bottom = 64.0
custom_fonts/font = SubResource( 2 )
text = "0 | 0"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player2" type="Label" parent="UI"]
margin_left = 512.0
margin_right = 800.0
margin_bottom = 64.0
custom_fonts/font = SubResource( 2 )
text = "Player2"
align = 2
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Separator" type="ColorRect" parent="UI"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_top = -184.0
margin_right = 1.0
margin_bottom = 248.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GameOver" type="Label" parent="UI"]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -144.0
margin_top = -32.0
margin_right = 144.0
margin_bottom = 32.0
custom_fonts/font = SubResource( 2 )
text = "YOU WIN !"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="EdgeTop" type="StaticBody2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="EdgeTop"]
position = Vector2( 416, 72 )
shape = SubResource( 3 )

[node name="Texture" type="ColorRect" parent="EdgeTop"]
margin_top = 64.0
margin_right = 832.0
margin_bottom = 80.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="EdgeBot" type="StaticBody2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="EdgeBot"]
position = Vector2( 416, 504 )
shape = SubResource( 3 )

[node name="Texture" type="ColorRect" parent="EdgeBot"]
margin_top = 496.0
margin_right = 832.0
margin_bottom = 512.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="GoalLeft" type="Area2D" parent="."]
visible = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="GoalLeft"]
position = Vector2( -48, 288 )
shape = SubResource( 4 )

[node name="GoalRight" type="Area2D" parent="."]
visible = false
position = Vector2( 928, 0 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="GoalRight"]
position = Vector2( -48, 288 )
shape = SubResource( 4 )

[connection signal="body_entered" from="GoalLeft" to="." method="_on_GoalLeft_body_entered"]
[connection signal="body_entered" from="GoalRight" to="." method="_on_GoalRight_body_entered"]
               [gd_scene load_steps=6 format=2]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.258824, 0.258824, 0.258824, 1 )

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 0.596078, 0.596078, 0.596078, 1 )

[sub_resource type="StyleBoxFlat" id=3]
bg_color = Color( 0, 0, 0, 1 )

[sub_resource type="DynamicFontData" id=4]
font_path = "res://saxmono.ttf"

[sub_resource type="DynamicFont" id=5]
size = 22
font_data = SubResource( 4 )

[node name="JoinLobbyButton" type="Button"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -320.0
margin_top = -24.0
margin_right = 320.0
margin_bottom = 24.0
rect_min_size = Vector2( 640, 48 )
focus_mode = 0
size_flags_horizontal = 4
size_flags_vertical = 0
custom_styles/hover = SubResource( 1 )
custom_styles/pressed = SubResource( 2 )
custom_styles/normal = SubResource( 3 )
custom_fonts/font = SubResource( 5 )
enabled_focus_mode = 0
text = "[GSP] Player's Lobby"
__meta__ = {
"_edit_use_anchors_": false
}
        [gd_scene load_steps=11 format=2]

[ext_resource path="res://Scripts/Menu.gd" type="Script" id=1]

[sub_resource type="DynamicFontData" id=1]
font_path = "res://saxmono.ttf"

[sub_resource type="DynamicFont" id=2]
size = 50
font_data = SubResource( 1 )

[sub_resource type="StyleBoxFlat" id=3]
bg_color = Color( 0.258824, 0.258824, 0.258824, 1 )

[sub_resource type="StyleBoxFlat" id=4]
bg_color = Color( 0.596078, 0.596078, 0.596078, 1 )

[sub_resource type="StyleBoxFlat" id=5]
bg_color = Color( 0, 0, 0, 1 )

[sub_resource type="DynamicFontData" id=6]
font_path = "res://saxmono.ttf"

[sub_resource type="DynamicFont" id=7]
size = 32
font_data = SubResource( 6 )

[sub_resource type="DynamicFontData" id=8]
font_path = "res://saxmono.ttf"

[sub_resource type="DynamicFont" id=9]
size = 32
font_data = SubResource( 8 )

[node name="Menu" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Background" type="ColorRect" parent="."]
margin_right = 832.0
margin_bottom = 512.0
color = Color( 0, 0, 0, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Title" type="Label" parent="."]
anchor_right = 1.0
margin_bottom = 128.0
custom_fonts/font = SubResource( 2 )
text = "Godot Steam Pong"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Main" type="Control" parent="."]
visible = false
margin_top = 128.0
margin_right = 832.0
margin_bottom = 512.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="CreateLobby" type="Button" parent="Main"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -160.0
margin_top = -128.0
margin_right = 160.0
margin_bottom = -64.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "Create Lobby"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="joinCreateLobby" type="Button" parent="Main"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -160.0
margin_top = -64.0
margin_right = 160.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "join Lobby"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Quit" type="Button" parent="Main"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -160.0
margin_top = 64.0
margin_right = 160.0
margin_bottom = 128.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "Quit"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Lobby" type="Control" parent="."]
margin_top = 128.0
margin_right = 832.0
margin_bottom = 512.0

[node name="LobbyTitle" type="Label" parent="Lobby"]
margin_top = 32.0
margin_right = 832.0
margin_bottom = 96.0
custom_fonts/font = SubResource( 9 )
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player1" type="Label" parent="Lobby"]
margin_top = 96.0
margin_right = 832.0
margin_bottom = 160.0
custom_fonts/font = SubResource( 9 )
text = "Player 1 : "
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Player2" type="Label" parent="Lobby"]
margin_top = 160.0
margin_right = 832.0
margin_bottom = 224.0
custom_fonts/font = SubResource( 9 )
text = "Player 2 : "
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="LeaveLobby" type="Button" parent="Lobby"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -352.0
margin_top = 64.0
margin_right = -96.0
margin_bottom = 128.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "Leave Lobby"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StartGame" type="Button" parent="Lobby"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = 96.0
margin_top = 64.0
margin_right = 352.0
margin_bottom = 128.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "Start Game"

[node name="LobbyList" type="Control" parent="."]
visible = false
margin_top = 128.0
margin_right = 832.0
margin_bottom = 512.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="AvailableLobbies" type="Label" parent="LobbyList"]
margin_top = -8.0
margin_right = 832.0
margin_bottom = 56.0
custom_fonts/font = SubResource( 9 )
text = "--- Available Lobbies ---"
align = 1
valign = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Scroll" type="ScrollContainer" parent="LobbyList"]
margin_left = 64.0
margin_top = 64.0
margin_right = 768.0
margin_bottom = 256.0
follow_focus = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="VBox" type="VBoxContainer" parent="LobbyList/Scroll"]
margin_right = 704.0
margin_bottom = 192.0
size_flags_horizontal = 7
size_flags_vertical = 7
custom_constants/separation = 23
alignment = 1

[node name="Back" type="Button" parent="LobbyList"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -288.0
margin_top = 96.0
margin_right = -32.0
margin_bottom = 160.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "Back"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Refresh" type="Button" parent="LobbyList"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = 32.0
margin_top = 96.0
margin_right = 288.0
margin_bottom = 160.0
focus_mode = 0
custom_styles/hover = SubResource( 3 )
custom_styles/pressed = SubResource( 4 )
custom_styles/normal = SubResource( 5 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "Refresh"
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="pressed" from="Main/CreateLobby" to="." method="_on_CreateLobby_pressed"]
[connection signal="pressed" from="Main/joinCreateLobby" to="." method="_on_joinCreateLobby_pressed"]
[connection signal="pressed" from="Main/Quit" to="." method="_on_Quit_pressed"]
[connection signal="pressed" from="Lobby/LeaveLobby" to="." method="_on_LeaveLobby_pressed"]
[connection signal="pressed" from="Lobby/StartGame" to="." method="_on_StartGame_pressed"]
[connection signal="pressed" from="LobbyList/Back" to="." method="_on_Back_pressed"]
[connection signal="pressed" from="LobbyList/Refresh" to="." method="_on_Refresh_pressed"]
    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 48 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -8.0
margin_top = -48.0
margin_right = 8.0
margin_bottom = 48.0
__meta__ = {
"_edit_use_anchors_": false
}
    GDSC             �      ������������τ�   �������������Ӷ�   ����Ҷ��   �������϶���   ��������   �����϶�   �����ڶ�   �������   ζ��   ϶��   ��������������ض   �������Ŷ���   ����׶��   ��������ض��   ���������������Ӷ���   �����Ӷ�   �����ڶ�   �������������¶   �����������   ���������������������ض�   ������������������ض   �����¶�   ����������׶   ��������   �����Ҷ�   �����������϶���   ����۶��   �����������¶��         ,                �������?   �     �            �              message       null      pos              posBall                                	                           	   &   
   *      <      N      d      e      l      v      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �       3YY:�  YY;�  �  Y;�  �  T�  YY0�  PQV�  &P�  T�  QV.�  �%  PQ�  �  T�  L�  R�  ML�&  PQ�  M�  �  T�	  L�  R�  ML�&  PQ�  M�  �
  �  P�  RL�  R�  R�  ML�&  PQ�	  MQYY0�  P�  QV�  &P�  T�  QV.�  ;�  �  P�  �  �  Q�  &�  V�  �  �  T�  P�  T�  Q�  �  �  �  �  P�  T�  RN�
  V�  R�  V�  R�  V�
  OQ�  YY0�  P�  QV�  �
  �  YY0�  P�  V�  R�  V�  QX=V�  ;�  V�  �  �  T�  P�  Q�  �  T�  P�I  P�  QQ�  �  T�  P�  R�  R�  R�  QY`         GDSC   @      q   �     ���ӄ�   ����������������   ����������Ӷ   �����ć�   �����Ą�   ��������Ӷ��   ���ڶ���   �����懶   �����愶   �����ⶶ   ����Ӷ��   ����   ����Ӷ��   �����ć���Ӷ   �����ć�   �����Ą���Ӷ   �����Ą�   ��������Ķ��   ��������Ķ��   �������Ķ���   �������Ķ���   �����϶�   �����ڶ�   �������   ���¶���   ��������������   ����������������󶶶   �������Ӷ���   ��������������ض   ���Ӷ���   ��������Ҷ��   �������Ŷ���   ����׶��   ����۶��   �����������������������Ӷ��   ���ݶ���   �������������¶   ������������������������Ҷ��   ���϶���   ���ڶ���   �������������������������Ҷ�   ����������Ӷ   �������Ķ���   ��������ڶ��   ����Ҷ��   �����Ķ�   ������Ӷ   �������Ӷ���   �����������Ķ���   �������������¶   �����������   �����������Ӷ���   �����������   �����������¶��   �������󶶶�   ���׶���   �������϶���   ���������������������ض�   �����¶�   ����������׶   ��������   �����Ҷ�   �����������϶���   �����������¶��            res://Scenes/Player.tscn      res://Scenes/Ball.tscn                        0                     |     ,                WIN !       @@      timeout       message       stop      pos       posBall       res://Scenes/Menu.tscn        ready         BONOBO                                       	                           	       
   #      $      )      .      /      2      3      <      E      N      W      `      a      g      o      w            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1   	  2     3     4     5     6     7     8   %  9   )  :   -  ;   .  <   4  =   8  >   @  ?   G  @   O  A   V  B   Y  C   ]  D   ^  E   d  F   t  G   u  H   {  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \     ]     ^     _   %  `   -  a   2  b   :  c   ?  d   J  e   S  f   \  g   m  h   y  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   3YY:�  YY;�  ?P�  QY;�  Y;�  YY;�  ?P�  QY;�  YY;�  �  Y;�  �  YY;�	  YY5;�
  W�  �  Y5;�  W�  �  Y5;�  W�  �  Y5;�  W�  �  Y5;�  W�  �  YY0�  PQV�  &P�  T�  QV�  �  T�  �  T�  �  �  T�  �  T�  �  (V�  �  T�  �  T�  �  �  T�  �  T�  �  �  �  �  T�  PQ�  �  T�  �  P�  R�  Q�  �  �  �  T�  PQ�  �  T�  �  P�  R�  Q�  �  &P�  T�  QV�  T�  �  �  (V�  T�  �  �  �  �  P�  Q�  �  P�  Q�  �  &P�  T�  QV�  �  �  T�  PQ�  �  P�  QYY0�  P�   QV�  �	  �!  T�"  P�  Q�  )�#  �	  V�  �$  PQYY0�%  P�&  QV�  �  �  �  �'  PQYY0�(  P�&  QV�  �  �  �  �'  PQYY0�'  PQV�  �)  PQ�  &P�  �  QV�  �*  P�  T�  Q�  'P�  �  QV�  �*  P�  T�  Q�  (V�  �+  PQYY0�)  PQV�  �
  T�  �>  P�  Q�	  �>  P�  QYY0�+  PQV�  �  T�,  �
  �  �  T�  PQYY0�*  P�-  QV�  �  T�.  �  �  �  �  T�  �-  �  �  �  T�.  �  �  �  &P�  T�  QV�  AP�/  PQT�0  P�  QR�  Q�  �1  P�  T�2  RN�  V�  R�  V�  R�  V�  OQ�  �/  PQT�3  P�  QYYYY0�$  PQX=V�  ;�4  V�  �!  T�"  P�  Q�  &�4  �  V�  ;�	  V�  �!  T�5  P�4  R�  Q�  ;�6  V�  �J  P�	  T�7  T�8  P�  R�4  �  QQ�  �  &P�6  L�  M�  QV�  &P�  T�  QV�  �?  P�  Q�  �  �  T�  PQ�  �  P�  Q�  &P�6  L�  M�  QV�  �/  PQT�3  P�  Q�  &P�6  L�  MQV�  &P�  T�  QV�  T�9  P�6  L�  MQ�  (V�  T�9  P�6  L�  MQ�  &P�6  L�  MQV�  &P�  T�  QV�  T�9  P�6  L�  MQYY0�1  P�:  V�  R�;  V�  QX=V�  ;�<  V�  �  �<  T�=  P�  Q�  �<  T�>  P�I  P�;  QQ�  �!  T�?  P�:  R�<  R�  R�  QY`   GDSC         %   �      ���Ӷ���   �������   �������򶶶�   ��������󶶶   �������򶶶�   ��������������   �������򶶶�   �����������   ����������������󶶶   ���������������񶶶�   ��������   ���������䶶   ����������   ��������������   �������Ŷ���   ����׶��   ����۶��   ������������Ŷ��   �����϶�   ���ⶶ��   ��������¶��   �������Ӷ���   ���¶���   �������ض���   ����������   �������������Ӷ�   �����������Ҷ���                                       status                           
                              !   	   (   
   )      *      1      8      ?      F      I      J      K      R      Y      `      a      h      n      o      u      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   3YY;�  V�  YYY;�  V�  Y;�  V�  Y;�  V�  �  Y;�  V�  �  YYY;�  V�  �  Y;�  V�  �  Y;�  V�  �  Y;�	  V�  Y;�
  YYY:�  V�  �  Y:�  V�  �  Y:�  V�  �  YY0�  P�  QV�  �  T�  PQYY0�  PQV�  ;�  V�  �  T�  PQ�  �  &P�  L�  M�  QV�  PQT�  PQ�  �  �  �  T�  PQ�  �  �  T�  PQ�  �  �  T�  PQ�  �  �  T�  PQ�  �  &P�  QV�  PQT�  PQY`           GDSC   h   1   �   N     ������ڶ   ���������������Ӷ���   ���ض���   ���ض���   ����϶��   ����϶��   ���������Ӷ�   ���������Ӷ�   �����ć���Ӷ   �����ć�   �����Ą���Ӷ   �����Ą�   ����¶��   ��������Ӷ��   ��������¶��   ��������¶��   �����������������Ķ�   �����ڶ�   ���ζ���   �����ⶶ   �����϶�   ����۶��   ������¶   ���������������������Ҷ�   �������Ŷ���   ����׶��   ������Ӷ   �����������������������Ӷ��   ���ݶ���   �������������¶   ������ö   ���ö���   �����ڶ�   �������   ����������������������Ҷ   �������򶶶�   ����������϶   ����������   ���������䶶   ��������������������������Ҷ$   ��������������������������������Ķ��   ��������������    ������������������������������Ķ   ���������������¶���   ���������������Ҷ���   �������Ӷ���   ���¶���   ���������϶�   ���������������������Ķ   �����������   ����������������󶶶   ��������������������Ҷ��   �������������¶   �����������Ӷ���   ���������������Ҷ���   ������������������Ҷ   ���������������������Ҷ�   �������   ��������϶��   ����������������Ҷ��   �����������׶���   ��������������   ���¶���   �����������׶���   �������������������¶���   ������Ŷ   �����������������Ŷ�   ��������Ӷ��   ����������ض   �������Ӷ���   �������Ӷ���   �������¶���   ��������Ҷ��   ���������������Ҷ���   ����������Ŷ   �����Ҷ�   �������Ӷ���   ��������������������ζ��   �������򶶶�   �������������������Ӷ���   �����������������������Ҷ���   �������򶶶�   ��������������������Ӷ��   ��������򶶶   ��������������   ��������Ӷ��   ���������������������¶   �������򶶶�   ����������������������Ķ���    ��������������������������ڶ���   ������������Ķ��   �����¶�   ����������׶   ��������󶶶   ��������   ��������   �����Ҷ�   �����������϶���   �����������¶��   �����������   �����������¶��   �������󶶶�   ���׶���   �������϶���   !   res://Scenes/JoinLobbyButton.tscn         lobby_created         _on_Lobby_Created         lobby_match_list      _on_Lobby_Match_List      lobby_joined      _on_Lobby_Joined      join_requested        _on_Lobby_Join_Requested      lobby_chat_update         _on_Lobby_Chat_Update         p2p_session_request       _on_P2P_Session_Request       p2p_session_connect_fail      _on_P2P_Session_Connect_Fail                   main             lobby      	   lobbyList         name      [GSP]                      message       Start         res://Scenes/Game.tscn              [GSP]         's Lobby      lobby_        pressed       _on_Join_Lobby_Pressed        Player 1 :        Player 2 :        WARNING: Session failure with          [no error given].     )    [target user not running the same game].      %    [local user doesn't own app / game].            (    [target user isn't connected to Steam].             [connection timed out].         
    [unused].         [unknown error       ].                                                            	      
   &      /      8      A      B      C      J      U      V      Y      Z      [      \      b      m      x      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2     3     4     5     6   "  7   (  8   +  9   1  :   7  ;   8  <   9  =   :  >   ;  ?   <  @   =  A   C  B   I  C   _  D   `  E   e  F   f  G   l  H   u  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c     d   	  e   
  f     g     h     i     j   %  k   &  l   +  m   ,  n   -  o   .  p   /  q   0  r   ?  s   H  t   I  u   J  v   P  w   Q  x   R  y   f  z   s  {   t  |     }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   	  �     �     �   !  �   $  �   3  �   M  �   Z  �   d  �   n  �   o  �   ~  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �     �     �     �     �     �     �   '  �   (  �   .  �   :  �   ;  �   A  �   M  �   N  �   T  �   `  �   a  �   g  �   s  �   t  �   z  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   
  �     �     �     �      �   5  �   6  �   A  �   J  �   K  �   L  �   3YY;�  ?PQYYY5;�  W�  YYY5;�  W�  Y5;�  W�  �  Y5;�  W�  �	  Y5;�
  W�  �  Y5;�  W�  �  YYY5;�  W�  Y5;�  W�  �  �  YY;�  YYYY0�  PQV�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  �  T�  P�	  RR�
  Q�  �  �  T�  P�  RR�  Q�  �  T�  P�  RR�  Q�  �  �  PQYY0�  P�  QV�  &P�  T�  Q�  V�  �  �  T�  P�  Q�  )�  �  V�  �  PQYYYY0�  P�  QV�  /�  V�  �  V�  �  T�  �  �  �  T�  �  �  �  T�  �  �  �  V�  �  T�  �  �  �  T�  �  �  &P�   T�!  QV�  T�  �  �  (V�  T�  �  �  �  T�  �  �  �  V�  �  T�  �  �  �  T�  �  YYYYYYY0�"  PQV�  �   T�!  �  �  &P�   T�#  �  QV�  T�$  P�   T�%  R�   T�&  Q�  �  �  P�  QYY0�'  PQV�  �  T�(  P�   T�)  Q�  �  T�*  P�  R�  R�  Q�  �  �  T�+  PQ�  �  �  P�  QYY0�,  PQV�  �-  PQT�.  PQYYY0�  PQV�  �  T�/  P�   T�#  Q�  �   T�#  �  �  �  T�0  P�   T�1  Q�  �   T�1  �  �  �   T�2  �  �  �  �  P�  Q�  �   T�!  �  YY0�3  PQV�  &P�   T�1  �  QV.�  �4  P�   T�1  RN�  V�  OQ�  �-  PQT�5  P�  QYYY0�6  PQV�  �  P�  QYY0�7  PQV�  �'  PQYY0�8  P�9  V�  QV�  �  T�:  P�9  Q�  �  �  P�  QYYYYYY0�;  P�  V�  R�9  V�  QX=V�  &P�  �  QV.�  �  �  �   T�#  �9  Y�  �  �  T�<  P�9  R�  R�  �>  P�   T�=  Q�  Q�  �  T�>  �  T�?  P�9  R�  QYY0�@  P�A  V�  QX=V�  )�9  �A  V�  &P�  T�B  P�9  Q�  QV�  ;�C  V�  �>  P�  T�?  P�9  R�  QQ�  �  �  ;�D  �  T�E  PQ�  �D  T�F  P�  �>  P�9  QQ�  �D  T�G  P�C  Q�  �D  T�  P�   RR�!  RL�9  MQY�  �  �  T�H  P�D  QYY0�I  P�9  V�  R�J  V�  R�K  V�  R�L  V�  QX=V�  �   T�#  �9  �  �  T�>  �>  P�  T�?  P�9  R�  QQ�  �  �  &P�   T�!  QV�  �  T�>  �"  �   T�=  �  �
  T�>  �#  �  (V�  �   T�1  �  T�M  P�   T�#  R�  Q�  &P�   T�1  �   T�N  QV�   T�1  �  T�M  P�   T�#  R�  Q�  �   T�2  �  T�O  P�   T�1  Q�  �  T�>  �"  �   T�2  �  �
  T�>  �#  �   T�=  YY0�P  P�9  V�  R�Q  V�  QX=V�  �8  P�9  QYYYYY0�R  P�9  V�  R�S  V�  R�T  V�  R�U  V�  QX=V�  &P�U  �  �   T�!  QV�  �   T�1  �  T�M  P�   T�#  R�  Q�  �   T�2  �  T�O  P�   T�1  Q�  �
  T�>  �#  �   T�2  �  'P�U  �  QV�  �   T�1  �  �  �   T�2  �  �  �  T�>  �"  �   T�=  �  �
  T�>  �#  �  �   T�!  �  �  �  T�  �  �  -YYYY0�V  P�W  V�  QX=V�  �  T�X  P�W  QYY0�Y  P�9  V�  R�Z  V�  QX=V�  �  &�Z  �  V�  �?  P�$  �>  P�9  Q�%  Q�  �  '�Z  �  V�  �?  P�$  �>  P�9  Q�&  Q�  �  '�Z  �  V�  �?  P�$  �>  P�9  Q�'  Q�  �  '�Z  �(  V�  �?  P�$  �>  P�9  Q�)  Q�  �  '�Z  �*  V�  �?  P�$  �>  P�9  Q�+  Q�  �  '�Z  �,  V�  �?  P�$  �>  P�9  Q�-  Q�  �  (V�  �?  P�$  �>  P�9  Q�.  �>  P�Z  Q�/  QYYYYYY0�4  P�[  V�  R�\  V�  QX=V�  ;�]  V�  �  �  ;�^  V�  �  �  ;�_  V�  �  �_  T�`  P�0  Q�  �_  T�a  P�I  P�\  QQ�  �  T�b  P�[  R�_  R�]  R�^  QYY0�  PQX=V�  ;�c  V�  �  T�  P�  Q�  �  �  &�c  �  V�  ;�  V�  �  T�d  P�c  R�  Q�  ;�e  V�  �J  P�  T�f  T�g  P�  R�c  �  QQ�  �  &P�e  L�  M�  QV�  �-  PQT�5  P�  QYYY`          GDSC            �      ������������τ�   ����򶶶   ���Ӷ���   �������϶���   �����϶�   �����ڶ�   �������   �������������¶   �����������   ��������������ض   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ���������Ҷ�   �������������Ӷ�   ���������������������ض�   ������������������ض   �����¶�   ����������׶   ��������󶶶   ��������   ��������   �����Ҷ�   �����������϶���   ����۶��   �����������¶��   �                       check         message       ready         pos       posBall       down      up        null                               	                        !   	   ,   
   1      F      G      N      T      s      z      �      �      �      �      �      �      �      �      �      �      �      �      �      �      3YY:�  YY;�  V�  �  Y;�  �  P�  R�  QYY0�  PQV�  &P�  T�  �  QV�  �?  P�  Q�  �  P�  T�  RN�  V�  R�  V�	  R�  V�  OQ�  Y0�
  P�  QV�  &P�  QV�  �  �  P�  R�  P�  T�  P�  QQ�  P�  T�  P�	  QQQT�  PQ�  �  P�  �  Q�  �  P�  T�  RN�  V�
  R�  V�	  R�  V�  OQ�  (V�  �  P�  �  QYY0�  P�  QV�  �	  �  YY0�  P�  V�  R�  V�  QX=V�  ;�  V�  �  �  ;�  V�  �  �  ;�  V�  �  �  T�  P�  Q�  �  T�  P�I  P�  QQ�  �  T�  P�  R�  R�  R�  QY`        [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        DSIG]�(/ rx  `LTSH{��q  �  �OS/2u�u  �   VVDMXrry�  �  �cmapC6
�  �  �cvt FB&�  -�  @fpgm�^G  '`  Zgasp  	      glyfH>�?  Qh hdmxX�  6@  (head�-S  ,   6hhea
��  d   $hmtx�~�*  .�  Bloca�<��  �  �maxp�  �    nameP���    �post[(�� f|  �prepV=+o  $�  �      �5�_<�      ��     �)J����!<             ��� '����B!               �   �" H e    / Y  �Z   c�   �3  %�3  � f  	�    �:        SAX  @  ���� '<+   ���           ��    #�        �          �        �        (�        �        4�        �        4        T       �       �       T       �       T       ,      	 �      
CT       ,�       *�       �$       0�  	   d�  	  ?  	  �  	  .
�  	  ?  	  
�  	  ?  	  �  	 	   	 
�?  	  X%  	  T}  	 �  	  `� D i g i t i z e d   d a t a   c o p y r i g h t   ( C )   1 9 9 3  1 9 9 7   T h e   M o n o t y p e   C o r p o r a t i o n .   A l l   r i g h t s   r e s e r v e d .   M o n o t y p e . c o m   i s   b a s e d   o n   A n d a l e .   A n d a l e!"   i s   a   t r a d e m a r k   o f   T h e   M o n o t y p e   C o r p o r a t i o n   w h i c h   m a y   b e   r e g i s t e r e d   i n   c e r t a i n   j u r i s d i c t i o n s . s . a . x .   S o f t w a r e   T i l e R e g u l a r s . a . x .   S o f t w a r e   0 2 . 0 3 . 1 9 9 9(C) 1999 by s.a.x. Software GmbH, Karlsruhe, GermanysaxMono is a sample of a fine TrueType with high screen quality. 
Its spacing (11 cpi@12 pt) is between the Courier and Letter Gothic.

s.a.x.: Our business is printing solutions for corporates. We cover letterheads, faxes, invoices and everything, what was pre-printed in former times. Our solutions ensure for our customers to have "always everywhere the right form".

One mayor basis for the "right" and corporate identity conforming forms is the right font in a "as good as Arial" screen quality. So we are specialized in generating high quality fonts, like this sample.Regulars.a.x. Software saxMonoVersion 1.10Robert Nortonhttp://www.saxsoft.de/typography/default.htmhttp://www.saxsoft.de/typography/robno.htmYou may download this font, circulate it und use it freely. You may not alter rename, change copyrights or modify this font in any way.http://www.saxsoft.de/typography/freelicense.htm �   1 9 9 9   b y   s . a . x .   S o f t w a r e   G m b H ,   K a r l s r u h e ,   G e r m a n y s a x M o n o   i s   a   s a m p l e   o f   a   f i n e   T r u e T y p e   w i t h   h i g h   s c r e e n   q u a l i t y .    
 I t s   s p a c i n g   ( 1 1   c p i @ 1 2   p t )   i s   b e t w e e n   t h e   C o u r i e r   a n d   L e t t e r   G o t h i c .  
  
 s . a . x . :   O u r   b u s i n e s s   i s   p r i n t i n g   s o l u t i o n s   f o r   c o r p o r a t e s .   W e   c o v e r   l e t t e r h e a d s ,   f a x e s ,   i n v o i c e s   a n d   e v e r y t h i n g ,   w h a t   w a s   p r e - p r i n t e d   i n   f o r m e r   t i m e s .   O u r   s o l u t i o n s   e n s u r e   f o r   o u r   c u s t o m e r s   t o   h a v e   " a l w a y s   e v e r y w h e r e   t h e   r i g h t   f o r m " .  
  
 O n e   m a y o r   b a s i s   f o r   t h e   " r i g h t "   a n d   c o r p o r a t e   i d e n t i t y   c o n f o r m i n g   f o r m s   i s   t h e   r i g h t   f o n t   i n   a   " a s   g o o d   a s   A r i a l "   s c r e e n   q u a l i t y .   S o   w e   a r e   s p e c i a l i z e d   i n   g e n e r a t i n g   h i g h   q u a l i t y   f o n t s ,   l i k e   t h i s   s a m p l e . s . a . x .   S o f t w a r e   s a x M o n o V e r s i o n   1 . 1 0 R o b e r t   N o r t o n h t t p : / / w w w . s a x s o f t . d e / t y p o g r a p h y / d e f a u l t . h t m h t t p : / / w w w . s a x s o f t . d e / t y p o g r a p h y / r o b n o . h t m Y o u   m a y   d o w n l o a d   t h i s   f o n t ,   c i r c u l a t e   i t   u n d   u s e   i t   f r e e l y .   Y o u   m a y   n o t   a l t e r   r e n a m e ,   c h a n g e   c o p y r i g h t s   o r   m o d i f y   t h i s   f o n t   i n   a n y   w a y . h t t p : / / w w w . s a x s o f t . d e / t y p o g r a p h y / f r e e l i c e n s e . h t m            $          $      ����                     	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`a bcdefghijklmnopqrstuvwxyz{|}~����������������������� ��� ��� �������������������������������������������������� ���������������   �   � �  < ~ �����������    " & 0 : < > E H p u x  � � �!!!!"!&!.!^!�!�!�!�""""""")"+"H"a"e"�###!% %%%%%%%$%,%4%<%l%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�&<&@&B&`&c&f&k����     � �����������      & 0 9 < > D H p t w  � � �!!!!"!&!.![!�!�!�!�""""""")"+"H"`"d"�### % %%%%%%%$%,%4%<%P%�%�%�%�%�%�%�%�%�%�%�%�%�%�%�&:&@&B&`&c&e&j����                                                                                                                                                                                            �x000:<<FFFFHJJN\```bbbdddfhhjjjjjjjjjpvvvvvvvxz||||~������������������������������������������       	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � b c � d � e � � � � � � � f � � � � g � � � � � h � � � j i k m l n � o q p r s u t v w � x z y { } | � �  ~ � � � � �	
 � � � � � !"#$%&'()*+ � �,-./0123456789: � �;<=>?@ABCDEFGHI � �JKLMNOPQRS � � � �TUVWXYZ[\]^_`abcdefghi �jklm � �n ������� � � � � � � � � � � � �����  � ��� � � �� � � � � � � � � � ��� �������� ������� � ������������� � � � � � � � ��� � � �� � � �����opqrstuvwxyz{|}~���������������������������������������� ����������������� � �     # # # # f s[��X����,X���P�N�	�
8
�����N�6T(�1��Im�)���)��~��6�c	f�I���,� - �!s!�"�#B#T#f#�$?$�%K%�&O&�'n(a(�)l)�*�+�+�,w,�-$-/-_-t.�/p/�/�/�/�/�/�/�0
00011-1?1Q1e1w1�1�1�1�1�1�1�22202B2T2h2�33�56T6s6�7�8�9�:b:�:�;d<==�>>�??�@/@�@�AA�B
C5DDyD�D�ERE�FFHFSGG$G$G7GJG]G�H�H�II%I2I`IiI�JJ!J6JyJ�J�KzL"L�M9MBMJMWN�N�N�N�OO!O4OGO\OoO�O�O�O�O�O�P5P|P�P�QQQwQ�RRGR�R�SPS�S�TT T2TtU
U�U�VTVyV�WW�X]XmX}X�X�YY$Y7YVYuY�Y�Y�Y�ZtZ�[*[�[�[�\;\D\W\i\|\�]I^"^5^G^Z^l^^�^�^�^�^�^�^�__�`�`�`�`�`�a aa)aEaXata�b�b�b�b�b�b�cc�dQd�e�e�e�e�ff�f�f�f�f�gggg'g:gLgkg�g�g�g�hNh�h�h�h�h�ii'iKi]i|i�i�i�i�i�i�j
j)jHj[jgj�k�k�k�k�k�k�k�lll2lJl�m�m�m�m�m�m�nn!n3n�n�n�n�n�oo-oOoqo�o�o�pp%pLpsp�p�p�qqIqpq�q�q�r rOr|r�r�ssPs}s�s�tt>tvt�t�uDucupu�vbv�v�wwDwjwww�xx*x^xqx�x�x�x�x�x�x�y y4z�z�z�z�z�z�{l{�{�{�{�||,|]|m|�|�|�|�|�}	} }����%�;�H�V�d�r���˂����{�Ǆ�T�����؅�i�����х�(�z���S�툊���7�U�ډ슊    �%     ��  �� 	 �� 
 ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ��  !��   !�� ! #�� " $�� # $�� $ &�� % '�� & '�� ' '�� ( +�� ) *�� * ,�� + -�� , .�� - .�� . 0�� / 1�� 0 1�� 1 4�� 2 3�� 3 5�� 4 6�� 5 7�� 6 7�� 7 :�� 8 :�� 9 :�� : =�� ; =�� < >�� = >�� > @�� ? @�� @ B�� A C�� B D�� C E�� D F�� E G�� F H�� G J�� H J�� I K�� J L�� K M�� L N�� M P�� N Q�� O Q�� P S�� Q S�� R U�� S V�� T W�� U W�� V X�� W Y�� X Z�� Y \�� Z ]�� [ ^�� \ ^�� ] `�� ^ `�� _ b�� ` c�� a d�� b d�� c f�� d g�� e h�� f j�� g j�� h k�� i l�� j m�� k n�� l o�� m p�� n q�� o r�� p s�� q u�� r u�� s w�� t w�� u x�� v y�� w {�� x {�� y }�� z ~�� { ~�� | ��� } ��� ~ ���  ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� � ��� ��� ��� ��� ��� ��� ��� ���� ����8�F�����(3F���@�F��$���$��B�d�t������@�F�}(�B(�y��B������+/F�����%F���@�F��(`�(FF`�(FF`�(FF`�(FF���@�F�~}�}B����|/F�z���@	z(6F�z�z���@z%F�z�z�z���@�zFy+y;y�y�y�yy;y�y�y+yKy�y@y!F@yFyywB�vB�uB�tB�sB�rB�qB�pB�oB�nB�iB�hB�gB�eB�cB�aB�ZB�YB�WB�UB�SB�QB�MB�LB�JB�HB�FB�DB�CABA8U8U8U8U8U8U+d����P���@	F+�����!$F����@FP@���@G	F/8U8U/8 U8
U8U8 U/  ?  � � 	8U8U/TS� ���K��RK�P[X��Y��� BK�SX��YK�HSX�`YK��SX� � BY++s ++ss++++s++s+s_s+s+ss+ssts++++++++ ++++++++++++++++++++++++++++ss++stu+s+t+u+++s++++++++++++++t+ss+++_   @?XUTSRQPONMLKJIHGFEDCBA@?>=<;:98765/.-,(&%$#"
	 ,E#F` �&`�&#HH-,E#F#a �&a�&#HH-,E#F`� a �F`�&#HH-,E#F#a� ` �&a� a�&#HH-,E#F`�@a �f`�&#HH-,E#F#a�@` �&a�@a�&#HH-, < <-, E# ��D# �ZQX# ��D#Y ��QX# �MD#Y �&QX# �D#Y!!-,  EhD �` E�Fvh�E`D-,�
C#Ce
-, �
C#C-, �(#p�(>�(#p�(E:� -, E�%Ead�PQXED!!Y-, E� C`D-,�C�Ce
-, i�@a� � �,���� b`+d#da\X�aY-,�E����+�)#D�)z�-,Ee�,#DE�+#D-,KRXED!!Y-,�%# �� �`#��-,�%# �� �a#��-,�%� ��-, �` < <-, �a < <-, �C�C-,!!d#d��@ b-,!��QXd#d��  b� @/+Y�`-,!��QXd#d��Ub� �/+Y�`-,d#d��@ b`#!-,E#E`#E`#E`#vh��b -,�&�&�%�%E#E �&`bch �&ae�#DD-, E� TX�@D E�@aD!!Y-,E�0/E#Ea`�`iD-,KQX�/#p�#B!!Y-,KQX �%EiSXD!!Y!!Y-,E�C� `c�`iD-,�/ED-,E# E�`D-,E#E`D-,K#QX� 3��4 �3 4 YDD-,�CX�&E�Xdf�`d� `f X!�@Y�aY#XeY�)#D#�)�!!!!!Y-,�CX�%Ed� `f X!�@Y�a#XeY�)#D�%�% XY�%�% F�%#B<�%�% F�%�`#B< X Y�%�%�)�%�%�)�%�% XY�%�%CH�%�%�`CH!Y!!!!!!!-,�CX�%Ed� `f X!�@Y�a#XeY�)#D�%�% XY�%�% F�%#B<�%�%�%�% F�%�`#B< X Y�%�%�)�) EeD�%�%�)�%�% XY�%�%CH�%�%�%�%�`CH!Y!!!!!!!-,�%  F�%#B�%�%EH!!!!-,�% �%�%CH!!!-,E# E � P X#e#Y#h �@PX!�@Y#XeY�`D-,KS#KQZX E�`D!!Y-,KTX E�`D!!Y-,KS#KQZX8!!Y-,KTX8!!Y-,�CTX�F+!!!!Y-,�CTX�G+!!!Y-,�CTX�H+!!!!Y-,�CTX�I+!!!Y-, �#KS�KQZX#8!!Y-,  �I� QX�@# �84!!Y-,F#F`��F# F�`�a���b# #��@@�pE` � PX�a�����F�Y�`h:-, �#Id�#SX<!Y-,KRX}zY-,� KKTB-,� B�#�Q�@�SZX�   �TX�BYY-,Eh#KQX# E|h�`YD-,�%#�   .E�@ c#Eb�CX�@ � `� b�@  `� b�+Y�
#B�#B � /�#?�	+� �<�/� �#B�#B��C!-  � V V �   ��  ��  ���d��V �d��V��c ���c                                                                            b � � �   �   �   �   � d       � { �   � v �   } r             �   �   �   � x {         � � � � � � � � � z G] �� d b�' �Q D A B @� � �Rp�{ � x� l R Z� ���;�i\ � �4�  �    c  c  c�c �c 7c `c c Rc�cHcc fc mc�cHc�c {c �c �c �c mc {c {c �c {c �c �c�c�c mc mc mc {c )c Oc mc {c nc mc mc `c oc �c `c mc |c Rc `c `c mc `c mc Kc 7c fU Dc Dc Dc `c DcHc {cc mc��cwc {c {c {c mc mc {c mc {c �c Dc {c �c `c {c mc {c mc mc tc {c mc fc Dc {c mc mcc�c"c �c Oc Rc {c mc `c `c fc {c {c {c {c {c {c {c mc mc mc mc �c �c �c �c {c mc mc mc mc mc mc mc mc mc mcAc �c {c YcHc 7c �c c c 	cwcc mc 7c c Rc mc mc mc `c {c mc mc �c0c?c "c 7c {c�c mc c  c �c 7c Sc dc 4c  c Oc Oc `c `c c �c��c �c �c�c�c mc c mc `c R` {c �c �c c c mc�c�c �c 0c Oc mc Oc mc mc �c �c �c �c `c `c `c fc fc fc �cc,c �cc�cYccc �cccc��c �c Kc tc Dc mc�c��c mc `c mc mc �cecMcI� !� !� y` Ic `c mc �c Kc tc {c {c {c {c mc �c mc DcHc��cFcc Oc {c Oc {c Rc {c {c {c {c {c nc Yc��c mc mc mc mc mc mc mc mc mc mc `c mc `c mc `c mc oc {c��c��c �c �c �c �c �c �c �c �c c `c `c Dc mc {c {c |c �c |c �c |c �c |c �c `c {c `c {c `c {c��c `c {c `c mc `c mc `c mc mc mc mc mc mc mc Kc tc Kc tc 7c {c 7c ?c 7c {c fc mc fc mc fc mc fc mc fc mc fc mc Dc Dc `c mc Dc mc Dc mc {c  c�c�c  c�c  c�c  c  c  c  c  c\c�c]c]c  c  c  c�c]c]c  c  c  c�c]c]c  c  c  c  c  c  c  c  c  c  c  c  c �c �cCc )c fc mc kc mcUc yc Hc:c Rc {c 7c "c c 7c Dc Dc `c mc�c��c `� !� � +� Lc�� 7��G��G��GG�� �        � f           x F��  ��
 � J�� 6 h � @ 33 x9 VMFM )AC 0 D m {       �         	 							  
 																																																																																																																																																																																																																																												


																																																																																																																																																																																															



																																																								  
	 																																																																																																																																																																																																																																												


																																																																																																																																																																																															



																																																								  
 


































































































































































































































































































































































































































































































                  !   %     �  ��   @rr rr  /�/���}��103!%!!� �� � ��R�� ����q   6@!	�z zz	@ @p��� ?�]q?�����}��10&32#"'2#"546�t(#24/77By}Eb&��??�PG8vz7D �� ���q 7 
�&    
 �    7��)q  /H@�*�#�"��H�GW��	/+�-&($�&   "#)*""nnQ��&�&�&�&&HI/&& nn@��`

���O_0��	"� � 
&
&#r)-- *r�     ?�]]���99=//����99=//�����?=������]]=���]=���]�9=/��}�����9=/�]+]]�]�]�9=/�}�����9=/���=��10]]]]]]]]]]]#"54337#"5433632#"7#"763232##32#"�EB�%�:>�G
:<�
=@J
=?�
5>A�PR�%�PN�@B�AA�<<��FF��bFF
<<�e=E�AA  `��= / 7 >�@Ҥ=�6�5z5�5z1�# XI� � �����	�	�	�	���>�=�=�8�6�5�%�$e$�"�"�z��������"0*$5=�3z3�33c�&�&�&�&&&/&& --* 8
 a`*�*�***/**�;w;;c�������@C M?!9g@� 97UF9"U8F8=8"$75 ��@+/� - 0
g*  ?�����=��?��]]9]]]]]]�=�����+}�]]�]]}�]]����99=//}�]]]]��]]9���10 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]_]]+_]]]]]]&'&546323&'&5%5432#"'&'#"56654'&''�r��#�[�G~DDrl�4ekK�Emkd�AG�p�E)���P%5ES"�=@2Y�@/�GG�	7Fa8FJ�B8Y��ke�HM�qv;"4���`8�� ��Kq 7���   6 � �,�c e@P p�,,/,O,,�,�,�, ,,@,�,�,�,�,�,�,�,/,?,_,�,�,%O%o%%�%�%�%�%?%]]q.5 ]]qr.55].55   R��)q 6 B P/@��E�:	:�9�8�7�7�6j55�4�4�4�,v)5)�'�'6'��n��{��f���6 �E�EtE�;�:�9�8�8{7J5U)�)u&������J2-�/"$�" �C�C�PC+O+�67855O+Ov55+)':	"p�G�G�G�G�GGMp���<�<<p�@,��?HI	Q//-t3
EOC�IIt�����H���@K	Hz88	:'7) +5�C�C�C0C`C�CCC""%$t�?�?�?u??t���� ?]]]�]]]���9=/}�]]]]9]?++]�]9?�9=/�]]+]]]]�]�]]��]_]]�9�9�+�}ć�����]�����_]]]=���=��10 ]]]]]]]]]]]]_]]]_]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]%#"&54767&'&54326767632#"'&'327667654#"�;;Cv��V8�()+��Bn�!\<*EW!G)M83I<4	��f'D�gV8&�'(/l,##�m*.ɣ��]�JJ[F��Y^~��??^08!��54I(.
?
��t@njh�;&�/0A0^*,D2  ���q  '@		� z 	 ?}���9=/}��9=/10432#"'&�{{>
24
:�ws�MR� H�POq  @
q  ??����10632 #"'H&l;$K��>@#J���Lz H���N���=$#�@ �Oq  @
 q ??����10#"&547 &54632��l;$K3��@#H����X��z H&��0=#$���  fJ�q *f@%xx@H@	H�*�*����!�"���@	H*"&"v *  *&&/&& ���@�Hv��� vv       P`���  ���p	� _��+*&(r" ���p_o ?33�]]]]229/}���}��99=//�22�22�]=��}�]]]]�]}�]99=//�+�}ć+�}��]]]]�+�}�+]�]�+�}�+=��10 ]]]]++]]#"5477!"543!&54327632!2#!#"'0�)8���LL�A"��';�SS��*+A9(a�17�A?�%>"��+=�=CDEn$5-   m H��  P@(�� 	|n |@� | r|@� x ?=��/�����=��������=����10432!2#!#"5!"543�@A4N/��>C��NJK4NJ��?%��NL5AA  ��@� �  @z 
z ?�|����9=/10%4632#"54654&�E/>D=@N+ggt.8R?`SV)W!F H�K 	 1@� @ � 
 s� ?�99=//�=���=��10!2#!"54�8NM��NK@BB@ ���� �  "� ��@(-Hz(-H z	 ?��+�+10%2#"542yy}�{{{{  {���q  1@v



   ?=�2?=�2�}Ň+�}�102#"5476�:�0)>� q2*� .4&�7  ����q   �@k�a��`?a�    �� �  ���g	y�p��p����g�v� ?]]�]]�]��]�?]�]]�]��]��]]�}�]]]]�10 ]4632#"&%4&# 3 ���������ƙ��阊�D���������D�������  �  �V  k@7��  @� �

aP `  
 e		e ?�99=//?��99=//�]�9=/�]=���]�=����10%#"543!232#!"543�KK
D�MM��MM�OABB�pF>BB   �  �q # �@���� u ���������� �  	i# # #c!@� �!!`!!?!!	c@� �	 		$�#�#�#����igv��		 e ?�99=//?]�]]�]99]]]�]]=���}�]]]]�=���ԇ+�}�]]10 ]]]]]]]_]_]]]]]]%!2#!"547654'&#"#"5476!2N*`N�IJN\VMo�K$1#*<5z�q|��CA:"�oak=6W*xWGQ`�U^���   m���U ( �@8�����$�#�#�#�#�#����
����@aI ' i			 '' '�'�'�'''� 	�����ic@�� )�!!g' $$p$�$$$		 e ?�99=//?9/]9���]��=��}�]�]]]]�=�9}/]�+�}�10 +]]]]]]]]]]]]]]]!"543!2632!"5432767654&#"#"547���WW�N���������bR�z�h|_H8�/�C@5�������;<6>l��IiD9    {���q ! �@P'aiy�� �@���� "!�  e@����@
	H� 
 ?=�2�+=��?�����99=//���]]}�]�]��]�+�}���99=//10]!"54767632!43232###"5��7>'">
��eEC�LL�DD.F�4
; �+MM��BB�MM   {���V ' �@I,�u���qt�������	����b  ''i���@	H&!� #��ic����@9Iv`?� (##'e ?y�g  0�
 
 ??9/]��]�]�99=//�]]}�]]]+]�]]]�=���+և+}�10 ]]]]]]]]]]]]]]]]632!"54767$54'&#"#"76763!2#!t�`�jg�����HX�}=BjD�66J-�l;ro���;;@��lJOXM�:(@'   ����q  $ �@�� ������q���vHIll�z ��c�""c�}?��%�  �gv`�g�y ?]]�]?9/]]�]}�]�]]]}�]]]]��]�]�10 ]]]]]+]]]]]]]]]]]]632#"'&5632"32654&*o�����rj{�a41�o�QW�}|���~穯犀��A�7���CG}|��{z�  {���V  R@/� 	i  @P��		@�  �	� e ?�}�?�2�]=���]�]�+�}�10 ]!"543!2#"547I��UU�N�41;�C@7L�nE<5   ����q  ! /@%4
�
�
�
r
4 � � �  

$

���@IH
xc�@Hw�,c���|`?  $ � �  w��c����@XH��y�%�%%c���x 0g((hyv v
 
 
h " ""�""g'�v ?]]]q��]q�99=//]]?]]�]�]]]]]�]�]]+]�]�]q}�]]]]]]��]+]�]�+q10]]]]q]]]q&54632#"'&5%2654&#""327654'&x�ڞ�ά�⽹y~�gy~fg�GCe����|HDKN�[���Ȝ�lj���ps��wgg��hd<9z����VR��SW   ����q  $ ˶������I���@}Iaq�RC2����rc����y�  c�}?"cy� % �gy�gv ?]�]}�]]]�]}�?�]]�}�]]]��10 ]]]]]]]]]]]]]]]]]]]]++]]#"&54632 #"547$27654&#"<������slec��F5?m�~QW�}|OR��}㬰牀������7+)�qCH||�JL{z� ������ 6       %����@� 6     ��%  m H��  p@8  v@  v�  p@
��V   |/��]]���=�Ň+��}���=Ň+��}�10#"'&547632�,29�AEJ�17/
��'7\"+(%[8*  m� 
  T@(�� @� � 			 rr /���99=//99//��=������=����10!2#!"54!2#!"54��N/�NJ�N/�N?%AA�m?%AA  m H��  e@4  v	 	 v		 n@��W��   |/��]��=����+��}ć+��}�10&54632#"547V�D* 9�EJ�A/7/
O("��"(,%��8*  {���q % / �@?�"Z)z-p $" q	p0&z+	�$�$����"�"�"�"�""$ ���@H��yht�� ?]�]]]]�}�+]9]]]]?���}��9}��}��10 ]]4'&#"#"547632#"5476762#"546Wn]mgLZ	
3>My�~�9 �"4AZSTZ��7By}Ee?6*1\+/AXa�Ze�T="p(jPR|W<=B�G8vz7D   )�7q I TP@"�G|G�G�GG 	H�C�6�6�3�1�.���@�	HH�   !
Jn�!�!�!!&n+F;F[FFFF=pQp���hY-n=U��t$tH�9�9�9H99t�33�/�/�/�/V/v//�S�S�SSt����M�M�MMt�����*�*�*�*�*J*Z*j**	H*t�A�A�AFAVAfAA ?]]]]�+]]]]�]]]�]�]]�]_]]�_]]]�]]]�]�]]]]���]}����]]]����_]]��]��9=/10 _]]+]]]]]]+]]%#"&5463254'&#"#"&5476323254&# !27632# '& ! #"'5&#"32�fuu��}r6VD##!$+G��<5#C���{��tF4��j����
yv�Xd:SI.1�s�X�u~�6aW#/&=&%2=dMD���+_�˽�`���j5 ;J-"��-}{���
�ђ2'*G}   O��q  6@�wf���
�	�	xi��f� � i T	p$++p


$
 L�L



� @` @?O/?@$H � 	
���H   @J@�6F�� 	 ?=��?]]��]����]]���?=���+]qr}�]9=/��/�+}ć���/�+}ć��]]]]]]]]10 q]]]]]]]]]]]]]]!#"767632#"'!&#"<��M3Gd\!/��/>>iG8
���o!h> ���(8'�ȍ�������'D1�3�/'^   m  W   " x@G�D y�Fy�F'���� ?#"H
  H 
H ?�9=/?�]�9=/�9=/�q}�]]]�]�]�]|���10]!!"543! !2654&#!5!27654'&#!E��{� II�������v�^�d:6B@k�y�F��xC�I����Yv�w��HBgj;8  {�� q ' �@v
&""�*	y!��FF� � &   D@   ( � $�  �u��J@�$�$$	� ?	�		��y��J�� ?]�]�]��]=��?]�]�]��=���]�}�]]]���10 ]]]]]]]]]!2#"'&'&#"3 767632#"'&{ѽs�C0%:ʭKFJO�)&C�p��z��0�Tg�SNC<iWN��-�NX�D&S�eJfm  n   V   o@D D�	�		   H	���@'H|	W	g		�H��sYi� ?�]_]]��9=/?�]]+��9=/�}�]��9=/�10743!2!!"7!265!!nDe�y���D�������F�Rz���A�5����I   m  �V  v@=��	� @HD?H � HH ?�9=/�?�9=/��]�9=/�q��9=/�}�+]=����=����10!2#!!2#!"5463!2#��__�"�__�/U2#�``��2=F�>FS�",=F   m���V  n@:�� �@H

D?H � H@� 
	 ?=��?�9=/��]�9=/�q��9=/�}�+]�=����10!2#!#"543!2#��RR�DEJ8[��2@C��VV�P@C  `�� q . �@��)u�F@	� 	  D	&D@/� ��%%���#�#Y#i##J&v���IXH�*�*V*f**J@�&&���	� H�O	)y��	 ?]|�]]�9=/�����]�]�]]�++?]�]]=�]�/�]=���]�}��9=/����=����10 ]]]#"54332#"55#"'&5! #"'&'&# 32765{�RR�D>@��}��@t$F+&(N���cY��U[�ACR�+H4j�ms�1��G@JOj(O���ϑLDGK�   o���q  �@M D		D@��P/����  Ho� @�	�		�  ?=��?=��?=��?�]]�=���}�]qqqr��9=/���9=/�10!432#"5!#"5432�tECDD��DEED	cc�GGV��NN�uo   �  �V  \@,��  @�� 	D  H	H ?��9=/�?��9=/�����=������=����10%#"543!2##32#!"543��VM{PP��[[��KK�NBB?E��BB?E  `���V  {@G��D	@� 	F@� 	 �����Vf�J�y	 H ?�9=/�?]]�]]�]��=����}��=���9=/10 ]]]!"543!2#"'&543232765]�[GG�@�{��OH'UQm�W\�ACT���qk�iPM&1e97IM�  m��)q  �@[ L   L  /@H@H D@
� /   @� 	 ?=���22?�]q=���22��9=/�}�+q�+q�+��}���3�+}�10 ]q#"5432632#"'�FCED�"<�L�&#����LL�EJ�$9���l&!|  |  )q  R�� ���@$
H	 D@ 		 	 		
� 	 H ?�9=/�?=���]q�9=/��+=��10%!2#!"&5432�VV��,DD�CA!$�]c  R��q *@'� � K�	)H�D�&���@0H�  M LDD@� @-7H����8=H���@eH��  D@_���@��/?@H�@H� �/?O
�� 	 ?�=���]]2=��?3+q�2+2333�]}�]]q�99//]+++r����+}ć+}�10]+]]q+]] ]]632#"5#"'#"5432<D5ABG��'+��DEI/,:Z�J\���;;v�JS�[5  `�� q  �@S

�
�


L   D DP_@�HI@H{�$� 
 ���@Ht � /  	 ?�2]]+�2=��?3]]++�=���2�]}�]�9=/��+�}�9=/�10 ]]]]432#"'#"5432xBFD/�vHAB)^^�G+B��MM�^4  `�� q   �@t����,*"$ D@
`
�

D? O o   
 ���tVfJ(��		���{YiJ'�� ?]]q�]]]����?]q�]]]�����]q�}�]q�9=/���10 qqqq]]]]47632#"'&%!"3 `�|��vx�z��|�����^W�G�6�qjor����nggn�!;���ِOJ  m��)V   k@@�
�
�
�
F��Dd# D?HH   @� 	 ?=��?�]��9=/�q��}�]]_]]]�10]_]]#"543!2#%!27654#!�EDG*�[U���r��EJ��0K��MM�Anf����;?��   `� q  2@�������t�sv�..1F,@����D  *#,, D`��(D3!��'���#j#z#I#Y##J�.���@5	
H.�u*G*W*g**J� �  ��(�� �	 ?]���]��]�]]�9=/99�]]��+?]�]]]�]��]��]��]��99=//=���2�/]]2]�9=/10 ]]]]]]]]]]]]#"'&547632#"'&765!"!&5432�3/�|��|��{�74t-�+<IaN����V\N^I' 
ip�2�tons��΃YTG.T :J;�`�4/KP����ܭ�s/G�   m��7V  " �@y��t	DyhF���y'��L  � ` p �    0@`��?#H� �   "H@
� 	 ?���=��?��]2]��q}�]q9/]_]�+}�qq�]_]]]�]]��10_]_]]#"'!#"5463!2%! 4'&#!$>,����DE*��^Xs�\x17l�Eg�� ;34��NN�* mg���;pDN  K��q .�@�t$HI���|��,�+�(�$�$�$�������������� � ��,,-,L�-�-�-��,�,,- �*�*�*z*9*Y*i**F��Dd7# ���uF� � � /  H
I	  /�����-�-f-C-S--�&&���@-H&J�"�"�""	�����hJ�
�

� ?]�]�]]]]]?�]�+]99]]]]]]]�]+]]]�]]]]�}�]_]]]]_]��]]]]9]]]]]]�+�}� ]]]10 ]]]]]]]]]]]]]]]]]]]]+]4763 #"&'&#"#"'&5432327654'%$Z�v�.�";a>j�~P`��ߞ�Ԃ��:f~��bt������`S�' 8B03<w�Axb��nU,;a98E>I��8\Q  7��)V  T@) 
� D @� � �  @� 	 H ?��9=/�?=���]�=����=��9/10!"543!2#!#"5���GQNSS��CE�?DAB�_NN   f���q  �@P�DP�� D? O  P���P � �  ��
u
�
V
f

J@	��  ?=�����?�]]]�]q��]q��q�9=/}�]q�9=/ ]104323 432#"'&fBGcZ�.CFws�π���XX�v�NG'�ZZ�v�nkkr  D��q  �@	��V �  ���@ZH  L L o��� @D@��@ @`�@
H���  
	 ?3=��?�=�����+]r�]��]qqr9�+}ć+}�10 +]q]q]q%632#"'&5432+`/A�e33�b@-�Q88�,,�88   D��q   �@*��� M    M    ���@ 	HM	HM���@E	H PO_����/?! �� 	 	 ?333�222?�222�=�����]}�]q9=///�/+�+�}��/+�+�}�+�/�+�}ć+�}�10q]]_qq%632632#"'&'#"'&54329�Y\�];@VxC �oovl8=`����d�HA�c�(KX�����;I   D��z   �@�_P�K    	L  		L		/_�� @��?O��@
H!��		��  ?=�2�=�2?�=�2�2�+qr�}�]]qƇ+�}�<<<<<�+�}�<<<<<10 _]]]&5432632#"'#"547���C"TK#!+���@"����(B�I> ��8"'����";):��)=  `��q  l@8		LL  D@ �		��      ?|�]�3=�2��2?=���]}��}Ƈ+}ć+}�10&5432632#"5���=(RO'?��DDK�;.��j31%�?��KK  D  V  �� ��H���@O
Hd  H  
H k �  L� @`��� @
HH H ?�9=/�?�9=/��+=��=��}�]�=�+�}�=��10]++]++!"543!2!2#!"547P�k\\�Y��\0��X%�AB8.��D*	5'6 H�dOV  N@#��  n		r r ?�99=//?�99=//��99=//}�=���=��10!2#!"543!2#!�BCL��GGvJJ����@>>sAAB  {���q  '@
v


	 ?�?��}Ň+�}�10432#"'&{9-�A%�<5#��7  �dV  Q@%�  n@� 		r r ?�99=//?�99=//��=��}��99=//��10!"543!2#!"543!���CLtGG��JJ;�<AA��JBB   mt�q  �@T�����v7 v� I v   � � �   �� u
 /3�2?�22�]�]r�+�}�q�]�+�}�q10]]q]#"547632#"'0��#8\+" -\:%���*9.6FJ��):,�����O��� � �� w]��  +@��� � @HT t�	y ?����]+10]]432#"''&wM.)�$0/�BWW-�'0 }-  {��>� 1 >@·=�6�0�0�0�0k0{0�0L0\0900)/�!�!!�!��������
�� 2Q$$`*�*�**S7S@(�?#�3W ���u�5�55WO��xW����7&2U ;W**(W,��(8 ?]]��9=/�}��?]]]]�]]�]�]�]]9=/]]����]]���}�]�]���10 ]]]]]]]]]]]]]]]]]]]]%#"'&54763254'&#"#"547632#"'&'&'5&# 3276Ac3Ei�hx}n���jJk�)GOc��`r"9";+M(����WEi]K:eHEP��YN>�o1!�? JdVlBO��7P06��1�a0&#  {����  $ �@%�$�$�"� x ��		 QQ����@TH%�U�  W@���� 9(�$$U�vx"�"�""W�@6'� 	 ?=��?]]���]|�]]�]?]]�=��]��}�]�]�}�+]����99=//10 ]]]]]]]7#"5432632%"'&'354'&#"�(9D>�̧q��lyCLY��aP{��h5,F \\�,�OZ�������jt90  {���� # �@X� � � ������QQ�vQ� �  $ ����W"Hx""��W		����Hw ?]+�]�]��?]+�]�]]]���]�]}�]���10 ]]]]]]]!2#"'&'&# 32767632# {��z�8')&K���iK�wP.2'6Bn��6@lSEU�:>T >���~4#(2(89?h  m����  - �@x� Q�&Q@H����.@� Uv�!y!!W%	���6��'Uy  �*v**W�&��9���( ?]]]�����]]}�]�?]]]���]]}�]�?=���]+�}�]���99=//10 ]]%#"'&547632432#&'&'&'&#"3276j^CIn�o�~m�s�V>C<%
	_;Nc|N_dP|gKBdEKW�z�XL2G�\\��E*�E!/:o��s8-"  m���  " �@;���� Q@H�����#S��S    @���@ZHU��� "�9����{iXW���gw� 		vW���( ?]]�]�]��?]]]]�]]]]]]]q���]]]�/+]q��]]��]]]]+��10 ]]]%767632%4763 #%!!"�FvL&`=6P����>\{��Q�N���x_eގ�=68:@heg{Yt�Jk�!5E\  {���� # �@Y��S@!!� Q @� $@#� !��W/��f	�	�	�	G		&	6		 U ?���99=//?]]]�]��]�?=���=������}�=��9/}�]�10 ]#"54335!2#"'&'&#"!2#!#"5U�LL�M�ZqB,(t�UU��B@kA?}F1F�T2T2�z@@��LL   m�P��  )@@����5�����
 Q    @`p���$Q�@H�H*&����WFW?@H/HI���{�n=M]����hxY:J(Uv

�!�!x!!W#����H���@
HU &W$�H
H ?++���}��?++����]]}�]�?]]]]]]�_]]]_]]+q�+]�]]]]]q�+]+}�]��]q���9=/10 ]]]]]]]]%'!2632!"'&54323276&# %276c���e�sZ17�>pt�8	�{�>%l���lJFZoQsP-HuU�)�~,:U;wm5r�����  {����  �@ Q
Q@����@0H���
� U W����������
H ?+]]]���}��?�=����?=���}�]+]�9=/��99=//10663 54!"5432�c�u�@A�Ӭ�@BAA�>)����XZhҁ�GXZXX �� �  ��6 �   �   �  
P+.5�� D�P:�6�   �x  �' '! P+.5  {�� �  �@Z���
�


Y



 Y Q@�
�


�� 
  ?33?�2?3�=��?=���}�]]����+}�9�+ ��}����99=//] ]10632#"''&5432�o-/8#�l�!.2�b�@BAA�-> ���2 B���CA<DD   �  ��  n@8�� o @� 

Q �  
 U
		U  ?�99=//?��99=//�]q�9=/�]=���]}�=����10%#"543!2!2#!"543�KKAKK�OSS��?CD�*A?A?   `��� + �@d�����((% !Q%Q/Q/%@H%,@!%�#��#&� ( UT�  WW
���@	H
g ?]�+��}�]�]��2�2�=�?��=�������+}�]q�}�]q�9=/9/��9=/10 ]]]6763267632#"54#"#"54#"#"5432�2,BjO8)0O�C?rWOB?|NNC?5�=o@��&YY��g�.ZZ��g�.ZZxA&!   {����  �@I QQ@���	� U W�������G�&6 ?]]]�]]]]��}���=�?=��?=���}�]���99=//106763 #"54&#"#"5432�cGDs�B?��lK=g@B>"�H����ZZenf&M�UZZlM0&   m���� 	  l@	x

Q ���@:HpwQ @H H 
 �W��(�W�� ?]]�����?]]������++�]}�]+q�]10! %4! %m���D�7����C>=pR������Rp�����  {�P��  & �@x &QQ@  �����I����@I�@`p���@EI '� U�W	��		H8	H		&Uv  �"x""W@� ����@
H7G ?]+���=��]]}�]�?]+]���]}��?=����]]+]]+]+]q����99=//10]63 #"'#"5432327654'&#"����sh�К@B4��yL[`M|qF>V�l�����[Sn�Xbb�`)"�6~/8fvt6' T  m�P��  $ �@H�!v!x Q�Q@HH%@� Uvx���W������H���@)
HU �#�#�#�#�##W��H
H ?++]���]]}��?++]�����]}�]�?=���++�}�]���99=//10 ]]]%# 47632632#"5&#"32cWH?s�[�o�ˀ/9@A{�yOagTz�YDRo�YMssN�bb7�.8i��k9/   m  �� % �@X<��fTE4�
!%�# �  Q	#S@#� #&##! U!
U	W@� �U ?�9=/?�=���|��?��99=//��=��}�]�}�]���=����10]]]]]]q%#"54!632#"'&'&#"32#!"543~�NNCx�o�A'HKB$F�NN��NN��@An��oM3[36U��=C?A   t���� -`@�,�&�"�"�"�"�!� ��
�
�
�
�
�
�
���z-L-=-)-�,v*�"� ���sT!�v������Y*,**,*, �(�((S���%��S@) �  .,*�  0@�$$W@�� ��O�W� ?]�]�]]=�?]�]�]=�99��]�]]}�]]]]��]]9�+}�10 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]_]_]_]_]]]]]]]]]]]]!2#"&#"#"'&5432327654'&'&��yw�5�odH[�	�p�܈s6;N1Y`qVp�����))8`5v /Wh**כWJ`Q26(4()5Zs <  {���   �@jY*:J���XI����� O���� 0p���		 QO@� @	H! ��W@� 	 U ?���99=//?=��?��]��}�+=���]���9=/}�]|�]=��10 ]]]]+]]]]]]]#"5433432!2#!32632# |�II�AAYJJ���`�;�ct��k@@^ee��>B���v9EJ-B   m����  �@T��( Q�Q@H @�	�� U �����W@H��� ?]�+��]]|���=�?=������+�9=/}�]��99=//10 ]]]%#"'&5432327432#"'&jdHTr�fj@BJD���A@8"rJ W\�xII��w72��II��J5(  f����  �@\      Y��
  Y�

O���  P`����� 
 ?=��?�=�2�2�]}�]]q9=/�/�+ ��}��/]�+}� ]_]10%632#"'&54632/F-B��44��%.�29$��@@e$8   D��� �@)�W��!! 	H Z 	H���@	HZ    ���@	H 	HZ���@	HZDTd����"%H����H���@h	HYi��$����?OO_o����O_�//? ��	�����@	H���� �  ?3�2]=����?�]2|/+]���=�2�2�]q]}�]qr_q]q9=///q�/+++r�+�}�+�/�+�}�++�/�+�}�++�+�}�+]10 _]]q_]%632632#"'#"'&5432=�PL�Y=<
afY��[jx<8	E�HH�sGE[��C>��;CPb	EB   {����   �@�� ��	��� �  ��
�	��%	 		Y		���Y��� `�o!	 ?33�23?�2333�]�]}�]]]]�+�}�]]�]�+�}� ]]10]]]]]]]]]]]]]]&5432632#"'#"547���?.1(��N;)&����(/=��> ���#�`�j>,v��24$   m�P��  |@H4Dd4D+Y  	  			YoPW	 ?33�23?�23�]�}�]]9�+}ć�ć+}�10 ]]]%&5432632#"'&5432327���B(G05>�>�?0B>DD$$d$>1��O5)�Z�5= [   m  ��  �@x��������1a#� � � � � � X +  � Y  �Pp�� _U
 U ?�99=//?�99=//�]=�}�=��}�]q�=�+�}�=��10]]]]]]]]]]]]]]]]]]!"543!2!2#!"547��OO�@��bTT�H!kB>1��@@9( �eAU / }@G 8
H 
H($�&� 
&-o 0&&(r$-�$  t_�  $�

r 0 ?]�9=/��?�]]�99=//���9=/��2�����=����10++332##"'&54'&'&5476765476332##"��_BIyN--0P00R0z*eIE\$���y|AA70��T67	g�� 
@@����  ��Pu� 	 .@o@
 ��  ?=��?=����99=//10#"5432uGBEDo�;;�? ��"�eDU W ^c  � @   ����  @ uu ?������}�102632#"&#"#"54632�4h0�>-�i/�,1�i�2:���2.�� �� O���6 $   �  J @	# #5
P+.55   R���  ! -�@&�!��������!������@uH��+~� `�!!!L���%~�o�L  ��_
 0 � �  ���@
H ?/?.���$H���	H~(����'7H(���@<$H�((�J"H@�""!4���s��		 � 	 ?=�2?=�2?_]]]q3}�2?]�����_]99�]++�++�]q�+]qq�]]]]�+}ć��99/}/]]��]]�+}ć��9/]]�9/10 ]]+q]]]]]]]]]]%#"'!#"567&54632!&#"2654&#"C<
K��M>7�#[D{]\zQU�
�qti"�1@D40DG0L?i��(B5�9@U]|w[eA&���L��8E14BC04E   {�� q ?.@�6>�=�=JZj�%�8�3�3�+�+�*%#+����)F%< ~~�����v]mF5&8F<2D@@)%� ?''!1��-y--J@�!�!!!<�8� : 2� ~��/~ 

�6�6v66J ) � �  	 ?]}��]]�]��]]��}����=��?]]�]]���]=����}��9/]]]]]]]��������10 ]]]]]]]]]]]]]]]]]632#"54323254#"#"547$!2#"'&'&#"3 7632"##T62�h�6QgQH-��Ѳy�C229��KFJN�)4C��iD?VgxJ6yk-5�CU0�Sh�SHQB[WQ��-�TX�lS�aD�� m  ��6 (   �  J �! !P+.5�� `�� �6 1   �  J � 'P+.5�� `�� �6 2   �  J @	" "4 
P+.55 �� f����6 8   �  J @	 / P+.55 �� {��>�6 D   �   �F FA$P+.5�� {��>�6 D   C   �J JF$P+.5�� {��>�6 D   �
  �D DN$P+.5�� {��>q6 D   �   @	B BT$P+.55 �� {��>q6 D   ��  �D DP$P+.5�� {��>6 D   �
  @	B BH$P+.55   {���� A$@R=+�?�>�>�)�)�$�$�$�$�$� � � �����k�	zi%< ~~���@uH0QB�-�-x--W'�''��!�!�!�!!~
~+;K����O
 


@:�4�4�44W��� � � �   ?]]�]]�]]��/]]}�_]]��}���?_]]�]�]]]�]�|�]+�|�����}��10 ]]]]]]]]]]]]]]]]]]]]632#"54323254#"#"547$!2#"'&'&# 32767632#""$T62�h�6QgQ]%#����z�8')&K���iL�xO.2'6Bp�pD?VgxJ6yk.(�485fEU�:>T >���8)(2(8:>i�� m���6 H   �   �* *&P+.5�� m���6 H   C   �. .*P+.5�� m���6 H   �   �( (2P+.5�� m��q6 H   �
  @	& &8P+.55 �� �  ��6 �   �n  �  
P+.5�� �  ��6 �   C�L   �    
P+.5�� �  ��6 �   �
  � $ 
P+.5�� �  �q6 �   �
  @	 * 
P+.55 �� {���q6 Q   �   �$ $0P+.5�� m����6 R   �   �  P+.5�� m����6 R   C   �  P+.5�� m����6 R   �   � # P+.5�� m���q6 R   �   @	 ) P+.55 �� m���q6 R   ��  � % P+.5�� m����6 X   �   �' '#P+.5�� m����6 X   C   �+ +'P+.5�� m����6 X   �   �% %/P+.5�� m���q6 X   �   @	# #5P+.55   m�P�q  h@3		 � { o{@�� s {@� 	 ?=��/?����99=//���=�������=��99//10!2#!#"5!"543!432t:DD��DE��DD:AHOB@��SS*>D�cc A�q   =� 	��@	H	���	H  	H ������	H ?+���+�+���+10"&54632'2654&#"(c��hf��]6HM85LO��ci��ej�lM78JJ59N   ���� + 5@y�#�#�#u����������z""&&, 
)
) a&�&&@	H&2a���6z�-e@� 
1�����������@6Hu,e @'+� ) 2��&�&�&&�  � � � � � z   ?]]]]�]�]]]���=����]?+]�]]�]���=����]�]�}�+]�99=//����}�]�10 ]]]]]]]]]]]]&'&5%5432#"'&'&'6767632#"5��PWqH@�cr?).5bf'1);`Q�FBz2<62KR�v3�UU�KWyD3W=��:1<FJ>�OO8*2j��_30  {��)q B M�@�f?T?%?5?E?�6V6C6444�3�3�+�+�+�*6�[	:J,\VE6	 �@�?�?{?�:�:�+�%�%�%{%�%�%V5���f	j�CIc@2.�0  4��4�443-,00?00#c=0=�=�==)c@�  N�'�''g�!!���003e-P�@$ @H� 46 A
gFKg;�88g�A�AA ?�]�]����9]+/]���99=//?]]�]�]�]�=��}���]�]��]9]]�=����10 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]q]]]]]]]]]]]]]]%#"&54632#"5433&'&547632#"'&'&#"32##32632#"%4&#"3269&*2Rj�v[!)J�NIhhY��XBC(";{��OO�aoa8=10>5;`���@('5c*7}P!'zh[�BBNO^B�E;~^W?>W>xD_POCA��rV�BcGN�'66']4   Y�Pq ? K�@��G�G�@�@�>G90HI�/�&���� �H�G�G�B�B�@�@�>�>�5�1�1�/�/�'�"��������	Y�� p�<:9F:F9vFF9K  vK K K F@GK�D�DDp)O))�<�<<7p�!!�I�IIp
@

�L��  @FKG�3�3�3�33t�-�-�--�%���@(
H%����t������
H ?+]�]�]]]]?+�]�]]]9]]�]�]�]]�]�}�]�]�]9��+��}���+��}��]�10 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]+]]]]]%#"'&5432327654'&54767&547632#"'&'&#"'67654'3SkZ��jzA("<~J8FQ�jB*kXq_��i/( 8|O8KBeB+�M4S�T�Ua_�D:DP�E:Q:$CDM�eraH.AxE�H=�A= ;S;#E4?�`�]H/05BJP�\hIP H��  � 	� ?���104632#"&H�hd��bi~�g{�db��   7��)V  f@8 oO_�o@	�/?�� e 	 ?���?=������]}�]=���]�9=/�]�9=/10&'&54763!2###"5##"5�XPZ^�NAAbED�AGFrj��fnE?�`MK��cPR  ����� 9@�*22j %�7�1�1�1�1�1z%�����
������ $  e0@P&/+Q/$S8S/:*0�4� � $ t ���t  &W@4���@$H4+/�-� P`p���W� ?]�]]}�]=��=��?+�99=//]]]]���}������]}�]]]�]]10 ]]]]]]]]]]]]]]]]]]]]#"'&5432327654'&'&54767654!"#"547632�=BYa��V4@&*,Qx=4\/�STh"N�ߌCM;9f_��ku�2QU��r~nB7C,G,]O~�F$!(/9��24���OO�QQW`��   HDq   0 7�@g�0�/�/.@&*He.T.5.E.".].�-v-g-V-B--3-�,�*U*C*2*'**k];K)HI�,/�-���@
I.1�0�++���� #H�++���@fH%++ (#(#%�5� �  / ?  �   	��zi*}��?��uf%}�  8&&4�(.5��  ���@	H p(�((���@#	H(0#?#O# ##�������@<I}�dt 0@P����}��' ?]]�]]]q�_]]]�]+_]]q�]]q�22�+]q�+]����9=/�]�]]]]q�]]]�]]]]q�]qr��99=//�]+]+q��� +10]]]q+qqqq]]]]]]]]]]]]]]qqqq+qrq4 32#" 732654&#"#"''##"543324##323�ߚ�������f���������'��)**�2A}	fT��r`�0���蚞(���������6&��..-�HJ��`�  HDq   9k@sY9:9Z68693�37���!-�1"����)�97I7Y7�77H77 YHH}��?V'�����@H}�  :&��  ����"HG���@s
H�//+�k5{5H5�5;5K5$55g���� }��dt 0@P	i����*}��' ?]]�]]]q�_]]]�]_]_]]q�]]]qq�}�]�+q+}�]��_]�+]]qqq�]]]�++q�]+]q��]]q��� _]10_]q]qqqqq4 32#" 732654&#"%2#"'&'&#"327632#"5543�ߚ�������f���������T:B*	W��m*D9Q�`�0���蚞(���������*0I0$/���J90Q-'���  	�Cq  , m@;+3)!))*))�}%}O%} -+)'~*" ?����222��?33�22�}��}���]�����+}�10]]]]43!2###"5#"%2#"5#"''#"54326	8�99�12�3
003io224"��2100��66An<��5>��'&��S59o=$��e& w]��  -@��� �  @HT  t�y ?����]+10]]]#"5477632�I�-0)�5-MW)4} 0,�9 {Nq   )@z@Hz	@
H	z z� ?����+��+�102#"&546!2#"&546�4DF45GJ|3DE45GJqI44EF54GI44EF54G   m���� . �@S)-�+&'(. %�%+�� +@� +/++(. r .r(%!	 ?33?33}����}����99=//99//��=�����=����ć+�}��������������=��10!"543!763232##!2#!#"&54767#"5433Z�aNJ�{&&6+rI/��pN/�9�"%$?'(�NJ��AA�73#<,)?%��?%�1!V;4AA  7��*T " ( �@qI:,��
� "D$" #(((L"�"�"""/)!IHH�
%H(�
$#H@"   
� 	 ?=��?�]����2��9=/�]�9=/?�9=/���]9/]9]�+}ć�����9=/����=����10]]]]#"5663!2#!32##!2#!"5%!#"�G	;9��b�]X���\b�1`��G��(iq��:GU`t@C�4>E�	+BH)��   ��Gq 	  8_@0�7/E&4&#&9�

+�$��D% ���@�I�������
�
�
�V�� � � + �/& /01"1F5678
55F"D�))D915)�-��/&/- 
��fvJ3w--)--	"(��z��hJ �& ?]]��]]����=/3?]]��]]]99]����=/3�]�}�]����}����������}������]10 ]]]]]]]]]]]]]]]]+_]_]]]]]]]]]]]]]]327654'&#"&54763267632#"'#"5476q��Y��X_AS���c)}y��{) >/!"+���Չ%#?- ���nKP�!�k�����Oj6�tp{%&06B,,L}���tm�&&0:?)  R ��  ) 7 k@8 6*  0~$~86  ** ~ �(~~4�,~ /�������9=//}/|/99����99//9991067632#"'&'#"'&547632&'&#"327327654'&#"4L<TlB<8?mT<';n�pDA:Br�39:5C$#Eg�iO@!!:3;2p>UNorP\4"Z�OJrwQ\��]H?4II1:��G7H?2<I  m  �q  $ �@H!�#�  �@	� 	| n |@#%##!		 � | r|@� r! ?��=�������=��99//99//������99=//�=����=�����10432!2#!#"&5!"543!2#!"54�@A4N/��>%��NJ�N/�N�4NJ��?%��N/5AA��?%@B   m  �q   �@C�   v  v@�  q@

  r ?�����99=////���=����Ƈ+��}ć+��}�=��10#"'&547632!2#!"54�,2;�AEJ�17/���N/�N���'8\"+(%[8+��?%@B   m  �q   �@A�   v	 	 v		 q@�   r ?�����99=////���=�����+��}ć+��}�=��10&54632#"547!2#!"54V�D* 8�EJ�A17/�N/�N�O("��"*)%��9*�?%@B  `���q /@/�)E!�!�!�!f!� �!�!�!� /).*�,� @,,���@xH,'"!!i)')'O'�'�'@'P'�'')		9)�)())aO����P7@��`0"'�$ � )!e/ e@��	� 	 ?=��?9}/]������2�=�2��2�]��=�����]]]]]q���]]9=/�]]]q�+}��+q�=������10 ]]]]]]]q]32###"55#"54335#"5433&5432632!2##t�IN�FB�JJ��JJ���>)AQ$>��IN��@C�II�BAtBAx 7%��,5;��@C  {���q  . 5@  (p
p p/,t $t ??�������9=/}��9|/10&'&'&5432#"&5476327654'&#"�XXP!)J,
Z�{�+Wou���`eCMR��PINQ���T445>K�w=
UpKVCWHb�Ӏ��̱u{�o�[`g]��UW�  m  �V  s@9��  LLI  HH ?�9=/�?�9/�9=/���݇+}ć+}��=���=��10	!2#!"547&543!2#B]���GG�K"z��!!�>B�����D@15M%453  m���V  R@)D	+			D@ �� 		 D ?���9=/�?�=����}���}�_]]��10"#&543!22##"5!#"5�S4C>3VDE��EC�	,34-�;DD��>GG   ��Pwq  )@ouu  ?�9=/?�9=/����102#"547665476*MYf=4B�L^m@6@q=.o��-�Xy:0o���Xr 0H0q $ - �@#H#u�v�!,~����@*H@	H ~'~?    .+)~!,%~������@	HO_o@H 	~�����@
H& ?]+]�}�]+q�+]���?�����]q����++]}���� ]10]]]]+4763254#"#"547632#"'&'#"'&7"3275&0E;V>K�p&3+7��A-%+IQU8C�sDHC�V1)J@9?58/;��*!.
3%-�OL9M  ?H!q 	  p@Iz��~4DT{@H@H~?  p~
H
~v � �  ���
H  ?+]�?+��]q��]_]++]q� _]102#"554"325540����q������_Y�__�Y  "��?�  E K�@��H�E�E�E�E�EyEGB5B'B�<�<�<�<�:F444%44)))9IJ)9u\l�D�(�(��� GQ50@@@p@�@�@�@@@//8 QF@8p8�8�8�8�88#S'S?O����LGU�7�7 77+IHIW3+/HW+ W�OO%%�%�%>%%/%%��+�++'#/#?##>�;�;@�;;WyDDU
W� ?]�|���]�]]�/]�?]�]]]�]]2�2�+|���+�]]]��]����]���99=//}�]]��10 ]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]&#"327#"'&54763254&#"#"5476326763 #!32632#"!#"�XLP+("&G\\5I'?Q{E>EK�`SRFb+&@^Y{U4/3/(1NR���I� 6Hb��A���(93RJ29�|O+^T��Xa(�GX>\>bxNHJH!�Qr��70Lgs!�  7��)�   ,.@$*0 @ P p � � @H�)�)�) ���@�H �H*{��t�� %-%m%Q(0(@(P(p(�(�((% !! &%!!Y%%%Q@	H�@#H-)�+�+ &+ 
W�+�+�++(�%%!�
W��� ?]����2/��?]�99�2/����}�+]�+�Շ+�}ć������������]�_]10 _]]]]]]+]]+]]]+]]]%3 54''&# #"&54767&5!2632!"9m�7Dd���V%(��wG5+X"�B�6�pg7���$�Y!(GWpRZZ6)U<b����  {�P�� % / D@!q -z)q q0&z@+ � u ?���=��?�����9=/����9=/10327677632#"'&54766767632"&5432	m]neNZ		4>My�~�9 �#4AZSTZ%7Bx~EUf?6*2[,.@Xa�Ze�U<#p(jOQ}V==AG8wz8D  ��P��   F@ z�	 zz@	� @ �  ?=���=��?���9}��9=/��10#"'&547632"&5432�t(#14077Bx~E��a&q??�G8wz8D   m H�K  @@ n@�	� r |x ?��99=//���=����99=//10!"543!2#"5p�KNJ�N?C�AA?��NL    ��  c@1M   
	 
 M	
	
@	  } 	}  ?�99=//?��2�9=/����͇+ ��}ć+�}�10%6332###"&54332��8�44��B��X04���723��i*0$    �P:q + �@r�������f5& '+�)� & %i%%%))
,!g)) &e%  �g ?�]}�?9/9999���99=//�9=/��99//9]��+�}������=����10 ]_]]_]]]]]]]67632#"&#"32###"5476767#"543�7)Jb�<,9:N$�82�OO�V"Vn�k^y%X+Q�@@�9�f�6<%����A@��|�D4	H��?B �� � ��i7 a  �j  a  �  7  *� 
  K@$L			M@�� 	H ?��9=/�?=��3/]��}Շ+}�=�10!!"5632%!���6�=9������BHJ��B�c �� S  �( W �c  � @   d  (  ' �@�%%' !'!v ! ! !v��
  v  v��
)!�###�  ��
��
�
 ?��/=���/]=����/]=���/]=����/q ��+ ��}�3/�� ��+}�3/���/q ��+ ��}�3/�Ї+ ��}�2/10&5432#"547&5432#"547j��"6&&4$$��#)6"���!<"�$$�j!<!�'<$��##��$<'z="�j##�j"3&! �� 4��, � 7 �   6     �  �� O���6 $   C��J �$ $'
P+.5�� O���6 $   ���J �% %1
P+.5�� `�� �6 2   �  J �$ $0 
P+.5  `��)c   , �@k�)�)�)�)�)�*:,
D@,,�� 	�  ���(D-'��H 

#!  H(��*,H ?�9=/����]�?�9=/���]�9=/��]��]�}�]��=������9/��10]]]]]#!32##!2#!"# 476323!2&#"327)X���\b�a`�g[��6H�d�]�O5k)/�0QC�2>E�BB�6�^|�5+�����  ��E�   * 0@`���$4D��
D3"��K:+,S�0@p���  !Q+0@p����@RH&Q@	 H1�$$H$W	,U� .H.W��	�		� �  �))W�W��� ?]�]�]��]}�]]?]�]�+�]]��+]|��+��+]��99=//}�]]_]��10 _]]]]]]]]]]]]]]]%# !263 #!32632#"4#"32!#"3509Q��-[rY�R���K�"6Ic��������A��Z=[fR<K��Qr��70Lf[f������!�  ���K 	 -@� � 
 r� ?�99=//�=��}�=��10!2#!"54��NM��OK@BB@  ����K 	 -@� � 
 r� ?�99=//�=��}�=��10!2#!"54lML��NK@BB@ �� ��iq 7 ��B    � �  �� ��hq 7 �l�   �� ���q   @ zz
 ?|�����9=/10#"&547632�E/>DADF+gg<-8R?M[a)W"F �����q  )�  m H�� 
   K@%zz@	�	 � 	z| 		 r|zx ?���99=//���=��}�=������10!2#!"542#"542#"54��N/�N�6Cx}|6Cx}K?%AA�C7v{u�jC6vzu   ��Dq   C@  
  

  ?�?9////���}��9////1047632#"'&	��

���o���l���s�#����* �� m�P�q6 \   �   @	! !3P+.55 �� `���6 <   �  J @	 +P+.55   R��q  N@2(XX��7G����



	  ?�2?�2�}Ň+�}�10]q]qq2#"'476�1"��.4$q25�)14&�G  { ���  ; L@+$ ,08"	q:5q"'5<0,8$  u.3u)3 /�������9��}������9102654&#"'&54326327632#"''#"'#"5477&54<_p{b\|��h!7#l`vlXu$"7yC9j!7"kayi\q$"7zDoz`byv\e~�r$"6{E9j!7"k`zjWu$"7xB6g!7"lZ}g�� �  �( W �c  � @   �  �(  �@M:J):J)  vi  vi�?O�����@/4H
��
�
 /��/=���/]=���+�/]qr ��+ ��}�3/�r� ��+}�3/10rrrr&5432#"547���"6&&4$$��#)6"�'<$��##��$<'   ��R� . �@Z���'#�%(,� `*p**--Q"S"%%/%%	 Q@	� 	/*%*%("-U(
�W2�������@
H	!	! U@�  ?=��?���99=//?+]]}�]���?��99=//�=��}�]���9=/}�]����9=/}�]=����10 ]]]#"5#"54335!2#"'&'&#"!232#!"5433jAA�LL�M�ZqB.2��JsYT�dTT�k��KK4A?tO3>�T2I!2�cB��@@>B�   ��R� ( �@J#� Q@## "� �
� `pQ  / )(�&$�HW�&�&&���@!
H&  #U@#�  U
 ?��99=//?=��?���99=//?+]]�+�����}�]�q�}�]=������}�]���}�=��9/10%32#!"54334#"32###"5#"54335! ��JJ�YSS����UU�AA�LL�KS�A??A���g>B��KK4A?qR��  m�P�q % �@J�		 $ �"� { o{@�&� ""%r{ r{	@� 	 ?=������99=//?����99=//���=���������=�����99//���10!2#!#"5!"543!!"543!432!2#!t:DD��DE��DD:��DD:AH:DD��A@�#SS�>C�>D�cc�AB@������   �����@� �   �� ��@h �7 �l     �    0��0q   * 7 E R `ƶ�RsRR����HR����IR���@IRRlNN Ht7"7B7b77����
I7���@
	I -- -����H���@)	I��Q606j-[-J-;-}*�F�F�FF���@6
HF}[[|uS�SS}MM�+�+�+�++}@|u8�88}2������@"	H}%|�}	HaPPP~^H^�W���HW~I.���@HrO_o�@H5���@	H5~CHC�<���@H<~.	H.@Hr 	H~!���@H!�(H(~���	H ?+�+}�+�+��+?+�+}�+�+�+]�+��+}�+�]�+�]}��+]���]}��]]�]�]}�]�+]�10 ]]]]]]]]]]++]++_]]+_]]]+++]]2#"&547%6#"&554632326554&#"#"&554632326554&#"#"&554632326554&#"�'_��!	$N3<�$�p��pp~��R;<MS<<Kz�p��pp~��R;<MS<<K��p��pp~��R;<MS<<Kp#3�#3���vn�n}~m�8KH;�;NK����vn�n}~m�9JG<�;NK>��vn�n}~m�9JG<�;NK�� O���6 $   �  J �% %/
P+.5�� m  ��6 (   � 
J � )P+.5�� O���6 $   � dJ �' '*
P+.5�� m  ��6 (   �  J @	 /P+.55 �� m  ��6 (   C  J �% %!P+.5�� �  ��6 ,   � �J � P+.5�� �  ��6 ,   �  J � 'P+.5�� �  ��6 ,   �  J @	 -P+.55 �� �  ��6 ,   C��J �# #P+.5�� `�� �6 2   � (J �& &" 
P+.5�� `�� �6 2   �  J �$ $. 
P+.5�� `�� �6 2   C  J �* *& 
P+.5�� f����6 8   � J �! ! P+.5�� f����6 8   �  J � ) P+.5�� f����6 8   C  J �% %! P+.5  �  ��  i@5o���  @� 

Q 
 U
		U ?�99=//?��99=//��9=/�]=���]�=����10]%#"543!232#!"543�aaZ�[T�YTT��C=R��A??A  _O�  K@/ 
 
tk�utk/_�� �  �
�y ?���]�]�]]�]�]]99=//10#"5477632#"'0�'".�(52(� /"'�.#�--�$0  ,{lq  B� ��@'	H	H@Ho@	H �	@	H	�� ?���+����+_]+10++"#"54763232632#"&�C#424'�A#503 ,��R-SWRR,"QWR   ��j= 
 C@$� /	@ � ?	�				 s��� ?q�99=//�]=���]=��10!2#!"54@�N/�#J=?%AA  {N�  c@CU4D�����o@	H 

 ���s�� ?]q�]���]�+]99=//10 ]]]qqqq2#"'&5432327676=YRgh[h? $.PA&1�OcD=;BbT.G..P. ����  @z	/		@H	z  ?��+]�102#"&546,1FG34GI�I23HG44G Y]   J� 	��@	H	~�~@H)9���@	H~�~ 	H y ?+���+�]]+���+10"&54632'2654&#")Yw{]\z~T1@D40DG]}Y]|w[_~bE14BC04E c���     [@� � �  p����@	H !} ���@#H	}	 /���]}�+��}��]��+]�910]]632#"54323254'"#"547632�& T62�h�6QgQH-	33�D?VgxJ6yk-5�7,�� �]��7 ��B   � �   8@+ �����?O�������_o]].5]].55 c�� 2   r@N
	
  n�rH*:	!}	} ���@	H @P���� /]�]}�+]��}����]]+��]��]10]]47632#"&#"32632#"'&547632e	3>=EQnL8�lAD26T QT,NqG%ky4L9;kV?D `O�  E@)
 
 tk�utk�� �  �
y ?�]���]�]]�]�]]99=//107632#"''&54320�%#0 �)32)�.$%�/$�--�"/  ��  )q ! X@*!D	@� @	"� 	!I H ?�9=/�?99//9=��|���}�=�����10%!2#!"5#"547674327632�VV��H>:A*+F-�'!9&�ȄD@E><7#A&'�]4���*5(��   �  �� ( �@d�
��'!Y'''#!%  %%� ? (  Q )U!###  U
 ?��99=//?99//99�99=//�}����9=/��}�]]=��99//]9�+�}��=����10 ]%!2#!"543!#&5477#"543!267632�KK�KOO/)):'6-��KKA/.R61ӀA??Am''6+#&��A?A��''@2(��� K���6 6   �  J �> >4 P+.4�� t����6 V   �  �= =3 P+.4�� D  �6 =   �  J �' 'P+.4�� m  ��6 ]   �   �% %P+.4 ��Pu� 	  E@ o@
�� @ � @�  ?=���=��?�=��������10%#"5432#"5432uGBEDGBED���;;4?q��;;4? ��   V  ) �@czhXuVf($� &&#)D D@ � � �  *H���&&)#H  )�))		"HxI��� ?�]�]+�9=/�]���9=/�?��]_]�9=/|�]��=��}����9/=��10 ]]]_]]"'&547634763!2!!"57! 4'&#!32##mM96M2O����[�kZ]����__��/5�2������F>o_�ch�2=F   m��}�  8 �@
)0�*&*���@�I0�/�/�/*�)�&)� HI-)6Q" )p))Q--@H-9 .�2�&"#$	 2v66yU�2�2�22-�+)��vU�+�+�+�+�++"� U  ?�9/?�?]]�]]����?]]]�]}�]9]����+]�}�]q����}�99/|/+=���=�10 ]]]]]]]+]]]! 54!"#"54767&##"54332632! 4763254�O2��}Qix�4K:9J�KK�G�#2=./�C�8�w�k;LG�����p�*6�c0')C?DX2%-9F����Qp�WG>��� `���6 <   � (J � P+.5  m��q   y@C��x�F&��� D@
� H HP@� 	 ?=���]�?��9=/�/=������9=/�}�]]�]10]]#"5432! #%! 4'&#!�DEGB��hd���k$JA���:��MM�SZ����b^��92  m��K 	 #@	� � 
	r� ?��}�=����102#!"543�NM�NJK?CAA   � ��c ! G@ 			"	    /���99=//99����99=//9910'&546327632#"''#"&547��!#$��"9��>��*�!*��>��:��*  e��c  `@-	� }@� �  ~~ ?�99=//?��99=//}�]�=������9=/�=��10"5433232#!"5433�55�5Y66��66n000��2.00	 M�q ! �@%{���E���EU60@P���@\H��XhL8*8X�K:)eT� �  
}/o��}@�  "~���@H%5E  ~ ?�99=//?]]+�}��]=����q�]��=��10 ]]]]]]]qqqqqq+qqqqqqqq#!"547654#"#"547632326��4'+zB"	-B�X=DI��?�0,d4+_+D,3-3v.3YKY�� I�c % �@<\X � ���@"	H �% %% 	%!� #X}@P���@NI ���u�\l/ 		&%~! ~�P`?O_@H@H!~ ?�?9}/++q�qq�3�2}�]�]]]]]q+q�q�=����Ň+�}�+=��10qq#"5432767654#"#"5477#"543!2~FS�|�A9H:E1:DO'��;;@7t[G�cZ--4;=J",�1/*�� !��{q 7 ���   6 �   �h�Y�� !���q 7 ���   6 �2  o�H�� y���q 7 ��0   6 �2  ��H  I��)U " �@>��
� 	  D @�#"�   H  	H	H	 ?�9=/���9=/?}����9=/����=�������9=/�}�=���=���=��10#"543343!2#!!2#!32###"5�\HH\J�V[���RR�X�QQ�CEC@cP@C�3@C�@C�VV�� `�� �6 *   �  , �9 91P+.4�� m�P��6 J   ��  �4 4,P+.4�� �  ��6 ,   �   �! ! P+.4�� K��q6 6  �  &@22�2�2�22O2�2�2/ /5 P+.4 ]q.5�� t����6 V  �  &@11�1�1�11O1�1�1. .4 P+.4 ]q.5�� {�� �6 &   � 2J �/ /+  P+.4�� {����6 F   �9  �+ +' P+.4�� {�� �6 &   � J �7 7-  P+.4�� {����6 F   �  �3 3) P+.4  m��{� * 4 �@y''%+ +Q%@#� !@%� %1Q@(5� !!$U,U��.�..W0	����+U� � �  �3�33W@%� '1���� ?]���=��]}�]]�?]���]|�]�?����99=//���]]�}�9/=����=������99=//10%#"'&547632!"543!543232'##"'&'&# !2js5B��mz}n�tJF]��KOB?LKIN9%
����*�iQPY�w�YNK	C=]JJ]D=��E+&������   ��P�� ( k@1  "QQ@)"� � � # U%W ?�}��|���}�?=��?�=�����}���9=/��9=///10%432#"'&'#"'&'#"54327276A@7#W/JSQA-@@B@B�JE'��II��J2'-E(/O4_[?�HHII����,   m  ��  G@+ Q+�
QP`�
 

 U
 ?�?�����]�]�}�_]]��10!##"54763!##�Ԃ.A=4kRZnm�k��f4L(���  D  q Q j@86F:*0FD*F"LD*"FD@"R6:� 8�2H@M)�' #�PJ@'� �H ?��=��?�����?��=������}��������10##"'&&54323254'&'&554763 &327632##"'&54677676554&# �+�$9�.1=b@:;@|v��@:;@ O( =1.�5�+����˻K'*>�4�S6!w<0>3eWNOcs��nh�_�scON\b,Q3<w!.DiT(�@)$M��� ��H�K   ������ �  V F�q  \@4i
�
;K[}/
}    ~@��  ?|�=��?=������}�]��]�����10qq47632343232###"55#"F�".��20955911�5B&�)-	�T66��01Y66Y������  ����� O���6 $   �  J �) )#
P+.5�� {��>6 D   �� �H HB$P+.5�� O���6 $   �  J �* *"
P+.5�� {��>�6 D   �� �I IA$P+.5  R�*q . 7 �@rx(�((	H~&	H& 0 11  L,F@�	/77L	
		


� 3	8*~ ,*  "~ """7
1�0/H3J@	� 	 ?=��??�}��������/]��9=/}/��2�}�9=/�=���/�+}ć��9=/�/�/�+}ć����+�10+]%!#"54767632#"&#"32632#"'&54763254!&#"�P��F3B�2?��/�=EQnL8�lAD26T &���qkG"w��D8-�<L����G%ky4L9;kV?D7%L�:$V  {�%>� M Z �@s#A3A&%5. NQDJ~@H	H ~ � J(5S;SS()(9(([.,WO�Q�Q�Q�Q�Q QQ9�3W?NU WW$ L$~$
~  /]�}�?���}����9}��?���]]q|��|��]���}�=��/�/�++�����10]]]]#"&#"32632#"'&5476325&'&'#"'&54763254'&#"#"547632#"5&# 3276�>EQnL8�lAD26T &
d2Ei�gy}n���jJk�)G�q��`r"9".�����WEi]K:dG%ky4L9;kV?DTHEP��YN>�Y)�? J�M<BO��6P &2�1�a0&# �� {�� �6 &   � J �- -7  P+.5�� {����6 F   �
  �) )3 P+.5�� {�� �6 &   � ( �1 1+  P+.5�� {����6 F   �  �- -' P+.5�� n   �6 '   ���J �& & 	P+.5�� Y��!�6 G�  �v   @. ../.?._.�.].5 ����   V �  �� m  �i6 (   �  , �# #P+.5�� m��6 H   �� �, ,&P+.5�� m  ��6 (   �  , �$ $P+.5�� m���6 H   ��  �- -%P+.5�� m  ��6 (   �  �# #P+.5�� m���6 H   �   �, ,&P+.5  m��V 6 �@a(8	~	H~@  1�3.*�,%'#� %33"")/D7,,)H //"% % (H"330H~` 
~  ?]�}�?��]��}��99=//?�99=//�]�9=/���99=//}�]�=���=����}/���+�10]]!#"&#"32632#"'&5476325!"543!2#!!2#!!2�=EQnL8�lAD26T &�wAA�``�d�__�"�A$�G%ky4L9;kV?DQB�B>F�3=F�B.   m�� 6 >5@�X9r(%((�!|!�v8	�/�(�xI��z����7,Q"
~9IYzIYi:)
 ~ h88Su))�"�"�"y""("""?8U ++'>#��:�:�:�::W�'�'�''5 /W -"� ~@	H� � � � �  ~  /]�}�?]]|�+��}����9=/}�9?]�]]���]��]]]]}�]�]�����]]]]]q���10 ]]]]]+]]]]]]]]]]]]]%#"&#"32632#"'&5476325# 4763 #!!2767632!!"=EQnL8�lAD26T0U��>���Q�NFvL&SJ6������Se�7��G%ky4L9;kV?D�DSo�^R�Jk��=6Y!3=b�� m  ��6 (   �  J �) )P+.5�� m���6 H   �  �2 2(P+.5�� `�� �6 *   � 
J �4 4>P+.5�� m�P��6 J   ��  �/ /9P+.5�� `�� �6 *   � 
 �8 82P+.5�� m�P��6 J   �  �3 3-P+.5�� `�� q6 *  �  @22/ /5P+.5 ].5�� m�P��6 J  �   � @22_2�2�2�26 60P+.5 ].5�� o����6 +   �  J � 'P+.5�� {���*6 K   �  | @$/$?$�$�$�$ )P+.5 ].5 ����|q ) - �@D#+D$*D ���@.)%� '+ #H+ @"�  ,H @ �		� 	 ?=��?=��?�]�=��������9=/�?=�����}�]��������102##"5!#"5"'&547635432!5432!!�I10IDD��DEI01IEDtEC���tn14�DIIT��II�41�RQ��MM���  ������ ( �@8�����"%%%
("Q�
Q@���p���@FH)!� %%(U"`p�@�	� Uu 6 F  yW
��&���H ?+]]���]}�]]�?=��?=��?�]���99=//���+]}�]�9=/�]����9/]99=//10 ]]]]]63 #"54!"#"5#"5433543232##����@A��eJ<Y@BaCCaAA�RR��g����ZZW� G�GYY6C?mDDm?C �� �  ��6 ,   ���J � )P+.5�� �  �q6 �   ��  � &	P+.5�� �  �i6 ,   �  , �! !P+.5�� �  �6 �   ��� � 	P+.5�� �  ��6 ,   �  , �" "P+.5�� �  ��6 �   �(  � 	P+.5  ���V 3 �@[J9*	~	H~@  0�2-)� +2/D"@2$(�&!� 4+&+&(.#H(22/"H~ 
~  ?]��?����}���99=//?��99=//�=�����}����=����}/���+�10]]]]!#"&#"32632#"'&5476325!"5433#"543!2##32a=EQnL8�lAD26T &�	KK��VM{PP��[�G%ky4L9;kV?DQ?ENBB?E��BB  ����  < �@c	""~� �  H 	H '~@<<8�: 44-7	z7Q-@:*/3�1*(,� *=6161.U4:*:*(7-U(~&`$$<(
~ z  ?�?]��?��]��}���99=//?�99=//�=���=��}�����9=/��}/��|�++]�10]2#"&546#"&#"32632#"'&5476325!"543!#"543!2!2#,2FG34GI�=EQnL8�lAD26T &��TT*�BB9AB6�I23HG44G��G%ky4L9;kV?DQ?A�@@@��A?   ��V  1 �@R1D!@�!�� ))+F@'�� 	D @2+'� )/J#	 H  H		H ?��99=//��99=//?��99=//?��=�������=������9=/�����}��=���9=/107#"543!2##32#!"543!"543!2!"'&5432325�gJJRPPbNPP��JJ-��GG`E��~QDD,%W��P@B?C��BB?EP@BB�"��aZ^XGV8�  `�P��  . : F �@ofE6#Dz@>.� .Q@�� 8z@2
� 

Q$@ P `  GAz;5z/.�,W& 
 U
U		U ?�99=//��99=//?��99=//?}����?�����]��9=/�=�����=����}���=��9/��10]]]]]%#"5433232#!"543#"54332!"'&54323252#"&546!2#"&546V�^a�B�AA�C@@��CC�A�ĨcB?#'3^��2GH33HI'2FG34GI��@@@��A??A�@@@����sPEH6N6�I23HH34GI23HG44G �� `����6 -   � 
J �$ $.	P+.5�� D�PE�6�   ��  �# #-	P+.5�� m��)q6 .  �  &@  � � �  O � �  #P+.5 ]q.5�� {�� �6 N  �  &@���O�� "P+.5 ]q.5  {�� �  �@@	Y			Y   		Q@ �	
�  /?3?=��?}�=��?�/�}��9��}��ć+}���+}�99=//10#"'#"5432632:�!7#�R�AAAAYJOK$$?�*%"6���MMmYY��R9,#�� |  )�6 /   � <J � 	P+.5�� �  �*6 O   �  |  @?/?�� 	P+.5 ]q.5�� |��)q6 /  �  &@���O�� 	P+.5 ]q.5�� �����6 O  �  &@���O�� P+.5 ]q.5�� |  )q6 /    �T  �� �  c�6 O   ^%�� |  )q6 /    � ����� �  o�6 O    ������ `�� �6 1   � J � P+.5�� {����6 Q   �  �& &"P+.5�� `�� q6 1  �  &@���O�� P+.5 ]q.5�� {����6 Q  �  &@""�"�"�""O"�"�" %P+.5 ]q.5�� `�� �6 1   � 
J �% %P+.5�� {����6 Q   ��  �. .$P+.5������q6 Q   ��    `�P q ! �@n�{�������#��$  L   D		D"!�J@�����	� 	%   ?]2?=��?3_]]=����?}�]������99=//}����+ ��}�9=/10 ]]]_]]]]]]]]]!#"5432432!"'&543232765x�qHAB)�BF�>�s=8	�t�N_R��MM�^4��^^����\1.;w2=�   {�P�� % \@-Q Q&�W U"W@���  ?=��?�=����}��?��������99=//��10#"5432663 !"'&54323 54&#"�@B5]�s��<�s;7	�w5��hS@��UZZgR-NH3�����^0-;w��vf% �� `�� i6 2   �  , �( (" 
P+.5�� m���6 R   � � �  P+.5�� `�� �6 2   �  , �) )! 
P+.5�� m����6 R   �   �  P+.5�� `�� �6 2   � ZJ @	& &0 
P+.55 �� m����6 R   �7  @	 % P+.55 �� m��7�6 5   �  J -@!((/(�(�((o(�(�(*P*`* *&P+].5 ]q.5 �� m  ��6 U   �(  �- -) P+.5�� m��7V6 5  �  &@&&�&�&�&&O&�&�&# #)P+.5 ]q.5�� m����6 U  �  &@))�)�)�))O)�)�)& &,#P+.5 ]q.5�� m��7�6 5   �  J �2 2(P+.5�� m  ��6 U   �+  �5 5+ P+.5�� K���6 6   � J �6 62 P+.5�� t����6 V   �  �5 51 P+.5�� K���6 6   �  J �4 4> P+.5�� t����6 V   �   �3 3> P+.5�� 7��)V6 7  �  &@���O��  P+.5 ]q.5�� {���6 W  �  &@$$�$�$�$$O$�$�$! !'P+.5 ]q.5�� 7��)�6 7   �  J �   P+.5�� ?��:�6 W�   ��  7��)V  �@<��� 		D@� IH H@� 		 ?=��/?����9=/���9=/��}�=��}����9=/}��=������1032###"5#"5433!"543!2#!t�RR�CE�RR���GQNSS��@D��NN]D@�?DAB  {��� . �@������n_L>/!�� "%%( Q@-)�+�@H+  P`p��/'#� %++"U .U("����	�		W ?�]}�]��?���}����99=//99//?=���}�]��+=��������9=/�������10 ]]]]]]]]]]32##32632# 5#"5433#"5433432!2#!��QQ��t�;�ft�֯RR��II�AAYJJ��f@D��v9KD-R�D@@@^ee��>B�� f����6 8   �  J � + P+.5�� m���q6 X   ��  �% %1P+.5�� f���i6 8   �  , �# # P+.5�� m���6 X   � � �) )#P+.5�� f����6 8   �  J �$ $ P+.5�� m����6 X   �   �* *"P+.5�� f���86 8   �  , @	 # P+.55 �� m���6 X   �
  @	# #)P+.55 �� f���6 8   7 ���J �,J @	! !+ P+.55 �� m���6 X   6 ��  �,   @	' '1P+.55   f�q 4 �@p(8H~/���~&&)D#22 /D ~@	H #540�2&($� &�-�-e-u-T--J/)#�~@	H�		~  /]�}�?]|�+��}�����]]]}�?=������}���+���9=/�9=/10 ]]_]_]]]]]#"&#"32632#"'&5476325#"'&54323 432�=EQnL8�lAD26T &+j[Pπ�BGcZ�.CF�G%ky4L9;kV?D�3 kr��XX�v�NG'�ZZ   m�� 2 �@�)	H���$$'S!00 -Q }@��Scs*:J !!32.�0$&"� $-U���+�++W'!�~@	H����	~  /]�}�?]]]|�+��}����]]|�]�?=������]}��}�]]]]���9=/�9=/10 ]]+]]#"&#"32632#"'&5476325#"'&5432327432�=EQnL8�lAD26T  �ڻfj@BJD���A@�G%ky4L9;kV?DÆ\a�UII���<7��II �� D���6 :   �  J �& &0P+.5�� D���6 Z   �   �% %/P+.5�� `���6 <   �  J � %P+.5�� m�P��6 \   �   �# #-P+.5�� D  �6 =   � (J � 
P+.5�� m  ��6 ]   �(  � P+.5�� D  �6 =   �   �! !
P+.5�� m  ��6 ]   �
  � P+.5  {����  ]@,SQ @��� �	�W	 U ?�9=/?����=��?=���=�����9=/��9=/10#"54335!2#"'&'&#"#"5U�LL�M�ZqB,0t�B@kA?�3>|T2I2���LL    ;`�  � � � ?���105!`;��  ��iw�  �� � � ??��103��i2��  ��i`�  @ ���� � ??����10!!�v��i`��.   �iw�  @���� � ??����10!5!��v�iҎ��  �;`�  @ ���� � ?�?���103!��;`�.�    ;v�  @�� ��� ??����105!3�;����  ��i`�  @ ��	��� � ???�����103!!����i2�.��.   �iv�  @������ ?�??����10!5!3����iҎ���   �i`�  @����� � ??������10!5!!��`��iҎ��.   ;`�  @����� � ?��?����105!3!��;���.�    �i`�  '@	�
����
� � ??���?������10!5!3!!������iҎ��.��.   �`W   @	��� � ?�������10!!5!`��`;���  \�j�   !@�� � �� ?�?��]���10#;#鍍����j1��  ��i`W 	 #@ ������ � ??��������10!!!!�v����i��� ]�i`� 	 #@�	����	�� ?�?�������10#!!##������i`��.�  ]�i`W   )@��
��	��
��� ?�?���������10#!!!!��������i���Ҏ��    �ivW 	 #@	��
���  ??��������10!5!5!5!����v�iD����   �i� 	 #@��	��
��� ?�?�������10#!5!##������iҎ���   �iW   )@�� ��	
����� ?�?���������10#!5!!5!�������iD��.`��  ��`� 	 )@ � �	�� �� ??������]��103!!!�����������  ];`� 	 #@ ����	�� � ?��?������10333!]���\;`�.��.�  ]�`�   /@ ��
� �
�� ��	� ?�?������]���103!!3!]�v��\��������   �v� 	 )@��	
����� ?���?���]��10!5!5!3!�����;��D�   ;� 	 #@	���� 
�� � ?��?������105!333\���;���.���    ��   /@����	����� ?���?����]���10!3!5!3v���\�;`��D�. ��j`�  .@ � 


�	��
��� � ???������]���103!!!!������j1������� ]�i`�   (@ ���
�	�
�� � ?�?�?�������10333!!]���\���i2��2�.��. ]�i`�  	  4@� ��
��
����	 � ?�?�?�����������1033!!3!]�������\�i2��Ҏ��`����   �iv�  (@��	����� � ??���?������10!5!5!5!3������iD���D��   �i�   .@����
��� � ?�?�?�������]10!5!333\��\����iҎ���2��   �i�  	  :@!			���������	 � ?�?���?�������]��10!5!335!3\��鍍��\��iD��.2��`�D�.    �i`W   *@
���	�	�� � � ?����?������10!!#!5!`���`;���D��   �i`�  .@���� � ��
� ?�?�����]����105!!###`�����;���.��.�    �i`W  	  4@���������� ?�����?���������10!#!5!!#���`���;�.D�������    �`�   *@
�	���	�� �� ?����?������10!!5!3!`����;��D���   ;`�  .@ �	������	�  ?���?�/���]���105!333!\���];���.��.�    �`�  	  4@��
��	����� � ?������?���������10!!5!333!`��\���];��D�.����   �i`�  ?@!	��������� ?�������??����������10!5!5!3!!!!#!���������;��D�������D   �i`�  ;@�	���� 	���� ?�?�?���������������105!333!!###\���]�����;���.��.��.��.�    �i`�     I@'�����	������ ?�������?�?�������������10!#!5!333!!#���\���]���;�.D�D�.��������� �� ��P���7 �  �� �  �T !@

�
�
_
�
�


/
?
 ]]q.5 �� ����q 7 �'     �   CIq  =@" }	}  P~ ~ ?��|��|�]���]���10632#"54#"#"547�K]�0/}JT00*=4���<<~?��<<�4  )��DV   b \@0X�.IQC�^d2*�$ $R Rc2�$*V�MV V7@�a=	 ?�����?������������|�������������10#"54332'3254###"5"'&5476354322'6#327&543232654'&'&547632#"&#"#"�>=?��QJ¯��1M9Q�B((B//j76h	2#!\@5FSLMS=9V=6A O6zSLMSvXN���MM�Ad]���v���/*�<'&�JJ�),��=(%h;4<*YT30$8(Rb8*\Xr  f���q  s@BDD� ��
�
�
�
z
Y
i

J@�����	� 	 ?=��?=��?]]]�]]]]]]�����}��9=/�9=/10#"54'&# #"547632�BGcZ���CFws�π���oWW��NF���sZZ��nkkr�� m  �V 6 � ) 7 �    �  �7  k  �%  	 6@	nn   
r ?���/����9=/9����10!!	!��w������������{�����   m H�K  B@	�  n@� r |x ?��99=//����99=//}�=��10#"543!2#�C?A�JN���LNsBAA  Ul
q  �z
  ?����102#"5476�/C*��( 2�(q8.1+��)) aF�� yl�q 7��$   � �  �� H��q 7��   6 ��   � ��� :��&q $ 4 w@H�
� 
%%
 *n / �    60nP �5* 0��,x,,g�%% 
 ?��222]?�]]�����]q���]]��9=//}/|/10 _]]#"'&'#"54767&'&547632'6765#"v21M43=Cy+<M11j35E��A1B7~((%pA RMM}$3t��(4~NM�QZ�x��r���HsUA@BK#sP]�^@$�� R��<6 c   � �� @3O3_35 51P+.5 ].5�� {��>�6 D   6 �
  � �� G@6\_\�\_\o\\�\�\\\/\?\O\?`?p?�?�??@?^ ^ZBHP+.5 ]q.55 ]]].5 �� 7��*�6 �   � dJ �0 0,P+.5�� "��?�6 �   �  �S SO5P+.5�� ��G�6 �   � dJ �@ @<)P+.5�� 7��)�6 �   �2  �4 40)P+.5�� D���6 :   � J �( ($P+.5�� D���6 Z   �   �' '#P+.5�� `���6 <   C��J �! !P+.5�� m�P��6 \   C�  �) )%P+.5 ���q  @ zz ?�����9=/10#"'&54632�gg+EEAD=1!#"J!X)c]J>R ��5�� 	  !2#!"54�=<�n<�1423    `��)q L W�@�\MdEd1-�)�)�)y;,f �9�9�9�1E-�,�,�,��������$(�&!� jMMSc@KG�IBD@�B =c LFE?"#)++&BB	7c3@
H3	o		Yi�&X�;�;;g55�6/V/�/�/�/%//B&B&#?)eE�##����4<H#����%/H#���@H ###"IIF"eL@8> L����(+ L���� L���@B	
 L������ 0 g}PPUg�����g�y� ?]�]�]]]���]�9�]]q++++���99=//�_]+++]���99=//?_]]�]�]]���]]}�]�+��]9/9�=���=����]=����10 ]]]_]_]]]]]]]]]]]]_]]_]]]]]]]]]32632#"'#"&54632'#"5433'#"5433&547632#"'&'&#"32##32##4&#"3267oa8=10>5;`��&+1Rj�v[!) �NN�!�NKe(fX��YBC)";~�(�OO� �OO�:@('5c*7:rV�BbHN�P!'zh[��AC�AC�'�F<^U@>V>�!�D@�D@��'66']4�� !��{q 7 ���   6 �  �h�Y�� ��{q 7 ���   6 �
  �h�Y�� +���q 7���   6 �  �r�Y�� L��{q 7��   6 �   �h�Y ����K 	  !2#!"54lML��NK@BB@    7��Uq  " , 6 ^@6� 4~@&&/&O&&8� !0~ *** 7~2~(-~# ?�?�?�?��������]��=���]��=��10432#"'&'#"5432!2#!"542#"554"32554�CFD�HAC9�FN/��N����퍒��y^^�G��vMM�^4��?%@B�������_Y�__�Y �� f�8   3!!#&'56�16H
��C=2�}v8m[BG��;2  G��d   673&'#G�2=��EBXpX�s~�3>B�E�H7  �� f�8   #67!5!&'��w|�2<D��D;8�29��FBTt  G��d   5367#&GpXBE��=327H��EB>3�~v  �� g�9   #67!#&'5673!&'3�z�3,Q��Q-4�xw�4-QNQ,3�^9�oZZo�86�pZZp� G���   3&'67#&'556!8�n[Zo�96�pY[n��z�4,R��Q,3�{w�3-PNR,4� G�n�    3&'67#&'556!!!8�n[Zo�96�pY[n����/�z�4,R��Q,3�{w�3-PNR,4��r?   ��  ��   3!!5`j�6���_  �B�*   #47632#"&#"��@P�8&,2&0S*	�B/�z�5'5bI
_  ��ZCB   3#"'&5463232765��@O�7',1&3O*	B�Ѧz�5&6bI]   /`B  �   /���10!`/��    �B`U  �  /���10!`�B��    �B`B  �   /���10!`�B	 �     �BgB  �   /���10!g�B	 �   ��B`B  �  /���10!!`��f�B	   $ f���R         # ' + / 3 7 ; ? C G K O S W [ _ c g k o s w {  � � � �  3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#3#%3#%3#fgg�gg�gg��gg�gg�ff�gg�fgg�fggff�fgg�fgg�gg�gg�gg�ff�fgg�fgg�gg�gg�gg��gg�gg�ff�gg�fgg�fgg�gg�gg�ff��gg�gg�ff��gg�gg�gg�aaaaaa`````a`````aaaaaaa`````a`````aaaaaaa`````aaaaaa`aaaaa�aaaaa!_____ H  ���R         # ' + / 3 7 ; ? C G K O S W [ _ c g k o s w {  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  3#73#73#73#73#73#3#73#73#73#73#73#3#73#73#73#73#73#3#73#73#73#73#73#3#73#73#73#73#73#3#%3#73#73#73#%3#3#'3#'3#'3#'3#'3#3#73#73#73#73#73#3#'3#'3#'3#'3#'3#3#73#73#73#73#73#3#73#73#73#73#73#3#73#73#73#73#73#fgg�gg�gg�gg�gg�ff��ff�ff�ff�ff�ff�ff�egg�gg�gg�gg�gg�ff��ff�ff�ff�ff�ff�ff�egg�gg�gg�gg�gg�ff��ff�ff�ff�ff�ff��ff�ff�gg�gg�gg�gg�ggfff�ff�ff�ff�ff�fffff�gg�gg�gg�gg�ggfff�ff�ff�ff�ff�ff��ff�ff�ff�ff�ff�ff�egg�gg�gg�gg�gg�ff�aaaaaaaaaaaa```````````a```````````aaaaaaaaaaaaa```````````a```````````aaaaaaaaaaaaa```````````aaaaaaaaaaaa`aaaaaaaaaaa�aaaaaaaaaaa!___________  8  �B�R E I M Q U Y ] a e i m q u y } � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �	!  #3#3#3#3#3#3!35#35#35#35#35#35335335335335335335335335335335#3'#3'#3'#3'#335335335335335#373533533533535!355#%353355##5##5##5##5#353353353353355##5##5##5##5#35335335335335#3'#3'#3'#3'#3#3'#3'#3'#3'#3�ffffffffffff�3fffffffffffgfgfgfgfgff��gfgfgfgfgfff�ff�ff�ff�ff�gfgfgfgfg�2ffgfgfgfgf��g3g�g�gfgffgfgfgfgfggfgfgfgfgffgfgfgfgfggfgfgfgfgfff�ff�ff�ff�ff�gg�gg�gg�gg�gg�a��`��a��a��`��ab#a"a"`"a"a"___________��``````````�aaaaaaaaa`aaaaaaaaaa�``````````�aaaaaaaaaaaa��aaaaaaaaaaa``````````��aaaaaaaaaa`aaaaaaaaaa�aaaaaaaaa"aaaaaaaaa    ^\  �  /���10!!\��\��  �^r  �  /���10!!\��r�     ^�   3	..��R  ��^�   	\�������  ��^�   	^������R�  ��^�   ^����:c   x ���    2  #" 54 "32654&1������ ���ԙ������������LԘ��՘��  F  �   #@ 
  ?�����������103!"32654&F��UuvTTvu��,�uUTvvTUu  ��  r�    )@�� ��
  ?�����������10#!"  32 54 2#"&546�����  �������Ԙ�����}������� ��L՘��Ԙ��  ��_�   + 7 A 6@>2,� C8 &�B#)/5�;@� /���/���������������10#"'&76324'&#"3276#"&54632#"&546327327#"_������������Y~��Ճ}}��ԃ��. !,,! .�- !--! -��<K��L<b��H������������������ߓ���� ..  --  ..  --��#��#�   ��_�   ' 1 .@( 3."2%.+(0 /����/������������10#"'&76324&#"326%4&#"326'#"'32_�������������- !--! -�,. !,,! .�<L��K<b��H����������_ --  ..  --  ..��#��#�  ���s�; ' 3 s@A%" '	'' 1�	5+� 4%" 	  	'.�(�'  /���/���9///99��������99//9910373#'#5&''7&'#5367'767"32654&Bwi�-�W��N�0�hxB~_�,�P��Q�)�rn�������;�	Q�-�tr=xe�+�M��G�,�d~=~b�1�N>Ê������  
 PV�  " .@ 	$#  /�9����9��10&&546323##!5!"32654&l��yx��l��K��$VwwVVxxA�my��xn��E��E�wVVxxVVw   � ��� % 1 "@3!2$ &,
 /�/�9���107&54323263#"'&'#"&54632"32654&=��j\M
%�T�{w��yGGY||YY{{�36�nX@5�Qo{��wy�K{YY||YY{  J  � !  #"'!7276'5#"&5476761%�kkj}]�cSY����d_Z�Z�lll�ϛ�jjsn]���dk%%pj���Zxofe� ��  �� -  )76767654'#"&547632&54632632#"'����5U20s�v�CFg=fC�uq�Do2jHD�t����"#!6fbi�uiQX3lIt��qX`4SOmu����*    6��+x   &'&'&'&5463263236)���h�PA�b�noo�lbH��Y77h���b{����   h����   & .���]��#�����������L   � k�  &@ 	  /��/���}������103#654'&'#"54632K�Q_/;,4TCFsszP./Re�&���u�w^Sb�uLQcPq  @�� �   <@ ! 	 /���/�������}��|����|���10#"54632#"54632%%5 CGqsyP.,��CFsszP0*���&��CsMQcOq�wtMPcOp��g�s�     ^\   .@� ��	� �������� ?�������!!!\��L�\���<� 3.z  �  /���10!!.���  3.z   @� 	��� /�������10!!!.��L����Qc��   x ���  �	  /���102  #" 54 1������ ��������� 9�(t   @� ��	� /�������10#"&546324&#"326(�gh��gg�LeGGdcHGe}g��gg��gGddGGed  V��
�  # .@%# $" ?���?�����������10327''&57632'5&#"F):O��HxE]��xkk���Kɀ�Q8*C���B �+�.=���m��Fp>�J�yC�  M�c " ��}}@���@BH� 9I����Yiy}V f 5 E  ,    #~ ~���@H`@H  ~ ?�?|�]+q�+��9=/}�]�]]]]�]]]q�=���+���10#"54767654&#"#"7763!2##632�u�3:u<x8-d+;44�6+Xq��VH-+>h1B,7�F/1�z  F�c  m@<fG���}` }  @�     � 
  ~ ?�99=//?=���]q=��/�q�9=/�q�10 ]]]qq43!2#"547!"F:d6�#-���:4/+)��,.   M�q   ' �@[��}}HX}/W%F%%} (U6F~
H

J"Z"9""~�����@I I~w �  ���H   ?]+]�q�]q+q�qq99=//?]+�qq}�]�qq�]�q��9}/��9|/r10 ]]r2#"'&547&546"3254254&#"3UpHczebADgLvTgi`^zD9;HJqjTW8:ze|<>cz<2ZUnae^`c�܀:LH;;H  )��7q 5 �@Y'#�% � %% 1c-c@1�
� !(a  6)5�3

e%%( e"! //�+g3�g� ?�]���?��]9/�����99=//��99=//���������=�����}����9/�=����10#"54335#"54335! #"'4! !2#!!2#!! 5632! �;NN;;NN;��C4����OO��OO��G11D�O�,�BBnBB�p��R=��CAnCA���DS��p  A�q   u@V} 0�} YJ9(~G
W
g
&
6



VE&6~HIY	H ?+]+�qqq?]]]�qqqqq�]��]�10#"&5463232654&#"�p��pp~��R;<MS<<K����vnn}~m��8KH;;NK  CIq " *@} #~  ~  ?��|�]������102#"'&'&#"3277632#"5543WAR+"G�2!LV.*%<��q%.W-.o�E0+#$8˛�  0M0k   2#"&547%6�'_��!	$N3<k#3�#3�   D�P:�  �@o�������:�)S Q@�� ��	�	�	�	�		�6����W8H��v� U ?�99=//?]]]q�]]q|�]]]��=��}��=�����9=/10 ]]]]]]]]]#"543!2#"'&54232765��WWVRV����C &2cf{2.k@@T�%�X[fcb]IV#F:5~ �� m�P��6 \   �  �% %!P+.5  {�P��  % �@��������� %QQ@    @`p���&�� yUz�vW�����%Uv  y#�##W����� ?]]���]}�]�?]]���]]}�]�]?=��?=����]q��99=//��10 ]]]]]]]632#"'#"5432327654'&#"����m{xm�ʚ@BB@��xK[`N|�t�sP[����]Un�Ybb�`Z��~/9qds8-�        �! d                   �           	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z [ \ ] ^ _ ` a b c d e f g h i j k l m n o p q r s t u v w x y z { | } ~  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~����������������������������������������������������������������������������������������������������������������mu1pi1Ohm	sfthyphen	overscorefoursuperiorcommaaccentAmacronamacronAbreveabreveAogonekaogonekCcircumflexccircumflexCdotcdotDcarondcaronDslashEmacronemacronEbreveebreveEdotedotEogonekeogonekEcaronecaronGcircumflexgcircumflexGdotgdotGcedillagcedillaHcircumflexhcircumflexHbarhbarItildeitildeImacronimacronIbreveibreveIogonekiogonekIJijJcircumflexjcircumflexKcedillakcedillakgreenlandicLacutelacuteLcedillalcedillaLcaronlcaronLdotldotNacutenacuteNcedillancedillaNcaronncaronnapostropheEngengOmacronomacronObreveobreve	Odblacute	odblacuteRacuteracuteRcedillarcedillaRcaronrcaronSacutesacuteScircumflexscircumflexTcedillatcedillaTcarontcaronTbartbarUtildeutildeUmacronumacronUbreveubreveUringuring	Udblacute	udblacuteUogonekuogonekWcircumflexwcircumflexYcircumflexycircumflexZacutezacuteZdotzdotlongsSF100000SF110000SF010000SF030000SF020000SF040000SF080000SF090000SF060000SF070000SF050000SF430000SF240000SF510000SF520000SF390000SF220000SF210000SF250000SF500000SF490000SF380000SF280000SF270000SF260000SF360000SF370000SF420000SF190000SF200000SF230000SF470000SF480000SF410000SF450000SF460000SF400000SF540000SF530000SF440000underscoredbl	exclamdbl	nsuperiorpesetaintersectionequivalencehouserevlogicalnotminutesecond	afii61248	afii61289
Aringacute
aringacuteAEacuteaeacuteOslashacuteoslashacuteWacutewacuteYgraveygravequotereversed	radicalex	afii08941	oneeighththreeeighthsfiveeighthsseveneighths	afii00208	afii61352	arrowleftarrowup
arrowright	arrowdown	arrowboth	arrowupdnarrowupdnbse
orthogonal
integraltp
integralbtupblockdnblockblocklfblockrtblockltshadeshadedkshade	filledbox
filledrecttriaguptriagrttriagdntriaglfcircle	invbullet	invcircle	smilefaceinvsmilefacesunfemalemalespadeclubheartdiamondmusicalnotemusicalnotedblH22073H18543H18551H18533
openbullet	estimatedfivesuperiorsevensuperioreightsuperioru20ACzerosuperior	csuperiorpermillestrokedotlessj          I         A0�=	*�H����.0�*10*�H�� 0`
+�7�R0P0,
+�7�� < < < O b s o l e t e > > >0 0*�H�� U���{[m��]�'�����0��0�)��ъ�Ľ5Ǜ����SV�0	*�H�� 0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.0970512070000Z991231070000Z0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.0��0	*�H�� �� 0���� �. �h|,-.�����W�S�u��3*���	[4���	��Z���������%�}Xsjx�q��X�)�X^��-bX��q��"X/���6����MJ��;"�V�~!�l��JG�j��6��	-Ӵ9� 0	*�H�� �� :��>���{թ��y���=q#�+(ߌe��,��Z�b��������V�kbEƢ��5"�r-��|	�C��M���lX�
5�ʉ��p�*}a���q���fbB=��"2�"���d$���0��0�6 ���C�!�FX���F��%�`0	*�H�� 0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.0970512070000Z991231070000Z0��1'0%UVeriSign Time Stamping Service10UVeriSign Trust Network1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc.10U
VeriSign, Inc.10UInternet0��0	*�H�� �� 0���� �a�����G�ܴ^i�
b�1�����F�I:���?���xZ���cEO�n0�6�-	��o'�Q`5O�TOз,B�Ѝ�^����㖴"IBlӘ�V���.�:��X��"e匫x���GBh[-}��0	*�H�� �� m`��_�i��{p+b#D Q�#�t�I�'\��q5+���ൖ苧K�s�H	��ڋ����	%V�N�G��WF�8V�!��&;-%2Λ�@G��mGv��0����;~���*1+���ݰ�UApF-,~0�0�|�0	*�H�� 0��10	UZA10UWestern Cape10U	Cape Town10U
Thawte Consulting cc1(0&UCertification Services Division10UThawte Server CA1&0$	*�H��	server-certs@thawte.com0960801000000Z201231235959Z0��10	UZA10UWestern Cape10U	Cape Town10U
Thawte Consulting cc1(0&UCertification Services Division10UThawte Server CA1&0$	*�H��	server-certs@thawte.com0��0	*�H�� �� 0���� ӤPn��Vk��]��huG���ڄ%���GQڅ� t��u��a�m0n�R�b�M���jD8����d	p���k)�/I�;�'%�/�m�(B��LC���!mT�]�X����[��ܴ{�6:µf"և �00U�0�0	*�H�� �� �Li\���FM!0��٨oI��Q�`pl�a��H>YC}O�=���b�zu�݈NN�@ۨ�2t�o��Dيo�)��(;��@(�Z<յ� �ʤ���Q��L,Y�ڹ�u�B����������#.pG0�0�|� ��0	*�H�� 0��10	UZA10UWestern Cape10U	Cape Town10U
Thawte Consulting cc1(0&UCertification Services Division10UThawte Server CA1&0$	*�H��	server-certs@thawte.com0991008120338Z001021120338Z0��10	UDE10UBaden-Wuerttemberg10U	Karlsruhe10U
s.a.x. Software GmbH10USoftware Development10Us.a.x. Software GmbH0\0	*�H�� K 0HA ŇԴ9�Ln��^�,�(� �J��Z`�ϧd�!���WO��ϔ�� )�_̜�q�Z���j~�s �~0|0U%0+
+�70	`�H��B0U000
+�7�0U0�www.saxsoft.de0U�0 0	*�H�� �� �[�P;Z	_��f͓�{�e�%{��
_7��e���XnoB�$ oӫ��t�u�
������f>�����}�G?��}�(6�[
B�sQ�UOj;�_�X�Ì�8�����)K�'<���b�R0Xq1��0��0��0��10	UZA10UWestern Cape10U	Cape Town10U
Thawte Consulting cc1(0&UCertification Services Division10UThawte Server CA1&0$	*�H��	server-certs@thawte.com ��0*�H�� ���0	+�7(1    0	*�H��	1
+�70
+�710
+�70	*�H��	1��a^�8�5Z����0l
+�71^0\�*�( s . a . x .   O p e n T y p e   F o n t�.�,http://www.saxsoft.de/typography/default.htm0	*�H�� @)��nq/�v@쥐xU�	��'�k�W����������h�_?NX	�Rϐ�C������dH0����0��	*�H��	1��0��0��0��10U
VeriSign Trust Network10UVeriSign, Inc.1,0*U#VeriSign Time Stamping Service Root1402U+NO LIABILITY ACCEPTED, (c)97 VeriSign, Inc. ���C�!�FX���F��%�`0*�H�� �Y0	*�H��	1	*�H��0	*�H��	1991012160751Z0	*�H��	1t�C����iU�-U0	*�H�� ��xR�#�I��q��N�>�B#\3�����IL*�+�cvFe�a��ܥI�G��f�6�����j�`� �v�Ҡɷ��Ka0�ک�`wǨŘ%�F
 BF������(y�M���'ȴ,t�?'��7R�W8j	           [remap]

path="res://Scripts/Ball.gdc"
         [remap]

path="res://Scripts/Game.gdc"
         [remap]

path="res://Scripts/Global.gdc"
       [remap]

path="res://Scripts/Menu.gdc"
         [remap]

path="res://Scripts/Player.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      application/config/name         Godot Steam Pong   application/run/main_scene          res://Scenes/Menu.tscn     application/config/icon         res://icon.png     autoload/Global          *res://Scripts/Global.gd   display/window/size/width      @     display/window/size/height            input/up`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      
   input/down`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script      )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres    
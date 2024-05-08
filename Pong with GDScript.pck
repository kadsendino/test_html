GDPC                p                                                                         P   res://.godot/exported/133200997/export-84d343c4ab84bd4c0000a57675c7d9cd-pong.scn0Z      9      =f(�����#���d�    ,   res://.godot/global_script_class_cache.cfg   g             ��Р�8���8~$}P�    d   res://.godot/imported/Pong with GDScript.apple-touch-icon.png-5e7d1716d22c7f5cf1c6664a5f7ca509.ctex        �      ċl7���[�Pn�D    X   res://.godot/imported/Pong with GDScript.icon.png-abbe4ba8a8c9a06757ea03b964238e3f.ctex �"      z      J��F�l�~�?�4�O    T   res://.godot/imported/Pong with GDScript.png-bb693b3c553f832ac64785dfd79289ff.ctex  @,      -      �%�$����<�׿�+    D   res://.godot/imported/ball.png-9a4ca347acb7532f6ae347744a6b04f7.ctex0      b       �v��6��OR�6-��    H   res://.godot/imported/icon.webp-e94f9a68b0f625a567a797079e4d325f.ctex   p      z      J��F�l�~�?�4�O    H   res://.godot/imported/paddle.png-0e798fb0912613386507c9904d5cc01a.ctex  �      h       =;b��:����`萭    L   res://.godot/imported/separator.png-f981c8489b9148e2e1dc63398273da74.ctex   pe      j       Hy���1�l�.��n�       res://.godot/uid_cache.bin  �n            ��T�n���ZB�Ʊ��    4   res://Pong with GDScript.apple-touch-icon.png.import "      �       �/P�����WW4���    (   res://Pong with GDScript.icon.png.import`+      �       l�����w_Y`��4�?J    $   res://Pong with GDScript.png.import `Y      �       $!K�PqY&��2��]       res://ball.png.import   �      �       ����%n)�}MH       res://icon.webp @g      D      ���g�]�ݱ�dwD��       res://icon.webp.import  �      �       L�K��W����Yl	��       res://logic/ball.gd         8      ���̉GQȎ����+	       res://logic/ceiling_floor.gd@      �       �s2G��c(*�3t<       res://logic/paddle.gd          �      _�U���h�V����       res://logic/wall.gd �      �       �H����3L":��i�t�       res://paddle.png.import 0      �       �i:(ӑt8�P��       res://pong.tscn.remap   �f      a       �K(о������h>�       res://project.binary�o      �      <ˢ.�r��B�i�Ӂ       res://separator.png.import  �e      �       �5sTM�?W�&g?2�=�            extends Area2D

const DEFAULT_SPEED = 100

var _speed = DEFAULT_SPEED
var direction = Vector2.LEFT

@onready var _initial_pos = position

func _process(delta):
	_speed += delta * 2
	position += _speed * delta * direction


func reset():
	direction = Vector2.LEFT
	position = _initial_pos
	_speed = DEFAULT_SPEED
        extends Area2D

@export var _bounce_direction = 1

func _on_area_entered(area):
	if area.name == "Ball":
		area.direction = (area.direction + Vector2(0, _bounce_direction)).normalized()
      extends Area2D

const MOVE_SPEED = 100

var _ball_dir
var _up
var _down

@onready var _screen_size_y = get_viewport_rect().size.y

func _ready():
	var n = String(name).to_lower()
	_up = n + "_move_up"
	_down = n + "_move_down"
	if n == "left":
		_ball_dir = 1
	else:
		_ball_dir = -1


func _process(delta):
	# Move up and down based on input.
	var input = Input.get_action_strength(_down) - Input.get_action_strength(_up)
	position.y = clamp(position.y + input * MOVE_SPEED * delta, 16, _screen_size_y - 16)


func _on_area_entered(area):
	if area.name == "Ball":
		# Assign new direction.
		area.direction = Vector2(_ball_dir, randf() * 2 - 1).normalized()
             extends Area2D

func _on_wall_area_entered(area):
	if area.name == "Ball":
		#oops, ball went out of game place, reset
		area.reset()
          GST2            ����                        *   RIFF"   WEBPVP8L   /�0��?���8�D��               [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://clowikjgl4yq1"
path="res://.godot/imported/ball.png-9a4ca347acb7532f6ae347744a6b04f7.ctex"
metadata={
"vram_texture": false
}
                GST2   �   �      ����               � �        B  RIFF:  WEBPVP8L.  /� ͐I��lo#�ǩy�Qжc�(��@DQ�6P���� �G��I �
aH�B�@ i�""��mm۵�y���M�i J� ��:@@ 1�W����s�����kc2ȑ$)�����t����Z�ݔ�m۲5��	����A�A�,�,@�I6H�;X�N����'�mI���9�],:��m��H��xl��ڶJVF����O`g۶m}���r��E0�V�m[i, \ @����mwwwww�O�/��'w�Xɮ���O�<as ��
h`[�oy�&xlK��m#E^�c�̛Ĺ�k��B�De 9���N�ؤg��]��h�Jߐ����
I�zn��U��H�M�D+�̗{�%Ș_�\Zm��^:}��?�����WC�v��r���Ka��7~!g0����M����?�QP�����-L�Q@�J�X=�r��5g�]��l薀)��K�\^q|��mW�ǝ�{|d�ُc���������ۛN��%��y2y�x������S�S�޹���;�^�V��i�x[|ǟ�q���1_�C�zᅶq; c����n��w:����m�0H��������]�p�^��8X���O;��6��-�t�5��1ew�^�$��A�A�e`��'��3~��*��A  ��m���1�p(�9c�ȏA��A�3�����v==+���-�z�\w4q:�fg2p�s]hU��A:���i��;�f��Q  �Kg�(5�@�|�x���@��n�1;��JFl�!sRd�k稔(-3MK5w]�/N��#伃s�j��nwgdN�e�Z�Cڸ�]�'w�=wmS9�t{��)�]��'w��Y7E䮣c���3"��]k�{޵F�Z���T�=w�'9�U?�5箩ȹU���580�M'�䮩u�	�R@��� �X�� �̠(�����P@P��;<0� ����s+���P�Z�z����e�Ot_��VT0��4��jU������/gس���*hB�:��]ЗI F���J0�!�c�� ���"��H�l�@U�b� ��
�*N1�z�?{U~?���lyҐ�5����K�Ś�@'
ku�+��ŤA�2�#� �
�:����U�x<7��_P�2џ��
�-��R���ϻ���\�a�S���# @��	�vՆ!( � +�4����ff�'�@A� �.������q��#/`����s%�f��W���h��2��y�~�K���z�u�t�5��!+�E|�����~ `�2�ƕt+D��O��W0|���?� Q�8|��q@�� �b�C�	���̲0B1��[S���o7{'�
�:��Ď����+r�\��@${r�ϫ�N/�y����jOc�^G��oI^�H��M~B�t��0 D�-�<�1'����AO#շ�-@�0��(�t��9x"�?7d���Xur��
  ������X�%����YjS�ҺQ=A �v�鹁�6��t���]��.�����3�  	��E����9v����8���;�!F@����;I�x }�m�/�>���3��wx�"��g������m���j����;�E'n6zhN��5���,a��7����8���I�?:<>�_E6)Wf�߶���N  �3l�@`@�,�� ��P�t�B��U���@M�$a��0ա?���ށy8��} ҂[�C5l�ânV/�����j`���fԁG��l�:�Xq¤��^�ܲ6��MuMQ�w�0GmDQ���ɥJ4�!N����V*�,�N+��Q���3@@0G��h
B��A`����*�?(��id��	 }�,�������Q�.��>�hs�`k�U6D4�M�4��t�`k�C=+T����<`B^L�oՃS�V��y����1�[.�LՂ&s�,��E=���L��C,,t�� Phx�^���I�XtX�HR�Z�2"3�����w�������7��|��鳕�9�����A����" [n������������*9V��ۂ�����hYy�rv       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://brwp8bimc75uu"
path="res://.godot/imported/icon.webp-e94f9a68b0f625a567a797079e4d325f.ctex"
metadata={
"vram_texture": false
}
               GST2             ����                         0   RIFF(   WEBPVP8L   /�0��?���&b���� ��A         [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dvrb8efddt0aa"
path="res://.godot/imported/paddle.png-0e798fb0912613386507c9904d5cc01a.ctex"
metadata={
"vram_texture": false
}
              GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /��, ͘i�F��'����l'��u3mۘ?�B�a�mi��G�SA�6�w�c��O ��pUx�S a�۶m�$m��E�*��1�35���m��y����� � �m۶�6���b�23�e����%2#.���m�#	�Y��{��>�Zh�s����^ W��M,�D�����tuUe��Ƕ�c۶m�sݶ}?��6B�;ut�ஃ��EPhe��HK`�8�u��@����S�,�(�x�g�N=N��6��(�\Z����K�H,/�s�� Z�IЎ��X�3�x'�����_���v�˘hM܎n�x�!n5ᗏ�ݨ����Y�J4����(nu�Վ�ѷ��P5e��'��Fn:�ovl�\-�QdfX�Z�!!�dD��j}��OJ2��n���.)��*�U�����˔'AA0�!i��5orH�'dW`�"�S{�8De�)Ԟ9_�.ee3v�0p(�yn=@8ݔ�gb2�! 
Ů=�9���|��}��d�6c���5��H@&9��t�QX�(P��ٱ�ՁO
>�C�Q��r(�>�s'G��c�u��-<x�e\�sSfh�5ٮ+�v+��y*q��>��}.�3eu�W��nuO�Iu�W�̉=��~��������frN�Y� %^�mz~�Mo@�txZ�[?Z�Q�5��gQ)���J�=��߸�Z~�i�0(�i�%,%��y]���|������Z���{�J�zL���G� ��#�]PFu<:R��������E��Q p��^��tz,Z���� �
X� ����Uvf��u�׆v=6"��K��R��gKV� N`}P����fap^��E�P�J�Z0��0tb��ur�7PT���䔵���l�_�A�Oo���⇜��D�k����X;���z����f�U�N|��d��4��S0���kz���(gn=3��І���K�m	1K�8 ��Tm���
K�"�� �[�� @	k`��hb8�0~ p2�_���8Fl(L3o0β*ه�z�B��$���n�;w]�`���*����ճ�N��� �u�x??��+î����yMG���R��ϗ�Nߎ���c�ڝׯ����"��K�O%훻���묜�ۏ�~&�Ķ��E���\b�W J[,@ �[�ULC� �ZX�j�zo��(��(k
���ҪN*�a�Aebj�a@��R�Pl�*yh��a�qkUo���[)DE̊晚�Қ���jN�{��qu8;�u�Tӎ�L�bU�$����U}���]:���s�S�M��ī-=��A�`}1+�@H-/��Nc	��S� ����IT�T��"��I�%JIEmz�-+b�|R�Y���l+�W���~�������sw�v�x���5Q0+UӢ�����=�[�!�6H"����`>)�,gK>�W}b[��'��D5�ĩN6��*�`��7]Wk�ݔ5��8�����P.o���F��~�4&�-VUX�2�B�:q3�������V,Ev��t�~�����y�Z��Ϥ.��vev҃������*���uU��@�jd�V��N�)��O��e�N�tQ������Y�5���F�i�ä�
����1 ~�#~��L����ZUI��U!Y�۟�O��� ��r��J����˫/M;[- �@ ���+��.�d�]׶6�ጬ󖷛��
��ib���Yg�U�b��
��Q� �Y�VA��!�F=�y<�*^~��|a�T=���_�W�U�X�TN;���������b����6�^�O�b��Ҁ�{_�O?ǃ�r_~��'#Ͳ�.�8oǧ㦧��f�9?�S���E��F �1#�������;���m�D�O��dU�.ϓI'�� ��  C��`Is�Y�u����L�I�C�]��

��f�ݡ�D�����aIiw���B-�3�� ��
�2��*bz�����^����|~1'Y��	b�n�xw(L�|C�O�SSXiH�G3M'Q��z��~E�0Z3)2�X�IjV���5M�gչT2f�,P�{�w�5��ֳ��	G6��3�XUQ!��������O�g/k�<^ �0���{�z:�=Ӗ]������&�|7�4�SQ�s���A��� h�%�(��k�&X VՆj�<(V�1��+ ���SE�i�s�������k��1^|�:��ydh�����F�ׂ���Y��=k�xA���2��v�ɜ��=�S�z7^B���;����?�+���]�^3�DFۚ��~��298l0(�8�k�r� ����?20nۣ-�J3Ό�9V
�kVBbth�8(�8�џ']U[�Ybն�MPɺl���b��x`  �ĥQ�JK����iӈ�Z��S&���)���ĉ�V^��~��0�A~v�W<7?�;��v���9CB<���'9!'	QTB:���M��Bs���|w]j�sڊ�Q���9s _#�c��r@��}v���k��> ?��!�t���!����K��Z�'��X�����*.� ��C�}}k�rtџU�K�Kn�L1׉%����T<	q+E�%����C�k��[�ͳ4&�D5���n��ܪ��8>x����e&#���\�Z{p۔�5�8�[����Φ� n��ÁA2�6#�CK3O�����'�L�ѤKS,�8t�+O�\���g���5U�Ը޶���A=֬����n��u�����������>��G�{]����y^Nn� �
���Emp˥]���M{G��P��r�=�Þn�=(�E]��4�,����']T;�i��pL�ߕ���3<!�,���-�����9�U�[���wә���[n2�3����U��YY}��g)H%��#�%N��xB����U9km�p�Y�j H�;��;V�6��G5��qI�{�~|�3z%y^?/��A�x;�a��>�o��OZ� ���ck�(��\;gZ�qt��v�[�^3v��TY�k��c]2����3Ot|:z���ر힚�_��Z�*�=���O�o����O�%! �,> �:ʥ�Ӕ7����|�Ԑ���Jў�S���ib)=�7�GP�Ua��F;kŤۤ���Ǫ���!����pd��g�J4�s����(J�����l���L�t͒K�V���ݼp�|��h�j���꼨��:  !��
4?_l��{/������O.��C��J��L|�o�6��>��3���k����M\:���{0�͊�˯=(�#��??���K#��GV�zÌ�qηV�[YkΞ`�z ����������QY�����AR)�����s������[�g	�8r;�4a��Z13�����������h�&�Y扗i]ճ��5�2����y�6�)�Xs�G�����]���ᐨLm�ͮ) ���
��u�3_�v��>�g���m]���y�+:�����]����-�ؤӣ��k�}�,��ە��J�>��FN�Y�Ӿ��;�4i�\�)�B	,�N���؋�5�ʶ~����}��}�ݍ;��*����K��,��nݛB������Ŝ���!u�픃�KjKJ�v�=7{�=�UH�}�a,YΊld���V��e����.��@A  �
���unXԖ�]6.ڼG�YF�:>44�XbL;@ʁ�
i�^"ـ�z!� �b	�;�Z�D=b���g!����W�=�����[�"��,����?),�ˇ�h���S�L�Vl�5c
b�5?��B;~���4�$@C^�X��~���5`O��[}X�=� �ekf�����k`��O�C���m����/���^	4C  (_	��&���m���^�Ā��E-��`�h"��hbt���g�P2CGb B� lBP���B�Sfo}�Wߊ���M<z#���kuiZ�d���f�3i��t*5�FDpj�x���v��5������[��-�"[х[���D= v�7� nu�ѝx�T������q���ۉa���C�f�e���� �jӚ�~D�O?wz5��Ǳ:���'���3v�\�́{���Ε����"��[ ����9��-�_b�g��d�fխ�*H�ݫv�q͜�(n��t�M��.�WcMz;e�jh]��Egz��c��ꛙ�����/vHn  [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://d0h3efuqi1avy"
path="res://.godot/imported/Pong with GDScript.apple-touch-icon.png-5e7d1716d22c7f5cf1c6664a5f7ca509.ctex"
metadata={
"vram_texture": false
}
 GST2   �   �      ����               � �        B  RIFF:  WEBPVP8L.  /� ͐I��lo#�ǩy�Qжc�(��@DQ�6P���� �G��I �
aH�B�@ i�""��mm۵�y���M�i J� ��:@@ 1�W����s�����kc2ȑ$)�����t����Z�ݔ�m۲5��	����A�A�,�,@�I6H�;X�N����'�mI���9�],:��m��H��xl��ڶJVF����O`g۶m}���r��E0�V�m[i, \ @����mwwwww�O�/��'w�Xɮ���O�<as ��
h`[�oy�&xlK��m#E^�c�̛Ĺ�k��B�De 9���N�ؤg��]��h�Jߐ����
I�zn��U��H�M�D+�̗{�%Ș_�\Zm��^:}��?�����WC�v��r���Ka��7~!g0����M����?�QP�����-L�Q@�J�X=�r��5g�]��l薀)��K�\^q|��mW�ǝ�{|d�ُc���������ۛN��%��y2y�x������S�S�޹���;�^�V��i�x[|ǟ�q���1_�C�zᅶq; c����n��w:����m�0H��������]�p�^��8X���O;��6��-�t�5��1ew�^�$��A�A�e`��'��3~��*��A  ��m���1�p(�9c�ȏA��A�3�����v==+���-�z�\w4q:�fg2p�s]hU��A:���i��;�f��Q  �Kg�(5�@�|�x���@��n�1;��JFl�!sRd�k稔(-3MK5w]�/N��#伃s�j��nwgdN�e�Z�Cڸ�]�'w�=wmS9�t{��)�]��'w��Y7E䮣c���3"��]k�{޵F�Z���T�=w�'9�U?�5箩ȹU���580�M'�䮩u�	�R@��� �X�� �̠(�����P@P��;<0� ����s+���P�Z�z����e�Ot_��VT0��4��jU������/gس���*hB�:��]ЗI F���J0�!�c�� ���"��H�l�@U�b� ��
�*N1�z�?{U~?���lyҐ�5����K�Ś�@'
ku�+��ŤA�2�#� �
�:����U�x<7��_P�2џ��
�-��R���ϻ���\�a�S���# @��	�vՆ!( � +�4����ff�'�@A� �.������q��#/`����s%�f��W���h��2��y�~�K���z�u�t�5��!+�E|�����~ `�2�ƕt+D��O��W0|���?� Q�8|��q@�� �b�C�	���̲0B1��[S���o7{'�
�:��Ď����+r�\��@${r�ϫ�N/�y����jOc�^G��oI^�H��M~B�t��0 D�-�<�1'����AO#շ�-@�0��(�t��9x"�?7d���Xur��
  ������X�%����YjS�ҺQ=A �v�鹁�6��t���]��.�����3�  	��E����9v����8���;�!F@����;I�x }�m�/�>���3��wx�"��g������m���j����;�E'n6zhN��5���,a��7����8���I�?:<>�_E6)Wf�߶���N  �3l�@`@�,�� ��P�t�B��U���@M�$a��0ա?���ށy8��} ҂[�C5l�ânV/�����j`���fԁG��l�:�Xq¤��^�ܲ6��MuMQ�w�0GmDQ���ɥJ4�!N����V*�,�N+��Q���3@@0G��h
B��A`����*�?(��id��	 }�,�������Q�.��>�hs�`k�U6D4�M�4��t�`k�C=+T����<`B^L�oՃS�V��y����1�[.�LՂ&s�,��E=���L��C,,t�� Phx�^���I�XtX�HR�Z�2"3�����w�������7��|��鳕�9�����A����" [n������������*9V��ۂ�����hYy�rv       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bnjix1v3f1wk0"
path="res://.godot/imported/Pong with GDScript.icon.png-abbe4ba8a8c9a06757ea03b964238e3f.ctex"
metadata={
"vram_texture": false
}
             GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|�           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://vufkpb8h84ku"
path="res://.godot/imported/Pong with GDScript.png-bb693b3c553f832ac64785dfd79289ff.ctex"
metadata={
"vram_texture": false
}
   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://logic/paddle.gd ��������
   Texture2D    res://paddle.png ���>~Lx   Script    res://logic/ball.gd ��������
   Texture2D    res://ball.png ��dG�^M
   Texture2D    res://separator.png �Њ5t   Script    res://logic/wall.gd ��������   Script    res://logic/ceiling_floor.gd ��������   
   local://1 �      
   local://2 �      
   local://3 �      
   local://4 $         local://PackedScene_54lpr U         RectangleShape2D       
      A   B         RectangleShape2D       
      A   A         RectangleShape2D       
     �A  �C         RectangleShape2D       
      D  �A         PackedScene          	         names "         Pong    Node2D    Background    offset_right    offset_bottom    color 
   ColorRect    Left 	   modulate 	   position    script    Area2D 	   Sprite2D    texture 
   Collision    shape    CollisionShape2D    Right    Ball 
   Separator 	   LeftWall 
   RightWall    Ceiling    Floor    _bounce_direction 	   Camera2D    offset    _on_area_entered    area_entered    _on_wall_area_entered    	   variants             D     �C   q�>��>��(>  �?         �?  �?  �?
   �A�B�@C                                  �?      �?  �?
   )�DD�<C
    @�C�?C                           
     �C  HC         
      �  HC                  
    �"D  HC
     �C   �                  
     �C  �C   ����      node_count             nodes     �   ��������       ����                      ����                                        ����         	      
                       ����                          ����                           ����         	   	   
                       ����                          ����                           ����   	   
   
                       ����                          ����                           ����   	                              ����   	      
                       ����                           ����   	      
                       ����                           ����   	      
                       ����                           ����   	      
                             ����                           ����                   conn_count             conns     *                                                                                                                                                   node_paths              editable_instances              version             RSRC       GST2      �     ����                �       2   RIFF*   WEBPVP8L   /�c0��?��� ��i;���E���}a       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://drgpdyyomyqpl"
path="res://.godot/imported/separator.png-f981c8489b9148e2e1dc63398273da74.ctex"
metadata={
"vram_texture": false
}
           [remap]

path="res://.godot/exported/133200997/export-84d343c4ab84bd4c0000a57675c7d9cd-pong.scn"
               list=Array[Dictionary]([])
     RIFF<  WEBPVP8L0  /� ����ϐ�|�ضm۹�m^:�4�'��������L-�_�~���ڮ��T8ϑ[۶�-W�����}�k��@LtB�!h2H����KɶE��%���C1s͘����������$�ߵ$IR��A�>r, �d�v�kئ�g�W� ]#���U�HV��Rf�9��֐mh�߄�'�ۙlo�eRN���^v ���j|yEo�a#o�����D(��-�������&���  a���(
E�0��3i�	�������1E�4h"��� p���(b�ff�_��R�E�`1^N�~�p3�x��}Wn)�M���څ=�󑷖��^l���{n��*1�c�eQ>���Tf�"0s"��W]�2����KOg[-*Fa�����Z�o�����VTe��4��y{�?��O�:/�VVhq)!����1�i7'D���"�Z�����[�K����(p!�Kҋ9Eg[8��G;	� J�@��EB��u���ŋ8�G_��#�%���Ï
d�mN�w��}�ʓ�����SԔs�k���:A�D��R�h����T��!�9'��Ov�5 � 2M!z�b4d#�]����}�t����:��)z��z.���V��ir&�$��3&��pɻq�o���ykΔwȮ[���1Z�PȮA�h.����k6�.�^��C�vDPV�Lv�s�k眓]g��J�f:]v���Ɨ۸z��gٵ/��!Z�
��_`�ќ�
ٵ�X��6Cl�s�Ž�����Wݪ�f������6J`�5��r�;��������-K�o��F��t�_r���6�=�y��u�Sk���&x�\�������l�����:�Ѻ����/5M�fk�$�n݅-0��yJ	7L���2nX"�|-��A,Mm׌��S'[wZ,ե�cZ*(�Ҕt��_����@�~E�6���n���k��J���u|�߈9~�1J�ޓ�cJ#� �5".�Su�B��c�0��n��+��@�L�Ƙ��)D@"�Ƥ�f�ۡ�x9O�v04Iޭ<�z.�g���M�h��5>���f��(�@�]��M��mH3xmh Y�o�\��⠠y��ٔ3�������mW�w����o��i�������>o⏄�	њZE�*��Ā����	/�}x�#_Avݧ)�zVs�f�ovmĸ��^C��#��Z��_
������0�@�>�@���z@+$1֗E�e*̫ϣ��;�ġ���*H��G���[���>��mX�k�2��M��
����9�_������4[���iT�W:��� �J�F�Ѵ��\�62��I��Ì��c�z��B�l�N{o�]���\�{Ë9�a����s#��F�d�%�Z�T�bi�c^��ݬ��)Ź��O>^v�ǫ��
OG�N;xr���m{on�^ȣ5�g�+ �����u2��@�p�K��-������ ��+V'>$���9����p�O��~�r�)�] ٳR���Wխ�}��]Jk�M�}��@�ڞ�Ґ*%��	��d���L�&�,{db��KޓY�%���To������`5�%n3t4 O�L� T@����_5ۧ�{"~�cu��ڱ�i�뎩���Q�(
���y�iZ����=�7�����G;��9)Y$O�w�`���g����~/Y,-��V��: [돿�U.�$���8%c:`���-�ٚ~W^Q�	,�&$P���`q^ ��=��S�~y�k_�Ë�Z�k���-:m�T��ݺ���) ���O��\��m]=M,�c��V-;��B=����Ǖ ���l
�%b�h�=���+�����$�vQx�1���~��i               ��dG�^M   res://ball.pngT��jT3R2   res://icon.webp���>~Lx   res://paddle.png����2<�{-   res://Pong with GDScript.apple-touch-icon.png�ɀ�1�.!   res://Pong with GDScript.icon.png4m�f�g   res://Pong with GDScript.png��msH	   res://pong.tscn�Њ5t   res://separator.png   ECFG      application/config/name         Pong with GDScript     application/config/descriptionl      d   A simple Pong game. This demo shows best practices
for game development in Godot, including signals.   application/config/tags,   "         2d     demo    	   official       application/run/main_scene      	   pong.tscn      application/config/features   "         4.2    application/config/icon         res://icon.webp "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      �     display/window/stretch/mode         canvas_items   display/window/stretch/aspect         expand  !   display/window/stretch/scale_mode         integer    input/left_move_down0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode           echo          script         input/left_move_up0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode           echo          script         input/right_move_down0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/right_move_up0              deadzone  �������?      events              InputEventJoypadButton        resource_local_to_scene           resource_name             device           button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device           axis      
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility2   rendering/environment/defaults/default_clear_color      ���=���=s� >  �?-   rendering/2d/snap/snap_2d_transforms_to_pixel         +   rendering/2d/snap/snap_2d_vertices_to_pixel                     
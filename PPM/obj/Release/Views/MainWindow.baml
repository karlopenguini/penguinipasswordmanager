   M S B A M L   `   `   `  ���� >  :PPM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PPM.Views	PPM.Views      PPM.Views.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:PPM.Views     -     � WindowStartupLocation$  CenterScreen=� � Title$! Penguini's Password Manager��$	��320��$	��820��$	��320��$	��900��$��84��$	��820�� � WindowStyle$
 None=� � AllowsTransparency .  � 
ResizeMode$ NoResize=�.���  � RowDefinitions �� $��71 ��� $	��249 �.+��� $��0��._��  � ColumnDefinitions �� �� $	��162 �.+��� $��0��$��2��.+��� $��Roboto)�$6��0ペンギーニパスワードマネージャー��$
��Bold"�$
��22pt(�
���   �$��22, 10, 0, 0q��� $��Roboto)�$&�� penguini password manager (beta)��$��
ExtraLight"�$
��12pt(�
���   �$��27, 0, 0, 0q�� $��0��$��2�� �� $��70 � �� $��54 ��� $��54 ��� $��54 �.+��� -   $��MinimizeButton��   MinimizeButton#��[  $��0��$��1���� -   $��
ExitButton��  
ExitButton#��[ $��0��$��2���� $��1��._��  �� $
��313* ��� $
��507* �.+�� $��0��$��0��$��
30,20,0,55q�$
��Left=�$	��266�� �� $	��117 ��� $��23 ��� �� $��21 � �� $	��266 �.+��� $��0��._��  �� .+��� $��0��.+�]� .+���   
ExtraLight#��[  �� Padding$ 0,5,0,5q�$��75���� $
�name���� -    ��Name$ 	NameInput��]� .+��� #��[ $��e-mail��$ 0,5,0,5q�$��75���� -   $ 
EmailInput��]� .+��� #��[ $��username��$ 0,5,0,5q�$��75���� -   $ UserNameInput��]� .+��� #��[ $��password��$ 0,5,0,5q�$��75��G� -   	 G�Name$	 PasswordInput���� -   $��
SaveButton��  Save#��[ ���#67d287$��1��$��
72,0,111,0q�.��save�� -	   $��DeleteButton�� 
 Delete#��[ ���#df6161$��1��$��	175,0,8,0q�.��delete�� -
   $��
EditButton�� 
 Opaque#��[ $��3��$��72,0,8,0q�.��edit� $��1��$��	50,0,50,0q� �� $
��205* ��� $	��25* ��� $	��19* � �� $��* �.+��� .+�]� $��RightToLeft=�$��	0,30,0,15q�.+���   Regular#��[ $��e-mail��$	��101���� -   $��EmailOutput�� 
 Output#��[ ]� $��RightToLeft=�$��	0,15,0,15q�.+��� #��[ $��username��$	��100���� -   $��UsernameOutput��#��[ ]� $��RightToLeft=�$��	0,15,0,15q�.+��� #��[ $��password��$	��100���� -   $��PasswordOutput��#��[ ]� $��RightToLeft=�$��Right=�$��0,5,0,15q�.+��� #��[ $
��name���� -   $��SearchInput��$��	30,0,15,0q�$	��242���� -   $��SearchButton�� 
 Search#��[ ���#66d1cd$��84��$��22��.��search�� -   $��ViewAllButton��$��1��#��[ $��Roboto)�$��View All���� $��1��$��0��$��Bottom=�$��17��.+��� $2��,© 2021, Karlo Palisoc, All rights reserved.��$��Roboto)�$��
ExtraLight"�$��10(�
���iii�$��10,0,0,5q�
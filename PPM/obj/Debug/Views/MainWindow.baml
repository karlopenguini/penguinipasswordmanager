   M S B A M L   `   `   `  ����>  :PPM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PPM.Views	PPM.Views  5          PPM.Views.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      )localclr-namespace:PPM.Views     5      -   5          � WindowStartupLocation$  CenterScreen=�5   	    � Title$! Penguini's Password Manager��5	   	   $	��320��6-   $	��820��6:   $	��320��6F   $	��900��6V   $��84��6e   $	��820��6t    � WindowStyle$
 None=�5
   	    � AllowsTransparency .  � 
ResizeMode$ NoResize=�5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��71 �6   �� 5      $	��249 �6   .+�5   
   �� $��0��6   ._�5      �  � ColumnDefinitions 5      �� 5      �� 5      $	��162 �6'   .+�5      �� $��0��6   $��2��6*   .+�5      �� $��Roboto)�6   $6��0ペンギーニパスワードマネージャー��60   $
��Bold"�6K   $
��22pt(�6]   
���   �$��22, 10, 0, 0q�6�   �� 5      $��Roboto)�6   $&�� penguini password manager (beta)��60   $��
ExtraLight"�6[   $
��12pt(�6s   
���   �$��27, 0, 0, 0q�6�   5      � 5      $��0��6   $��2��6$    5      �� 5      $��70 �6(    5      �� 5       $��54 �6+   �� 5!      $��54 �6+   �� 5"      $��54 �6+   .+�5$      �� -   5        $��MinimizeButton��5$   E      MinimizeButton#��[  6   $��0��6[   $��1��6i   6y   �� 5%      -   5        $��
ExitButton��5%   A     
ExitButton#��[ 6   $��0��6T   $��2��6a   6q   5&      5'      5(      �� 5)   
   $��1��6   ._�5*      �  5+      �� 5,      $
��313* �6'   �� 5-      $
��507* �6'   .+�5/      � $��0��6   $��0��6$   $��
30,20,0,55q�64   $
��Left=�6H   $	��266��6c    50      �� 51      $	��117 �6(   �� 52      $��23 �6(   �� 53      �� 54      $��21 �6(    56      �� 57      $	��266 �6+   .+�59      �� $��0��6   ._�5:      �  5;      �� 5<   "   .+�5>      �� $��0��6)   .+�5?   "   ]� .+�5@   &   ��   
ExtraLight#��[ 60    �� Padding$ 0,5,0,5q�6T   $��75��6f   �� 5A      $
�name��6   5B   '   �� 5C   &   -   5         ��Name$ 	NameInput��5C   .   5D   #   ]� 5E   "   .+�5F   &   �� #��[ 60   $��e-mail��6T   $ 0,5,0,5q�6b   $��75��6u   �� 5G   &   -   5        $ 
EmailInput��5G   .   5H   #   ]� 5I   "   .+�5J   &   �� #��[ 60   $��username��6T   $ 0,5,0,5q�6d   $��75��6w   �� 5K   &   -   5        $ UserNameInput��5K   .   5L   #   ]� 5M   "   .+�5N   &   �� #��[ 60   $��password��6T   $ 0,5,0,5q�6d   $��75��6w   G� 5O   &   -   5        	 G�Name$	 PasswordInput��5O   2   5P   #   5Q      5R      5S      �� 5T      -   5        $��
SaveButton��5T   P     Save#��[ 6   ���#67d287$��1��6b   $��
72,0,111,0q�6o   .��6�   save6�   �� 5U      -	   5        $��DeleteButton��5U   S    
 Delete#��[ 6   ���#df6161$��1��6g   $��	175,0,8,0q�6t   .��6�   delete6�   �� 5V      -
   5        $��
EditButton��5V   =    
 Opaque#��[ 6   $��3��6O   $��72,0,8,0q�6]   .��6�   edit6�   5W      � 5X      $��1��6   $��	50,0,50,0q�6'    5Y      �� 5Z      $
��205* �6(   �� 5[      $	��25* �6(   �� 5\      $	��19* �6(    5^      �� 5_      $��* �6+   .+�5a      �� .+�5b      ]� $��RightToLeft=�6$   $��	0,30,0,15q�6@   .+�5c      ��   Regular#��[ 6(   $��e-mail��6I   $	��101��6W   �� 5d      -   5        $��EmailOutput��5d   &    
 Output#��[ 69   5e      ]� 5f      $��RightToLeft=�6$   $��	0,15,0,15q�6@   .+�5g      �� #��[ 6(   $��username��6I   $	��100��6Y   �� 5h      -   5        $��UsernameOutput��5h   &   #��[ 6<   5i      ]� 5j      $��RightToLeft=�6$   $��	0,15,0,15q�6@   .+�5k      �� #��[ 6(   $��password��6I   $	��100��6Y   �� 5l      -   5        $��PasswordOutput��5l   &   #��[ 6<   5m      ]� 5n      $��RightToLeft=�6$   $��Right=�6@   $��0,5,0,15q�6\   .+�5o      �� #��[ 6(   $
��name��6I   �� 5p      -   5        $��SearchInput��5p   &   $��	30,0,15,0q�69   $	��242��6L   �� 5q      -   5        $��SearchButton��5q   Z    
 Search#��[ 6%   ���#66d1cd$��84��6n   $��22��6y   .��6�   search6�   5r      5s      �� 5t      -   5        $��ViewAllButton��5t   J   $��1��6   #��[ 6*   $��Roboto)�6{   $��View All��6�   6�   5u      �� 5v      $��1��6   $��0��6*   $��Bottom=�6:   $��17��6U   .+�5w      �� $2��,© 2021, Karlo Palisoc, All rights reserved.��6    $��Roboto)�6S   $��
ExtraLight"�6g   $��10(�6   
���iii�$��10,0,0,5q�6�   5x      5y      5z      5{      5|      
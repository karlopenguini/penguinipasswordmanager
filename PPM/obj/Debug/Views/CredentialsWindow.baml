   M S B A M L   `   `   `  ����>  :PPM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PPM.Views	PPM.Views  5      !    PPM.Views.CredentialsWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      )localclr-namespace:PPM.Views     5      -   5          � Title$  Credentials��5   	   $	��435��6   $
��1200��6*    � WindowStyle$
 None=�5	   	    � AllowsTransparency .  � 
ResizeMode$ NoResize=�5
   	   .��5      �  � ColumnDefinitions 5   
   �� 5       � RowDefinitions 5   
   �� 5      $��41 �6   �� 5      .+�5   
   �� $��0��6   ._�5      �  5      �� 5      �� 5      $	��54* �6'   �� 5      $	��162 �6'   .+�5      � $��0��6   $��2��6$    5      �� 5      $��* �6(    5      �� 5       $��54 �6+   �� 5!      $��54 �6+   �� 5"      $��54 �6+   .+�5$      �� -   5        $��MinimizeButton��5$         MinimizeButton#��[  63   $��0��6[   $��1��6i   6y   �� 5%      -   5        $��
ExitButton��5%        
ExitButton#��[ 6/   $��0��6S   $��2��6`   6p   5&      �� 5'      $��1��6   $��Light"�6(   $��credentials��6;   $��26(�6Q   
���   �$��Center=�6r   $��0,0,0,10q�6�   5(      5)      &   System.Windows.Controls.DataGrid  5*   
   -   5        $��CredentialsTable��5*   y      
IsReadOnly .    GridLinesVisibility$
 None=�6%      SelectionMode$ Single=�6@   	   SelectionUnit$
	 Cell=�6W   $��1��6l   
   CanUserReorderColumns
 .     CanUserResizeColumns .     AutoGenerateColumns .  $��0q�6�    � 	Resources 5+      ��%    6#      Columns 5,      0  *System.Windows.Controls.DataGridTextColumn  5-      ,  &System.Windows.Controls.DataGridColumn   Header$
 name��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *Name+6L     5.      $ e-mail��6%   $ * 6O    65   �� *Email+6O     5/      $ username��6%   $ * 6T    67   �� *
Username+6T     50      $ password��6%   $ * 6T    67   �� *
Password+6T   52      53      54      
   M S B A M L   `   `   `  ���� >  :PPM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PPM.Views	PPM.Views  !    PPM.Views.CredentialsWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     )localclr-namespace:PPM.Views     -     � Title$  Credentials��$	��435��$
��1200�� � WindowStyle$
 None=� � AllowsTransparency .  � 
ResizeMode$ NoResize=�.���  � ColumnDefinitions ��  � RowDefinitions �� $��41 ��� .+��� $��0��._��  �� �� $	��54* ��� $	��162 �.+�� $��0��$��2�� �� $��* � �� $��54 ��� $��54 ��� $��54 �.+��� -   $��MinimizeButton��   MinimizeButton#��[  $��0��$��1���� -   $��
ExitButton��  
ExitButton#��[ $��0��$��2���� $��1��$��Light"�$��credentials��$��26(�
���   �$��Center=�$��0,0,0,10q�&   System.Windows.Controls.DataGrid  -   $��CredentialsTable��   
IsReadOnly .    GridLinesVisibility$
 None=�   SelectionMode$ Single=�	   SelectionUnit$
	 Cell=�$��1��
   CanUserReorderColumns
 .     CanUserResizeColumns .     AutoGenerateColumns .  $��0q� � 	Resources ��%       Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$
 name��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Name+  $ e-mail��$ *  �� *Email+  $ username��$ *  �� *
Username+  $ password��$ *  �� *
Password+
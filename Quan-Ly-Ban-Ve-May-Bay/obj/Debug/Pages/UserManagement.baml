   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      1    +Quan_Ly_Ban_Ve_May_Bay.Pages.UserManagement   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages     5        N� Title$  UserManagement��5	       N� 
Background
 ����� � 	Resources 5      7   1Quan_Ly_Ban_Ve_May_Bay.Pages.AccountTypeConverter   accountTypeConverter��%   &	          5   
   6%   5      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��40 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	UserTable��5       $��0��6      
IsReadOnly .  5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value*  $System.Windows.Controls.DataGridCell	 �� 	Resources��%3  '        '      �� 5      "  6   .�5      ��  � �� �#DDDDDD63   �� 5       � ��$ SemiBold"�63   �� 5       � ��$ 18(�61   �� 5       � ��$ 0,0,1,1q�68   �� 5       � ��
 �   �64   �� 5       � ��$ Center=�6C   5      �� 5      "  6   .�5      ��  � ��$ 0,0,1,1q�68   �� 5        � ��
 �   �64   	 5!      ���� 5"      '��       " ��6    .�5#      ��  � ��$ Center=�6B   �� 5$       � ��$ Center=�6D   5%      5&      5'      5(      
   Columns
 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.8* 61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *id+  5-      $ Tên hiển thị��6%   $ * 6;    6E   �� *displayname+  5.      $ Tên đăng nhập��6%   $ * 6<    6F   �� *
username+  5/      $ Email��6%   $
 1.2* 64    6A   �� *email+  50      $ Loại tài khoản��6%   $ * 6=    6G   �� *type+ �� 	Converter# [  52      �� 53   
    �� Orientation$ 
Horizontal=�6   $��1��6.   $��Right=�6;   .+�54      �� -   5        $��Thêm��54      ���#2E8B57$��70��69   6D   �� 55      -   5        $
��Xóa��55      ���#A6DC4A$��70��68   $	��5 0q�6C   6P   �� 56      -   5        $��Sửa��56      ���#8EB54C$��70��68   $��0 0 5 0q�6C   6T   57      59      5:      
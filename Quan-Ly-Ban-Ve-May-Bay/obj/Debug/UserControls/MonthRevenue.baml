   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Quan_Ly_Ban_Ve_May_Bay.UserControls#Quan_Ly_Ban_Ve_May_Bay.UserControls  5      6    0Quan_Ly_Ban_Ve_May_Bay.UserControls.MonthRevenue   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Clocal1clr-namespace:Quan_Ly_Ban_Ve_May_Bay.UserControls     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      ���#8EB54C.��5      �   � RowDefinitions  5   
   �� 5      $��50 �6   �� 5      �� 5      $��40 �6   .+�5   
   �  � ColumnDefinitions 5      �� 5      $��4* �6#   �� 5      .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5      �� $��Tháng: ��6   ���#000000 �� TextAlignment$ Center=�6@   $��20(�6W   $��Center=�6e   �� 5      -   5         ��Name$ 	cBoxMonth��5      $��80��5      $��10q�6&   $��18(�62   $��Center=�6@   ���#F5F5F55      �� 5      $��Năm: ��6   ���#000000$ Center=�6>   $��20(�6U   $��Center=�6c   $��10 0 0 0q�6~   �� 5      -   5        $ cBoxYear��5      $��80��5      $��10q�6&   $��18(�62   $��Center=�6@   ���#F5F5F55       �� 5!      -   5         ��Name$ bt_ok��5!      $��Ok��6(   
�������$��70��6H   $��20 0 0 0q�6S   5"      5#      �� 5$      -   5        $ Excel��5$   %   $��1��6   $��Xuất Excel��64   
�������$	��100��6\   5%      5&      &   System.Windows.Controls.DataGrid  5'   
   -   5          Name$ MonthRevenueTable��5'       $��1��6      
IsReadOnly .  � 	Resources 5(      =  7System.Windows.Controls.Primitives.DataGridColumnHeader	 �� 
TargetType
 �� Property �� Value*  $System.Windows.Controls.DataGridCell �� 	Resources��%3  '        '      �� 5)      "	  6   .�5*      �� 
 � �� �#DDDDDD63   �� 5+      
 � ��$ SemiBold"�63   �� 5,      
 � ��$ 18(�61   �� 5-      
 � ��$ 0,0,1,1q�68   �� 5.      
 � ��
 �   �64   �� 5/      
 � ��$ Center=�6C   50      �� 51      "	  6   .�52      �� 
 � ��$ 0,0,1,1q�68   �� 53      
 � ��
 �   �64    54      ���� 55      '��       "	 ��6    .�56      �� 
 � ��$ Center=�6B   �� 57      
 � ��$ Center=�6D   58      59      5:      5;         Columns 5>      0  *System.Windows.Controls.DataGridTextColumn  5?      ,  &System.Windows.Controls.DataGridColumn   Header$	 STT��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *stt+  5@      $ Chuyến bay��6%   $ * 69    6C   �� *	chuyenbay+  5A      $ Số vé bán được��6%   $ * 6=    6G   �� *sove+  5B      $ 	Doanh thu��6%   $ * 68    6B   �� *
doanhthu+  5C      $ 	Tỉ lệ��6%   $
 0.8* 64    6A   �� *tile+5E      �� 5F   
   $��2��6   $ 
Horizontal=�6"   .+�5G      �� $��Tổng doanh thu: ��6   $��20(�61   $��Center=�6?   $��20 0 0 0q�6Z   �� 5H      -   5         ��Name$ tb_total��5H      $��20(�6+   $��Center=�69   $��10 0 0 0q�6T   5I      5J      5K      
   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Quan_Ly_Ban_Ve_May_Bay.UserControls#Quan_Ly_Ban_Ve_May_Bay.UserControls  5      5    /Quan_Ly_Ban_Ve_May_Bay.UserControls.YearRevenue   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Clocal1clr-namespace:Quan_Ly_Ban_Ve_May_Bay.UserControls     5      ���#8EB54C.��5
      �   � RowDefinitions  5   
   �� 5      $��50 �6   �� 5      �� 5      $��40 �6   .+�5   
   �  � ColumnDefinitions 5      �� 5      $��4* �6#   �� 5      .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5      �� $
��Năm��6   ���#000000 �� TextAlignment$ Center=�6<   $��20(�6S   $��Center=�6a   �� 5      -   5         ��Name$
 cBox��5      $	��100��5      $��10q�6'   $��18(�63   $��Center=�6A   ���#F5F5F55      5      �� 5      -   5         ��Name$ Excel��5   %   $��1��6   $��Xuất Excel��64   
�������$	��100��6\   5      5      &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ YearRevenueTable��5        $��1��6      
IsReadOnly .  � 	Resources 5!      =  7System.Windows.Controls.Primitives.DataGridColumnHeader	 �� 
TargetType
 �� Property �� Value*  $System.Windows.Controls.DataGridCell �� 	Resources��%3  '        '      �� 5"      "	  6   .�5#      �� 
 � �� �#DDDDDD63   �� 5$      
 � ��$ SemiBold"�63   �� 5%      
 � ��$ 18(�61   �� 5&      
 � ��$ 0,0,1,1q�68   �� 5'      
 � ��
 �   �64   �� 5(      
 � ��$ Center=�6C   5)      �� 5+      "	  6   .�5,      �� 
 � ��$ 0,0,1,1q�68   �� 5-      
 � ��
 �   �64    5.      ���� 5/      '��       "	 ��6    .�50      �� 
 � ��$ Center=�6B   �� 51      
 � ��$ Center=�6D   52      53      54      55         Columns 58      0  *System.Windows.Controls.DataGridTextColumn  59      ,  &System.Windows.Controls.DataGridColumn   Header$ Tháng��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 64   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6@   �� *thang+  5:      $ Số chuyến bay��6%   $ * 6<    6F   �� *sochuyenbay+  5;      $ 	Doanh thu��6%   $ * 68    6B   �� *
doanhthu+  5<      $ 	Tỉ lệ��6%   $
 0.8* 64    6A   �� *tile+5>      �� 5?   
   $��2��6   $ 
Horizontal=�6"   .+�5@      �� $��Tổng doanh thu: ��6   $��20(�61   $��Center=�6?   $��20 0 0 0q�6Z   �� 5A      -   5         ��Name$ tb_total��5A      $��20(�6+   $��Center=�69   $��10 0 0 0q�6T   5B      5C      5D      
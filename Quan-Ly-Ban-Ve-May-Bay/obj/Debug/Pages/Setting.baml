   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      *    $Quan_Ly_Ban_Ve_May_Bay.Pages.Setting   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	        N� Title$  Setting��5
       N� 
Background
 �����.��5      �� .+�5   
   �� $��Thông tin tài khoản��6   $��25(�60    �� TextAlignment$ Center=�6>   ���#8EB54C
�������$
��Bold"�6~   $��
Sitka Text)�6�    �� Padding$ 5q�6�   ]� 5   
   $��
30 60 30 0q�6   .+�5      �� $��Tên đăng nhập��6   $��17(�6.   $��Cambria Math)�6<   $	��350��6V   $��Center=�6b   �� 5      -   5         ��Name$ Uname��5      $��17(�6?   $��Cambria Math)�6M   
������� �� 
IsReadOnly . ��6%   �� *
username+6{   5      �� 5   
   $��0 1 0 0q�6   
�������$��30 10q�6>   ]� 5   
   $
��30 0q�6   .+�5      �� $��Tên hiển thị��6   $��17(�6-   $��Cambria Math)�6;   $	��350��6U   $��Center=�6a   �� 5      -   5        $ DName��5      $��17(�6B   $��Cambria Math)�6P   
������� . ��6%   �� *displayname+6~   �� 5      -   5           MaterialDesignIconButton#��[  5      $��Right=�6G    � ToolTip$ Chỉnh sửa��6c   $��22��5      $��40��6%   .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Pencil=�6*   5      5      �� 5   
   -   5         ��Name$ 
panelDName��5      	 �� Orientation$	 
Horizontal=�6*   $y�	Collapsed=�6C   $��0 8 0 0q�6Z   .+�5      �� -   5         # MaterialDesignRaisedLightButton#��[ 5      $��
Đồng ý��6N   $	��100��6_   $��
260 0 20 0q�6k   ���#8EB54C6�   �� 5      -   5         % !MaterialDesignOutlinedLightButton#��[ 5      $��Hủy��6P   $��70��6^   6i   5       �� 5!   
   $��0 1 0 0q�6   
�������$��30 10q�6>   ]� 5#   
   $
��30 0q�6   .+�5$      �� $��Email��6   $��17(�6&   $��Cambria Math)�64   $	��350��6N   $��Center=�6Z   �� 5%      -   5        $ Email��5%      $��17(�6=   $��Cambria Math)�6K   
������� . ��6%   �� *email+6y   �� 5&      -   5        #��[  5&      $��Right=�6G   $ Chỉnh sửa��6c   $��22��5'      $��40��6%   .��5(        $ Pencil=�6*   5)      5*      �� 5+   
   -	   5        $ 
panelEmail��5+      $	 
Horizontal=�6*   $y�	Collapsed=�6C   $��0 8 0 0q�6Z   .+�5,      �� -
   5        
 ��Name$
 	txblError��5,      $��20 5 0 0q�6+   
���  ��$��Medium"�6O   �� 5-      -   5        #��[ 5-      $��
Đồng ý��6N   $	��100��6_   $��
260 0 20 0q�6k   ���#8EB54C6�   �� 5.      -   5        #��[ 5.      $��Hủy��6P   $��70��6^   6i   5/      �� 50   
   $��0 1 0 0q�6   
�������$��30 10q�6>   ]� 52   
   $
��30 0q�6   .+�53      �� $��Mật khẩu��6   $��17(�6(   $��Cambria Math)�66   $	��350��6P   $��Center=�6\   �� 54      $��(Không hiển thị)��6   $��17(�60   $��Cambria Math)�6>   
������� . 6l   �� 55      -   5        #��[  55      $��Right=�6G   $ Chỉnh sửa��6c   $��22��56      $��40��6%   .��57        $ Pencil=�6*   58      59      5:      5;      
   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      (    "Quan_Ly_Ban_Ve_May_Bay.Pages.Login   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	        N� Title$  Login��5
       N� 
Background �#8EB54C N� 
Foreground
 �����.��5      �� .+�5   
   �� $��Đăng Nhập��6    �� TextAlignment$ Center=�5      $��40(�5      $
��Bold"�5      $��
Sitka Text)�5      $��0 60 0 0q�5      �� 5   
   -   5         ��Name$ 	txblError��5      
���  ��$��0 2 0 1q�69   $��Center=�6J   $��Medium"�6g   �� 5   
   $	��250��6    �� Orientation$ 
Horizontal=�6!   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Account=�6&   $��25��65   $��25��6@   $��	0 18 10 0q�6L   �� 5      -   5         ��Name$ Username��5      
�������)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Email/Tên đăng nhập��5       %  !MaterialDesignFloatingHintTextBox#��[  5      	   
Foreground
	 �����.  (MaterialDesignThemes.Wpf.TextFieldAssist
   UnderlineBrush

 �����$��Center=�5      $��14(�69   $	��215��6G   ��5      �� *
UserName+5   G   5      �� 5   
   $	��250��6   $ 
Horizontal=�6!   .+�5         $
 Lock=�6&   $��25��62   $��25��6=   $��	0 15 10 0q�6I   G� 5!      -   5         G�Name$ PasswordBox��5!      
�������$ Mật khẩu��5"   "   
	 �����

 ����� / +MaterialDesignFloatingHintRevealPasswordBox#��[ 5%   "   $	��215��5&   "   $��14(�6.   5'      5(      �� 5)   
   .+�5*      �� -   5        $��Center=�5*   [   $��Quên mật khẩu?��6x   $��0,0,0,0q�6�   $��0 10 0 5q�6�   ��6.   Z� ��6D   Z� ��5+      �� 5,       �� 
TargetType" ��6   .�5-      ��  �� Property � �� �� Value
 �����6G   �� 5.       � �� 5/      �� 50   "    �� 
TargetType" ��62   .R�51   &   �� #��z��6-   
���   �$��0q�6k   ._�52   *   �� $��Center=�6;   $��Center=�6X   53   '   54   #   56       �� Triggers 57      P� 58       P� Property �@J�IsMouseOver P� Value . . �59   "   ��  � �� �#CCCCCC6?   �� 5:   "    �@�Cursor$
 Hand��6;   �� 5;   "    � �� 5<   &   �� 5=   *   " ��6:   .R�5>   .   �� #��z��65   $��0q�6_   ._�5?   2   �� $��	Underline{�6<   �� 5@   :   $��Center=�6K   $��Center=�6h   5A   3   5B   /   5C   +   5E   #   5F      5H      5J      5K      �� 5L   
   .+�5M      �� -   5         % !MaterialDesignOutlinedLightButton#��[ 5N      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 5��5O      $	��110��5P      $��Đăng nhập��6)   
�������$��14(�6P   $
��0 20q�6^   ��5Q      �� 5R      .��5S      �  � Color$ #0222��6'    � Offset$ 1Q�65   � 5T      $ #0A4100��6'   $ 0Q�67   5U      5W      �� 5Y      -   5        $��Center=�5Y   B   $3��-Bạn chưa có tài khoản? Đăng ký ngay��6_   $��0,0,0,0q�6�   ��6   Z� ��6+   Z� ��5[      �� 5\      " ��6   .�5]      ��  � ��
 �����6G   �� 5^       � �� 5_      �� 5`   "   " ��62   .R�5a   &   �� #��z��6-   
���   �$��0q�6k   ._�5b   *   �� $��Center=�6;   $��Center=�6X   5c   '   5d   #   5f       5g      P� 5h       �@J�IsMouseOver . . �5i   "   ��  � �� �#CCCCCC6?   �� 5j   "    �@�Cursor$
 Hand��6;   �� 5k   "    � �� 5l   &   �� 5m   *   " ��6:   .R�5n   .   �� #��z��65   $��0q�6_   ._�5o   2   �� $��	Underline{�6<   �� 5p   :   $��Center=�6K   $��Center=�6h   5q   3   5r   /   5s   +   5u   #   5v      5x      5z      5{      5|      5}      
   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      +    %Quan_Ly_Ban_Ve_May_Bay.Pages.Register   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
        N� Title$  Register��5	       N� 
Background �#8EB54C N� 
Foreground
 �����.��5      �� .+�5   
   �� .+�5      �� -   5           MaterialDesignIconButton#��[  5      $��5 5 0 40q�6H   $��25��5      $��25��6)    � ToolTip$ Go Back��5       � OverridesDefaultStyle . $
��Left=�5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowLeft=�6*   
�������6;   5      �� 5      $��
Đăng Ký��6    �� TextAlignment$ Center=�5       $��40(�5       $
��Bold"�5       $��
Sitka Text)�5       5      �� 5      -   5         ��Name$ 	txblError��5      
���  ��$��0 3 0 1q�6=   $��Center=�6N   $��Medium"�6k   5      �� 5   
   $	��250��6    �� Orientation$ 
Horizontal=�6!   $��5q�6:   .+�5        $ Email=�6&   $��25��63   $��25��6>   $��	0 10 10 0q�6J   $��Center=�6]   �� 5       -   5        	 ��Name$	 Email��5       
�������)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Email��5!       % !MaterialDesignFloatingHintTextBox#��[ 5"         
Foreground
 �����.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 �����$��Center=�5%      $��14(�69   $	��215��6G   5&      �� 5'   
   $	��250��6   $ 
Horizontal=�6!   $��5q�6:   .+�5(        $ Account=�6&   $��25��65   $��25��6@   $��	0 10 10 0q�6L   $��Center=�6_   �� 5)      -   5        $	 Username��5)      
�������$
 Tên đăng nhập��5+      #��[ 5,      
 �����
 �����$��Center=�5/      $��14(�69   $	��215��6G   ��5*      �� *
UserName+5/   G   50      �� 51   
   $	��250��6   $ 
Horizontal=�6!   $��5q�6:   .+�52        $ AccountEdit=�6&   $��25��69   $��25��6D   $��	0 10 10 0q�6P   $��Center=�6c   �� 53      -   5        $	 Displayname��53      
�������$
 Tên hiển thị��54      #��[ 55      
 �����
 �����$��Center=�58      $��14(�69   $	��215��6G   59      �� 5:   
   $	��250��6   $ 
Horizontal=�6!   $��5q�6:   .+�5;        $
 Lock=�6&   $��25��62   $��25��6=   $��	0 10 10 0q�6I   $��Center=�6\   G� 5<      -   5         G�Name$ PasswordBox1��5<      
�������$
 Mật khẩu��5=   "   
 �����
 ����� / +MaterialDesignFloatingHintRevealPasswordBox#��[ 5@   "   $	��215��5A   "   $��14(�6.   5B      5C      �� 5D   
   $	��250��6   $ 
Horizontal=�6!   $��5q�6:   .+�5E        $
 Lock=�6&   $��25��62   $��25��6=   $��	0 10 10 0q�6I   $��Center=�6\   G� 5F      -   5        $ PasswordBox2��5F      
�������$$
 Xác nhận lại mật khẩu��5G   "   
 �����
 �����#��[ 5J   "   $	��215��5K   "   $��14(�6.   5L      5M      �� 5N   
   .+�5O      �� -   5         % !MaterialDesignOutlinedLightButton#��[ 5O      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 5��5P      $	��100��5Q      $��
Đăng ký��6)   
�������$��14(�6N   $
��0 30q�6\   ��5R      �� 5S      .��5T      �  � Color$ #0222��6'    � Offset$ 1Q�65   � 5U      $ #0A4100��6'   $ 0Q�67   5V      5X      5Y      5Z      5[      
   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Quan_Ly_Ban_Ve_May_Bay.ViewQuan_Ly_Ban_Ve_May_Bay.View  5   	   *    $Quan_Ly_Ban_Ve_May_Bay.View.UserForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:Quan_Ly_Ban_Ve_May_Bay.View     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  UserForm��5	   	   $	��450��6   $	��800��6'    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	    � AllowsTransparency . 
������ 
�������.��5      ��  �� CornerRadius$ 40��6   ��5   
   �� 5       �� EndPoint$	 0 1&�6"   .��5      �  � Color$ White��6    � Offset$ 1Q�6-   � 5      $ #8EB54C��6   $	 0.3Q�6/   5      ._�5   
   �� .+�5      �� -   5         ��Name$ 	headertxt��5      $��
Thêm User��6+   	 �� TextAlignment$	 Center=�6<   
�������$��35(�6f   $��
Sitka Text)�6t   $��	0 20 0 30q�6�   � 5      
 � ColumnDefinitions
 5      �� 5      $��* �6'   �� 5      $��* �6'   .+�5      �� $��0��6   .+�5      �� -   5         ��Name$ Displayname��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên hiển thị��63      
Foreground
 ����� %  !MaterialDesignFloatingHintTextBox#��[  5       $��Center=�5!      $��15(�69   $	��300��6G   
�������6S   �� 5"      -   5        $ Username��5"      $ Tên đăng nhập��60   #��[  5#      
 �����$��Center=�5%      $��15(�69   $	��300��6G   $��0 10 0 0q�6S   
�������6e   �� 5&      -   5        $ Email��5&      $ Email��6-   #��[  5'      
 �����$��Center=�5)      $��15(�69   $	��300��6G   $��0 10 0 0q�6S   
�������6e   5*      �� 5+      $��1��6   .+�5,      G� -   5         G�Name$ PasswordBox1��5,   "   
�������$ Mật khẩu��5-   "   
 �����.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ����� / +MaterialDesignFloatingHintRevealPasswordBox#��[ 50   "   $	��300��51   "   $��15(�6.   52      G� 53      -   5        $ PasswordBox2��53   "   
�������$ Nhập lại mật khẩu��54   "   
 �����
 �����#��[ 57   "   $	��300��58   "   $��15(�6.   $��0 10 0 0q�6=   59      �� 5:      -   5         ��Name$ cbRBAC��5:      $ Phân quyền��6/   $	��300��6[   $��15(�6h   $��0 25 0 0q�6w   
 �����
�������
 �����.@�5=      �� $��Admin��6'   �� 5>      $��Nhân viên��6'   �� 5?      $��Khách hàng��6'   5@      5A      5B      �� 5C      -   5        $ 	txblError��5C      
���  ��$��0 40 0 0q�6=   $��Center=�6O   $��Medium"�6l   �� 5D       �� Orientation$ 
Horizontal=�6   $	��350��62   $��0 30 0 0q�6>   .+�5E      �� -	   5         % !MaterialDesignOutlinedLightButton#��[ 5E      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 5��5F      $	��100��5G      $
��Lưu��6)   
�������$��17(�6J   $
��30 0q�6X   ���#8EB54C5I      �� 5J      -
   5        #��[ 5J      $ 5��5K      $	��100��5L      $��Hủy��6)   ���#8EB54C$��17(�6L   $
��30 0q�6Z   
������ 5N      5O      5Q      5R      5S      
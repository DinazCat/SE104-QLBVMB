   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Quan_Ly_Ban_Ve_May_Bay.ViewQuan_Ly_Ban_Ve_May_Bay.View  5   	   0    *Quan_Ly_Ban_Ve_May_Bay.View.ChangePassword   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:Quan_Ly_Ban_Ve_May_Bay.View     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��280��5	   	   $	��320��6     � WindowStartupLocation$  CenterScreen=�5
   	    � WindowStyle$
 None=�5   	    � AllowsTransparency . 
������ .��5      �� -   5         �� CornerRadius$ 20��5      $��2q�6   
���������5   
   �� 5       �� EndPoint$	 0 1&�6"   .��5      �  � Color$ #8EB54C��6    � Offset$	 0.3Q�6/   5      ._�5   
   �� .+�5      �� -   5           MaterialDesignIconButton#��[  5      $��Right=�5      $��
0 10 10 10q�69   $��25��5      $��25��6)    � ToolTip$ Close��64   .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 
CloseThick=�6*   
�������6<   5      �� 5      -   5        	 ��Name$	 Errortxt��5      ���#FF0000$��Center=�6?   G� 5      -   5        
 G�Name$
 PasswordBox��5      
�������
�������$y�	Collapsed=�6V   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mật khẩu cũ��5   "      
Foreground
 �����.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ����� / +MaterialDesignFloatingHintRevealPasswordBox#��[ 5   "   $	��215��5    "   $��14(�6.   5!      G� 5"      -   5        $
 PasswordBox1��5"      
�������
�������$ Mật khẩu mới��5#   "   
 �����
 �����#��[ 5&   "   $	��215��5'   "   $��14(�6.   5(      G� 5)      -   5        $
 PasswordBox2��5)      
�������
�������$��	0 10 0 25q�6W   $$ Xác nhận lại mật khẩu��5*   "   
 �����
 �����#��[ 5-   "   $	��215��5.   "   $��14(�6.   5/      �� 50      -   5         ��Name$ btnsendcode��50       " MaterialDesignRaisedDarkButton#��[ 6*   $��35��51      $	��140��6!   
�������$��Đổi mật khẩu��6A   $��15(�6X   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 15��52      ��53      �� 54      .��55      � $ White��6'   $ 1Q�65   � 56      $ #8EB54C��6'   $ 0Q�67   57      59      5:      5;      5<      
   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      '    !Quan_Ly_Ban_Ve_May_Bay.Pages.Home   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      :d2http://schemas.microsoft.com/expression/blend/2008  5      6local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages  5        N� 
Background  �#f1f6e5 N� Title$
 Home��5
      .��5      � .+�5   
   �� ��5      �� 5       �� ImageSource$ /Images/bg2.png��6   5      � 5   
    � RowDefinitions 5      �� 5      $��6* �6    �� 5      $	��150 �6    �� 5      .+�5      � $��0��6   5      � 5      $��0,0,0,5q�6   $��1��6$    � ColumnDefinitions 5      �� 5      $	��10* �6'   �� 5      $
��180* �6'   �� 5      $
��185* �6'   �� 5       $
��185* �6'   �� 5!      $
��185* �6'   �� 5"      $
��185* �6'   �� 5#      $	��10* �6'   .+�5'      ��  �� CornerRadius$ 25��6   $��1��6,   ��5(      �� 5)      .��5*      �  � Color$ #bfe063��6+    � Offset$	 0.7Q�6;   � 5+      $ #a6d71b��6+   $ 0Q�6;   5,      ._�5.      �� .+�50      �� $��
20 25 20 0q�6$   $��50��68   $��Khởi hành��6D   
�������$��30(�6h   �� 51      -   5        $��cbbDeparture��51   #   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Thành phố��52   !   $��20(�53   !   $��Center=�6/   ���#3f7e32 &  "MaterialDesignFloatingHintComboBox#��[  54   !   $��	20 0 20 0q�55   !   57      58      59      �� 5<      $ 25��6   $��2��6,   $��10 0 0 0q�6<   ��5=      �� 5>      .��5?      � $ #bfe063��6+   $	 0.7Q�6;   � 5@      $ #a6d71b��6+   $ 0Q�6;   5A      ._�5C      �� .+�5D      �� $��
20 25 20 0q�6$   $��50��68   $��Điểm đến��6D   
�������$��30(�6g   �� 5E      -   5        $��cbbDestination��5E   #   $ Thành phố��5F   !   $��20(�5G   !   $��Center=�6/   ���#3f7e32#��[  5H   !   $��	20 0 20 0q�5I   !   5K      5L      5M      �� 5O      $ 25��6   $��3��6,   $��10 0 0 0q�6<   ��5P      �� 5Q      .��5R      � $ #bfe063��6+   $	 0.7Q�6;   � 5S      $ #a6d71b��6+   $ 0Q�6;   5T      ._�5V      �� .+�5X      �� $��
20 25 20 0q�6$   $��50��68   $��Ngày��6D   
�������$��30(�5Y   C   (  "System.Windows.Controls.DatePicker  5Z      -   5        $
��date��5^   )   $��20(�5Z   %   $��
20 20 20 0q�63   $ Chọn ngày��5[   )   ���#3f7e32$��Center=�5\   )     MaterialDesignDatePicker#��[ 5]   )   5^   )   5_      5b      �� 5e      $ 25��6   $��4��6,   $��10,0,0,0q�6<   ��5f      �� 5g      .��5h      � $ #bfe063��6+   $	 0.7Q�6;   � 5i      $ #a6d71b��6+   $ 0Q�6;   5j      ._�5l      �� .+�5m      �� $��
20 25 20 0q�6$   $��50��68   $��
Hạng vé��6D   
�������$��30(�6f   �� 5n      -   5        $��cbbClass��5n   #   $ Chọn hạng vé��5o   !   $��	20 0 20 0q�5p   !   $��20(�64   $��Center=�6B   ���#3f7e32#��[  5q   !   5s      5t      5u      �� 5w      $ 25��6   $��5��6,   $��10 0 0 0q�6<   ��5x      �� 5y      .��5z      � $ #bfe063��6+   $	 0.7Q�6;   � 5{      $ #a6d71b��6+   $ 0Q�6;   5|      ._�5~      �� .+�5      �� $��
20 25 20 0q�6$   $��50��68   $��Số lượng��6D   
�������$��30(�6g   �� 5�      -   5        $��cbbQuantity��5�   #   $��	20 0 20 0q�5�   !   $��20(�64   $��Center=�6B   ���#3f7e32#��[  5�   !   .@�6]   .@�5�      
Nhi Lê �� 	 �� 
IsSelected	 . .��5�   7   15�      �� 5�      .��6+   25�      �� 5�      .��6+   35�      �� 5�      .��6+   45�      �� 5�      .��6+   55�      �� 5�      .��6+   65�      �� 5�      .��6+   75�      �� 5�      .��6+   85�      �� 5�      .��6+   95�      �� 5�      .��6+   105�      �� 5�      .��6+   115�      �� 5�      .��6+   125�      �� 5�      .��6+   135�      �� 5�      .��6+   145�      �� 5�      .��6+   155�      5�      5�      5�      5�      � 5�      $��2��6   .+�5�      �� $ 25��6   $��50��6-   $	��200��69   ��5�      �� 5�      .��5�      � $ #bfe063��6+   $	 0.7Q�6;   � 5�      $ #a6d71b��6+   $ 0Q�6;   5�      ._�5�      �� -   5        $	��200��5�      $��50��6"   
������ 
������ $��Tìm kiếm��5�      
�������$��30(�6<   $	��Top=�6b   5�      5�      5�      5�      5�      5�      
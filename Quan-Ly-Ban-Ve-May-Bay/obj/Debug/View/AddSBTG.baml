   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullI)clr-namespace:Quan_Ly_Ban_Ve_May_Bay.ViewQuan_Ly_Ban_Ve_May_Bay.View  5   	   )    #Quan_Ly_Ban_Ve_May_Bay.View.AddSBTG   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;local)clr-namespace:Quan_Ly_Ban_Ve_May_Bay.View     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � WindowStyle$
  None=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � Title$ AddSBTG��5   	   $	��450��6   $	��600��6&   .��5      �  � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      .+�5   
   � $��0��6   .+�5      ]� .+�5      �� -   5         ��Name$ 	headertxt��5      $��Thêm sân bay trung gian��6/    �� TextAlignment$ Center=�6N   
���   ����#ADFF2F$��20(�6�   $��
Sitka Text)�6�   $��10q�6�   �� 5      -   5           MaterialDesignIconButton#��[  5      $��25��5      $��25��6    � ToolTip$ Close��5      $��Right=�5      $��0��5      .��5      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   
���   �6;   5      5      5      �� 5   
   $��1��6    �� Orientation$ Vertical=�6"   $
��0,50q�69   .+�5      �� $ 
Horizontal=�6   $��Center=�62   $��10q�6O   .+�5      �� $��Tên sân bay: ��6   $��Center=�61   $��0,0,10,0q�6M   �� 5       -   5        	 ��Name$	 SBTGcBox��5#      $	��300��5       $��18(�6'   $��Center=�65   $��20,0,0,0q�6P   
���   �$��1q�5!   +   ���#F5F5F55#      5$      �� 5%      $ 
Horizontal=�6   $��Center=�62   $��10q�6O   .+�5&      �� $��Thời gian dừng: ��6   $��0,0,10,0q�64   $��Center=�6F   �� 5'      -   5        
 ��Name$
 thoigiandungTxb��5'   Z   $	��300��6   $��30��6&   
���   �$��1q�6F   6Z   5(      �� 5*      $ 
Horizontal=�6   $��Center=�62   $��10q�6O   .+�5+      �� $��
Ghi chú: ��6   $��Center=�6-   $��0,0,10,0q�6I   �� 5,      -   5        $
 	ghichuTxb��5,   Z   $	��300��6   $��80��6&   
���   �$��1q�6F   $��40,0,0,0q�6m   5-      �� 5.      -   5         % !MaterialDesignOutlinedLightButton#��[ 5.      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 5��5/      $	��100��50      $��OK��6)   
���   �$��14(�6I   $
��0 30q�6W   ���#2E8B576z   51      53      54      
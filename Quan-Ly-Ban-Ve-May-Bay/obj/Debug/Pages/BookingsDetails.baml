   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.PagesQuan_Ly_Ban_Ve_May_Bay.Pages  5      1    +Quan_Ly_Ban_Ve_May_Bay.Pages.BookingsDetail   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      <local*clr-namespace:Quan_Ly_Ban_Ve_May_Bay.Pages     5        N� Title$  BookingsDetail��5	       N� 
Background �#f1f6e5.��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      6   .+�5   
   � .+�5      �� ���	#FF7D9F43$	��Top=�6-   $��
10,10,20,0q�6E    �� CornerRadius$ 20,20,20,20��6Y   $��1,1,4,4q�6t   ._�5      �� .+�5      �� $��
AIR TICKET��6    $��28(�62   $
��Bold"�6@   $	��150��6R   ���#4d9921$��0,5,0,0q�6s   �� 5      .+�5      �� $��CHUYẾN BAY��6$   $��16(�66   $
��Bold"�6D   ���#4d9921$
��Left=�6k   $��70,0,0,0q�6�   ]� 5      .+�5      �� $��Mã chuyến bay: ��6(   $��14(�6?   $��Normal"�6M   $
��Left=�6a   $��35,0,0,0q�6|   $��Bottom=�6�   $
��Auto��6�   �� 5      -   5         ��Name$ maCBTxt��5   (   $��16(�69   $��Normal"�6G   $
��Left=�6[   $��5,0,0,0q�6v   $
��Auto��6�   5      � 5       � ColumnDefinitions 5      �� 5   "   $	��370 �63   �� 5   "   .+�5      �� .+�5    "   ]� .+�5!   &   �� $��Cất cánh: ��60   $��14(�6B   $��Normal"�6P   $
��Left=�6d   $��35,0,0,0q�6   $��Bottom=�6�   �� 5"   &   -   5        $ tuTxt��5"   0   $��16(�6?   $��Normal"�6M   $��5,0,0,0q�6a   $
��Left=�6r   5#   #   ]� 5$   "   .+�5%   &   �� $��Hạ cánh: ��60   $��14(�6A   $��Normal"�6O   $
��Left=�6c   $��35,0,0,0q�6~   $��Bottom=�6�   �� 5&   &   -   5        $ denTxt��5&   0   $��16(�6@   $��Normal"�6N   $
��Left=�6b   $��5,0,0,0q�6}   5'   #   5(      �� 5)      $��1��6)   .+�5*   "   ]� .+�5+   &   �� $��Giờ bay: ��60   $��14(�6A   $��Normal"�6O   $
��Left=�6c   $��0,0,0,0q�6~   $��Bottom=�6�   �� 5,   &   -   5        $ 	gioBayTxt��5,   0   $��16(�6C   $��Normal"�6Q   $
��Left=�6e   $��5,0,0,0q�6�   $��23��6�   5-   #   ]� 5.   "   .+�5/   &   �� $��Thời gian bay: ��60   $��14(�6G   $��Normal"�6U   $
��Left=�6i   $��0,0,0,0q�6�   $��Bottom=�6�   �� 50   &   -   5        $ tgBayTxt��50   0   $��16(�6B   $��Normal"�6P   $
��Left=�6d   $��5,0,0,0q�6   51   #   52      53      55      �� 56      $��0,10,0,0q�6!   .+�57      �� $	��VÉ��6$   $��16(�6.   $
��Bold"�6<   ���#4d9921$
��Left=�6c   $��70,0,0,0q�6~   � 58       59      �� 5:   "   $	��370 �63   �� 5;   "   .+�5=      �� .+�5>   "   ]� .+�5?   &   �� $��	Mã vé: ��60   $��14(�6?   $��Normal"�6M   $
��Left=�6a   $��35,0,0,0q�6|   $��Bottom=�6�   �� 5@   &   -   5        $ maVeTxt��5@   0   $��16(�6A   $��Normal"�6O   $
��Left=�6c   $��5,0,0,0q�6~   5A   #   ]� 5B   "   .+�5C   &   �� $��Số ghế: ��60   $��14(�6@   $��Normal"�6N   $
��Left=�6b   $��35,0,0,0q�6}   $��Bottom=�6�   �� 5D   &   -   5        $ soGheTxt��5D   0   $��16(�6B   $��Normal"�6P   $��5,0,0,0q�6d   $
��Left=�6u   5E   #   5F      �� 5G      $��1��6)   .+�5H   "   ]� $��1��6,   .+�5I   &   �� $��
Giá vé: ��60   $��14(�6@   $��Normal"�6N   $
��Left=�6b   $��0,0,0,0q�6}   $��Bottom=�6�   �� 5J   &   -   5        $ giaVeTxt��5J   0   $��16(�6B   $��Normal"�6P   $
��Left=�6d   $��5,2,0,0q�6   5K   #   ]� 5L   "   $��1��6,   .+�5M   &   �� $��Hạng vé: ��60   $��14(�6A   $��Normal"�6O   $
��Left=�6c   $��0,0,0,0q�6~   $��Bottom=�6�   �� 5N   &   -	   5        $ tenHangVeTxt��5N   0   $��16(�6F   $��Normal"�6T   $
��Left=�6h   $��5,2,0,0q�6�   5O   #   5P      5Q      5R      �� 5S      $��0,10,0,0q�6!   .+�5T      �� $��HÀNH KHÁCH��6$   $��16(�66   $
��Bold"�6D   ���#4d9921$
��Left=�6k   $��70,0,0,0q�6�   � 5U       5V      �� 5W   "   $	��370 �63   �� 5X   "   .+�5Z      �� .+�5[   "   ]� .+�5\   &   �� $��
Họ tên:��60   $��14(�6?   $��Normal"�6M   $
��Left=�6a   $��35,0,0,0q�6|   $��Bottom=�6�   �� 5]   &   -
   5        $ tenHKTxt��5]   0   $��16(�6B   $��Normal"�6P   $��5,0,0,0q�6d   5^   #   ]� 5_   "   $
��Auto��6,   $
��Left=�69   .+�5`   &   �� $��CMND: ��60   $��14(�6>   $��Normal"�6L   $��35,0,0,0q�6`   $��Bottom=�6r   $
��Left=�6�   �� 5a   &   -   5        $ cmndTxt��5a   0   $��16(�6A   $��Normal"�6O   $��5,0,0,0q�6c   5b   #   5c      �� 5d      $��1��6)   .+�5e   "   ]� .+�5f   &   �� $��Mã hành khách:��60   $��14(�6F   $��Normal"�6T   $
��Left=�6h   $��0,0,0,0q�6�   $��Bottom=�6�   �� 5g   &   -   5        $ maHKTxt��5g   0   $��16(�6A   $��Normal"�6O   $
��Left=�6c   $��5,2,0,0q�6~   5h   #   ]� 5i   "   .+�5j   &   �� $��SĐT: ��60   $��14(�6=   $��Normal"�6K   $
��Left=�6_   $��0,0,0,0q�6z   $��Bottom=�6�   �� 5k   &   -   5        $ sdtTxt��5k   0   $��16(�6@   $��Normal"�6N   $
��Left=�6b   $��5,2,0,0q�6}   5l   #   5m      5n      5o      �� 5p      $��0,10,0,8q�6!   .+�5q      �� $��
HÓA ĐƠN��6$   $��16(�63   $
��Bold"�6A   ���#4d9921$
��Left=�6h   $��70,0,0,0q�6�   ]� 5r      .+�5s      �� $��Mã hóa đơn: ��6(   $��14(�6<   $��Normal"�6J   $
��Left=�6^   $��35,0,0,0q�6y   $��Bottom=�6�   �� 5t      -   5        $ maHDTxt��5t   (   $��16(�69   $��Normal"�6G   $
��Left=�6[   $��5,0,0,0q�6v   5u      � 5v       5w      �� 5x   "   $	��370 �63   �� 5y   "   .+�5{      �� .+�5|   "   ]� .+�5}   &   �� $��Ngày lập:��60   $��14(�6A   $��Normal"�6O   $
��Left=�6c   $��35,0,0,0q�6~   $��Bottom=�6�   �� 5~   &   -   5        $ 
ngayLapTxt��5~   0   $��16(�6D   $��Normal"�6R   $��5,0,0,0q�6f   $
��Auto��6w   $
��Left=�6�   5   #   ]� 5�   "   $��0,0,0,5q�6,   .+�5�   &   �� $��ID thanh toán:��60   $��14(�6F   $��Normal"�6T   $��35,0,0,0q�6h   $��Bottom=�6z   $
��Left=�6�   �� 5�   &   -   5        $ maTKTxt��5�   0   $��16(�6A   $��Normal"�6O   $��5,0,0,0q�6c   $
��Left=�6t   5�   #   5�      �� 5�      $��1��6)   .+�5�   "   ]� .+�5�   &   �� $��Số tiền:��60   $��14(�6@   $��Normal"�6N   $
��Left=�6b   $��0,0,0,0q�6}   $��Bottom=�6�   �� 5�   &   -   5        $ tienTxt��5�   0   $��16(�6A   $��Normal"�6O   $
��Left=�6c   $��5,2,0,0q�6~   5�   #   ]� 5�   "   .+�5�   &   �� $��Tình trạng:��60   $��14(�6C   $��Normal"�6Q   $
��Left=�6e   $��0,0,0,0q�6�   $��Bottom=�6�   �� 5�   &   -   5        $ tinhTrangTxt��5�   0   $��16(�6F   $��Normal"�6T   $
��Left=�6h   $��5,2,0,0q�6�   5�   #   5�      5�      5�      5�      5�      5�      ]� 5�   
   -   5         ]�Name$ dpPay_Update��5�   !   $��1��6   $y�Hidden=�67   .+�5�      �� -   5         ��Name$ statusPaymentTxt��5�      $9��3*Vui lòng thanh toán trước giờ bay 24 giờ.��60    �� TextWrapping$
 Wrap=�5�      	 �� AcceptsReturn	 . $��Normal"�6?   $	��250��6S   $��15,0,0,0q�6_   $
��Left=�6q   $	��Top=�6�   ��6�   Z� ��6�   Z� �� 5�      -   5        
 ��Name$
 btnPay��5�      $��THANH TOÁN��6%   $	��160��6:   ���	#FF64C32E$��40��6r   $��16(�6~   $
��Left=�6�   $��20,0,0,0q�6�   �� 5�      -   5        $
 	btnUpdate��5�      $��CẬP NHẬT��6(   $	��160��6;   ���	#FF64C32E$��40��6v   $��16(�6�   $
��Left=�6�   $��20,0,0,0q�6�   ���	#FF7070706�   5�      5�      5�      
   M S B A M L   `   `   `  ����Q  MQuan-Ly-Ban-Ve-May-Bay, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullY1clr-namespace:Quan_Ly_Ban_Ve_May_Bay.UserControls#Quan_Ly_Ban_Ve_May_Bay.UserControls  5      0    *Quan_Ly_Ban_Ve_May_Bay.UserControls.Sanbay   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Clocal1clr-namespace:Quan_Ly_Ban_Ve_May_Bay.UserControls     5      ���#F5F5F5.��5
      �   � RowDefinitions  5   
   �� 5      �� 5      $��40 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ SBTable��5       $��0��6      
IsReadOnly .  � 	Resources 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value*  $System.Windows.Controls.DataGridCell �� 	Resources��%3  '        '      �� 5      "  6   .�5      ��  � �� �#DDDDDD63   �� 5       � ��$ SemiBold"�63   �� 5       � ��$ 18(�61   �� 5       � ��$ 0,0,1,1q�68   �� 5       � ��
 �   �64   �� 5       � ��$ Center=�6C   5      �� 5      "  6   .�5      ��  � ��$ 0,0,1,1q�68   �� 5       � ��
 �   �64    5      ���� 5      '��       " ��6    .�5      ��  � ��$ Center=�6B   �� 5       � ��$ Center=�6D   5       5!      5"      5#         Columns 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn	   Header$		 STT��6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 62   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6>   �� *STT+  5(      $	 Mã sân bay��6%   $	
 200 69    6E   �� *maSB+  5)      $	 Tên sân bay��6%   $
 * 6:    6D   �� *tenSB+  5*      $	 Tỉnh��6%   $	
 200 63    6?   �� *tinh+5,      �� 5-   
    �� Orientation$ 
Horizontal=�6   $��1��6.   $��Right=�6;   .+�5.      �� -   5        $��Thêm��5.      ���#2E8B5769   �� 5/      -   5        $
��Xóa��5/      ���#2E8B5768   �� 50      -   5        $��Sửa��50      ���#2E8B5768   51      52      53      
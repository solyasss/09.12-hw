   M S B A M L   `   `   `  ����C  ?09.12 hw, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:_09._12_hw
_09._12_hw  5   	       _09._12_hw.main_window   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   *localclr-namespace:_09._12_hw     5   	     � Title$   Calculator girly girl 🎀��5   	   $	��400��61   $	��300��6>   $	��250��5   	   $	��400��6   .��5      �  � RowDefinitions 5   
   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$! previous_operations_textbox��5      $��0��5      $��10q�5      $��30��5      $��16(�5       �� 
IsReadOnly$
 True��5      $��Stretch=�5      $��Center=�5      
�������$��0q�5      �� 5   
   -   5        $ current_number_textbox��5      $��1��5      $��10q�5      $��40��5      $��24(�5      $
 True��5      $��Stretch=�5      $��Center=�5       
�������$��1q�5"      � 5$   
   $��2��6   $��10q�6    5%      �� 5&      $��* �6    �� 5'      $��* �6    �� 5(      $��* �6    �� 5)      $��* �6    �� 5*      $��* �6     � ColumnDefinitions 5,      �� 5-      $��* �6#   �� 5.      $��* �6#   �� 5/      $��* �6#   �� 50      $��* �6#    � 	Resources 53       �� 
TargetType �� Property �� Value��%�   '��       �� 54      " ��6   .�55      ��  � ��$ Stretch=�6<   �� 56       � ��$ Stretch=�6:   �� 57       � ��$ 2q�6/   58      59      .+�5;      �� -   5        $��C��5;      $��0��6!   $��0��6.   $��18(�6U   �� 5<      -   5        $��CE��5<      $��0��6"   $��1��6/   $��18(�6W   �� 5=      -   5        $��<��5=      $��0��6$   $��2��61   $��18(�6`   �� 5>      -   5        $��/��5>      $��0��6!   $��3��6.   $��18(�6\   
����i��6j   �� 5@      -   5        $��7��5@      $��1��6!   $��0��6.   $��18(�6Z   �� 5A      -   5        $��8��5A      $��1��6!   $��1��6.   $��18(�6Z   �� 5B      -	   5        $��9��5B      $��1��6!   $��2��6.   $��18(�6Z   �� 5C      -
   5        $��*��5C      $��1��6!   $��3��6.   $��18(�6\   
����i��6j   �� 5E      -   5        $��4��5E      $��2��6!   $��0��6.   $��18(�6Z   �� 5F      -   5        $��5��5F      $��2��6!   $��1��6.   $��18(�6Z   �� 5G      -   5        $��6��5G      $��2��6!   $��2��6.   $��18(�6Z   �� 5H      -   5        $��-��5H      $��2��6!   $��3��6.   $��18(�6\   
����i��6j   �� 5J      -   5        $��1��5J      $��3��6!   $��0��6.   $��18(�6Z   �� 5K      -   5        $��2��5K      $��3��6!   $��1��6.   $��18(�6Z   �� 5L      -   5        $��3��5L      $��3��6!   $��2��6.   $��18(�6Z   �� 5M      -   5        $��+��5M      $��3��6!   $��3��6.   $��18(�6\   
����i��6j   �� 5O      -   5        $��0��5O      $��4��6!   $��0��6.   $��2��6>   $��18(�6n   �� 5P      -   5        $��.��5P      $��4��6!   $��2��6.   $��18(�6W   �� 5Q      -   5        $��=��5Q      $��4��6!   $��3��6.   $��18(�6Z   
������6h   5R      5S      5T      
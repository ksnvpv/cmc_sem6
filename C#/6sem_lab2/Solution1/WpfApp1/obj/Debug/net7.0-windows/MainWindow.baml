   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5   	   B >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1 5   	      WpfApp1.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��850��6)    � 	Resources 5
      %  WpfApp1.InverseBooleanConverter   InverseBooleanConverter&   WpfApp1.RawDataToStringConverter  RawDataToStringConverter-  'WpfApp1.SplineDataItemTostringConverter # SplineDataItemTostringConverter   WpfApp1.TwoValuesConverter  TwoValuesConverter  key_template �� Path��%�   &	        &	      &	 &     &	 9     &	 L       5   
   6(     5   
   6)     5   
   60     5   
   6#   �� 5   
   .R�5      �� ��6   �� $ Method.Name�5      5       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5          WpfApp1.CustomCommands!   RawDataFromControlsCommand   Command# Z 5      5        5   
   -   5           RawDataFromFileCommand# Z 5      5        5   
   -   5        $ ApplicationCommands.Save��5      5      .��5      � -   5         �Name$ myGrid��5       � RowDefinitions 5   
   �� 5       $��1* �6   �� 5!      $��1* �6   �� 5"      $��1* �6   	 � ColumnDefinitions	 5$   
   �� 5%      $��2* �6   �� 5&      $��2* �6   �� 5'      $��2* �6   �� 5(      $��2* �6   �� 5)      $��2* �6   .+�5+   
   �� $��3��6   $��2��6%   $��10,10,10,10q�69   $��2��6N   .+�5,      � $��10,10,10,10q�6   .+�5-      #   LiveCharts.Wpf.CartesianChart  $��10,10,10,-400q�6I   &    LiveCharts.Wpf.Charts.Base.Chart
   Series
 6%   �� *SeriesCollection+   AxisX 5/      	   LiveCharts.Wpf.Axis	   	  Title$ Point��6#   50         AxisY 53      	  $ Value��6#   54      56      57      58      o� 59   
   $
��Left=�6   $��1,1,0,0q�6*   $��18��6;   $��88��6G   $	��Top=�6R   .@�5:      m� $
��File��6   .@�5;      m� $
��Save��6    m� Command$ ApplicationCommands.Save��6)   5<      m� 5=      $��Execute��6   $
��Left=�6(   .@�5>      m� $��RawData from Controls��6   # Z 6:   m� 5?      $��RawData from File��6   # Z 66   5@      5A      �� 5C   
   $��
10,10,10,0q�6   $	��Top=�6*   $��1��6B   $��42��6O   .+�5D      �� $
��Left=�6   $*��$Левый нонец отрезка��63   $��2q�6O   $	��Top=�6[   �� 5E      -   5         ��Name$ 	textBox_A��5E      $��Stretch=�6)   $��2q�6G   $	��Top=�6S   ��5F      �� *A+ �� ValidatesOnDataErrors$
 True�� �� NotifyOnValidationError$
 True�� �� UpdateSourceTrigger$ PropertyChanged=�5G      �� 5H   
   $��	10,0,10,0q�6   $��Center=�6)   $��1��6D   $��42��6Q   .+�5I      �� $
��Left=�6   $,��&Правый нонец отрезка��63   $��2q�6P   $	��Top=�6\   �� 5J      -   5        $ 	textBox_B��5J      $��Stretch=�6)   $��2q�6G   $	��Top=�6S   ��5K      �� *B+$
 True��$
 True��5L      �� 5M   
   $��	10,0,10,0q�6   $��Bottom=�6)   $��1��6D   $��42��6Q   .+�5N      �� $
��Left=�6   $*��$Число узлов сплайна��63   $��2q�6O   $	��Top=�6[   �� 5O      -   5        $ textBox_NumPoints��5O      $��Stretch=�61   $��2q�6O   $	��Top=�6[   ��5P      �� *	NumPoints+ �� Mode$ TwoWay=�$
 True��$
 True��5Q      �� 5R   
    �� Orientation$ Vertical=�6   $��Center=�6,   .+�5S      �� $
��Left=�6   $f��`Тип сетки, на которой заданы данные для интерполяции��63   $��10q�6p   $
��Wrap=�6}   $	��Top=�6�   	� 5T      -   5         	�Name$ uniformRadioButton��5T      $��Равномерная��66    	� 	GroupName$ rb��5U   >    d� 	IsChecked 6   �� *IsUniformGrid+6>   	� 5V      -	   5        $ nonUniformRadioButton��5V      $ ��Неравномерная��69   $ rb��5W   s    6   �� *IsUniformGrid+ �� 	Converter# [  6s   5X      �� 5_   
   $��2,0,2,0q�6   $��Center=�6'   $��2��6B   $��0��6O   $��68��6_   .+�5`      �� $
��Left=�6   $W��QФункция для RawData
Привязка к списку делегатов��63   $��2q�6r   $	��Top=�6~   �� 5a      $��Stretch=�6   $��2,5,20,5q�65   $	��Top=�6H   #��[ 5c      ��5b      �� *
listFRaw+ �� SelectedItem 5d      �� *fRaw+5e      �� 5f   
   $��2,2,2,0q�6   $	��Top=�6'   $��0��6?   $��1��6L   $��86��6\   .+�5g      �� $
��Left=�6   $r��lЧисло узлов сетки, на которых вычисляются значения сплайна��63   $��5q�6v   $
��Wrap=�6�   $	��Top=�6�   �� 5h      -
   5        $ textBox_NumSplines��5h      $��5q�62   ��6=   �� *
NumSplines+$
 True��$
 True��5i      �� 5j   
   $��2,0,2,0q�6   $��Bottom=�6'   $��0��6B   $��1��6O   $��86��6_   .+�5k      �� $
��Left=�6   $[��UЗначения второй производной на концах отрезка��63   $��5q�6i   $
��Wrap=�6u   $	��Top=�6�   �� 5l      -   5        $ SecondDerivativeTextBox��5l      $��5q�67   .��6B   ��5m      `� 5n       `� 	Converter# [ 6#   .1�5o      �� $	 lsd�6"   �� 5p      $	 rsd�6"   5q      .��5r       5s      5t      �� 5u   
   $��2,0,2,0q�6   $��Center=�6'   $��1��6B   $��1��6O   $	��122��6_   .+�5v      �� $
��Left=�6   $C��=Вывод информации: узел и значение��63   $��5q�6]   $
��Wrap=�6h   $	��Top=�6}   �� 5w      -   5         ��Name$ ListsRawData��5w      $��Center=�6,   $��80��6G   ��6T   �� *	rawData+# [ 5x      �� 5y   
   $��2,0,2,0q�6   $��Center=�6'   $��2��6B   $��1��6O   $	��154��6_   .+�5z      �� $
��Left=�6   $����Вывод информации: узел, значение сплайна, первая производная и вторая производная��63   $��5q�6�   $
��Wrap=�6�   $	��Top=�6�   �� 5{      -   5        $ ListsSplineData��5{      $��Center=�6/   $��80��6J   ��6V   �� $  splineData.SplineDataItems���5|      �� 5}      .R�5~      �� $ 
Horizontal=�6%   .+�5      �� $��0,0,5,0q�6]   ��6(   �� $ Point� �� StringFormat$ {0:F2}��6]   �� 5�      $��0,0,5,0q�6c   ��6(   �� $ SplineValue�$ {0:F2}��6c   �� 5�      $��0,0,5,0q�6g   ��6(   �� $ FirstDerivative�$ {0:F2}��6g   �� 5�      $��0,0,5,0q�6h   ��6(   �� $ SecondDerivative�$ {0:F2}��6h   5�      5�      5�      5�      �� 5�   
   $��2,0,2,0q�6   $��Center=�6'   $��2��6B   .+�5�      �� $
��Left=�6   $;��5Вывод информации c листбокса:��63   $��10q�6Y   $
��Wrap=�6e   $	��Top=�6z   �� 5�      -   5         ��Name$ SelectedItemTextBlock��5�      $
��Left=�67   $��10q�6R   $
��Wrap=�6^   $��Center=�6r   ��5�      ��  �� ElementName$ ListsSplineData��$ SelectedItem�# [ 5�      �� 5�   
   $��2,0,2,0q�6   $��Center=�6'   $��1��6B   $��2��6O   $	��110��6_   .+�5�      �� $
��Left=�6   $���zЗначения интеграла от интерполяционного сплайна по всему отрезку:��63   $��10q�6}   $
��Wrap=�6�   $	��Top=�6�   �� 5�      -   5        $ integralTextBlock��5�      $��5q�5�   ;   ��6   �� $ splineData.Integral�6;   5�      �� 5�   
   $��2��6   $��2��6"   $��1��62   $��1��6G   $��Center=�6X   .+�5�      �� -   5        $��
SaveButton��5�   $   $
��Save��6   $	��Top=�66   $��10q�6N   $��ApplicationCommands.Save��6Z   �� 5�      -   5        $��RawDataFromControlsButton��5�   5   $��RawData from Controls��6   $��Center=�6V   $��10q�6q   #��Z 6}   �� 5�      -   5        $��RawDataFromFileButton��5�   1   $��RawData from File��6   $��Bottom=�6N   $��10q�6i   #��Z 6v   5�      5�      5�      
   M S B A M L   `   `   `  ����C  ?MVVMDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MVVMDemo.ViewsMVVMDemo.Views  5      9!clr-namespace:MVVMDemo.ViewModelsMVVMDemo.ViewModels  5	   	   /clr-namespace:MVVMDemo.ViewsMVVMDemo.Views  5
      9!clr-namespace:MVVMDemo.ViewModelsMVVMDemo.ViewModels  5      1clr-namespace:MVVMDemo.ModelsMVVMDemo.Models  5          MVVMDemo.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      .viewsclr-namespace:MVVMDemo.Views     5      8
viewmodels!clr-namespace:MVVMDemo.ViewModels     5	   	   .localclr-namespace:MVVMDemo.Views     5
      8
viewModels!clr-namespace:MVVMDemo.ViewModels     5      .dataclr-namespace:MVVMDemo.Models     5      $	��500��5   )   ��65   ��   �� Path$  HeightMainView� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5      '   !MVVMDemo.ViewModels.MainViewModel  5   
   6%    � 	Resources 5       �� DataType.   (MVVMDemo.ViewModels.SchoolClassViewModel$   MVVMDemo.Views.SchoolClassView*   $MVVMDemo.ViewModels.StudentViewModel    MVVMDemo.Views.StudentView��%�   (��       5      *, +)(�� 2     5      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      5      .��5      � $��30,5,0,0q�6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��Students��6   $
��Left=�6X   $��0,0,0,0q�6s   $	��Top=�6�   $��74��6�   ��6(   �� *ChangeInStudentViewCommand+6�   �� 5       $��Classes��6   $
��Left=�6[   $��10,0,0,0q�6v   $	��Top=�6�   $��74��6�   ��6'   �� * ChangeInSchoolClassViewCommand+6�   5!      �� 5#   
   $ 
Horizontal=�6   .+�5$          MVVMDemo.Views.ToolBarView  -   5          Name$ ToolBarView��5$       $��0,40,0,0q�67   5%      �� 5'   
   $ 
Horizontal=�6   .+�5)      �� $��	0,75,0,50q�6>   $	��400��6Q   ��6   �� *SelectedView+6Q   5*      5,      5.      
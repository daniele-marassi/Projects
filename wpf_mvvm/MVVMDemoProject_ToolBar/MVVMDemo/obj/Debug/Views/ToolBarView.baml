   M S B A M L   `   `   `  ����e  aTelerik.Windows.Controls, Version=2017.3.913.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7uPclr-namespace:Telerik.Windows.Controls.Chromes;assembly=Telerik.Windows.Controls Telerik.Windows.Controls.Chromes  5      C ?MVVMDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:MVVMDemo.TemplateSelectorsMVVMDemo.TemplateSelectors 5      9!clr-namespace:MVVMDemo.ViewModelsMVVMDemo.ViewModels 5	      /clr-namespace:MVVMDemo.ViewsMVVMDemo.Views 5
          MVVMDemo.Views.ToolBarView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      a ]Telerik.Windows.Data, Version=2017.3.913.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2017.3.913.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ctelerik1http://schemas.telerik.com/2008/xaml/presentation     5      itelerikChromesPclr-namespace:Telerik.Windows.Controls.Chromes;assembly=Telerik.Windows.Controls     5      CtemplateSelector(clr-namespace:MVVMDemo.TemplateSelectors     5      6
viewModels!clr-namespace:MVVMDemo.ViewModels     5	      ,localclr-namespace:MVVMDemo.Views     5
        � DataContext  5      '  !MVVMDemo.ViewModels.MainViewModel  5   
   6%    � 	Resources 5      -  'MVVMDemo.Views.ImageTypeToPathConverter   ImageTypeToPathConverter0   *Telerik.Windows.Controls.Office_BlackTheme 	 Theme  ToolBarButton �� 
TargetType �� Property �� Value �� 
TargetType'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard	 �� 
TargetName
 �� TargetProperty	 W� To g� Duration3   -Telerik.Windows.Controls.Chromes.ButtonChrome   RenderNormal+   %Telerik.Windows.Controls.StyleManager   Theme   RenderEnabled J� IsMouseOver   RenderMouseOver   RenderPressed J� 	IsFocused   RenderFocused   CornerRadius �� RelativeSource �� Path ��Name  ToolBarTextBox �Name R� KeyTime R� Value ��Name �� CornerRadius ��Name  ToolBarSeparator2	  ,Telerik.Windows.Controls.RadToolBarSeparator  ButtonTemplate �� Orientation  �� 	Converter  TextBoxTemplate! �� Mode  SeparatorTemplate8
  2MVVMDemo.TemplateSelectors.ToolBarTemplateSelector  ToolBarTemplateSelector" 
  ButtonTemplate# 
  TextBoxTemplate$ 
  SeparatorTemplate��%�  &	        &	      &	 &     7  &	     7  &	 =    &	 �    7  7   &	 �    7  &	     7  &	 E    7  7  7    5   
   6)     5   
   6$   �� 5   
   " ��6&   .�5      ��  � ��$ 1q�6'   �� 5       � ��$ 2q�6(   �� 5       � ��$ 1q�60   �� 5       � ��
 ���� 6,   �� 5       � ��
 ���� 6+   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � �� 5      �� 5       " ��6&   .R�5!      �  5"        5#   "   CommonStates��. 5$   &     
Normal��62     5%   &   	MouseOver��62     5&   &   Pressed��62     5'   &   Disabled��. 5(   *   �� .��5)   .   W� $	 Content��6>   $
 Opacity�5*   1   $	 0.5X�6U   $ 0D�6^   5+   +   5,   '   5-   #     5.   "   FocusStates��. 5/   &     Focused��62     50   &   	Unfocused��62   51   #   .+�54         .  8   # z{�59   !   # z 5:   !   # z��5;   !   # z 6M   $ 1��5<   !   ��55   !   ��  �� *TemplatedParent+$ 
Background���56   !   ��  �� *TemplatedParent+$ BorderBrush���57   !   ��  �� *TemplatedParent+$ BorderThickness�5<   !   �� 5?      #��z��6%   ._�5@   "   �� $ Content��63   #��z��6D   #��z��5A   %   #��z��5B   %   #��z��5C   %   #��z��5D   %   5E      5F      5H      5J      5K      �� 5L   
   " ��6'   .�5M      ��  � ��$ 11(�6)   �� 5N       � ��
 �   �6+   �� 5O       � ��$ Normal$�6*   �� 5P       � ��$ Normal"�6+   �� 5Q       � ��$ Center=�62   �� 5R       � ��$	 3 2q�6'   �� 5S       � �� �	#FFFFFFFF6,   �� 5T       � ��$ 1q�60   �� 5U       � ��$ Stretch=�6;   �� 5V       � ��$ Center=�69   �� 5W       � ��$ 2q�6(   �� 5X       � ��$ 22��6*   �� 5Y       � �� �	#FFFFFFFF6+   �� 5Z       � �� 5[      �� 5\      " ��6&   .R�5]      � $ RootElement��6    5^        5_   "   CommonStates��. 5`   &     
Normal��62     5a   &   	MouseOver��. 5b   *   �� .��5c   .   T� $	 OuterBorder��5d      $
 BorderBrush�5e      ..�5f   2   i� $ 0��6I   $ 	#FFFFC92B��5g      5h   /   5i   +   5j   '     5k   &   Focused��. 5l   *   �� .��5m   .   T� $	 OuterBorder��5n      $
 BorderBrush�5o      ..�5p   2   i� $ 0��6I   $ 	#FFFFC92B��5q      5r   /   5s   +   5t   '     5u   &   Disabled��. 5v   *   �� .��5w   .   T� $	 DisabledVisual��5x      $
 
Visibility�5y      ..�5z   2   i� $ 0��6I   $ Visible��6U   5{   /   T� 5|   .   $	 ContentElement��5}      $
 Opacity�5~      ..�5   2   i� $ 0��6I   $	 0.5��5�      5�   /   5�   +   5�   '     5�   &   ReadOnly��. 5�   *   �� .��5�   .   T� $	 OuterBorder��5�      $
 BorderBrush�5�      ..�5�   2   i� $ 0��6I   $ 	#FF8D8D8D��6U   5�   /   5�   +   5�   '   5�   #     5�   "   FocusStates��. 5�   &     	Unfocused��62   5�   #   .+�5�      �� $ OuterBorder��6%   #��z��6:   #��z��5�   	   #��z��5�   	   $ 0��5�   	   ._�5�   "   �� $ ContentElement��5�   %   8   #��z��5�   
   #��z��5�   
   #��z��5�   
   #��z��5�   
   5�   %   5�      �� 5�      $ DisabledVisual��6%   $y�	Collapsed=�6=   $��1q�6T   $ 0��5�   	   ���	#FF9898985�   	   5�      5�      5�      5�      �� 5�   
   " 	 6)   .�5�      ��  � �� �	#80FFFFFF6+   �� 5�       � �� �	#500000006,   �� 5�       � ��$ 2q�6'   �� 5�       � �� 5�      �� 5�      " 	 6&   .R�5�      � $��2��6   $��2��6,   .+�5�      �� $��1,1,0,0q�6(   #��z��69   �� 5�      $��0,0,1,1q�6(   #��z��69   5�      5�      5�      5�      �� 5�   
   .R�5�      �� 8��  ��6   �� *	MyCommand+��5�      �� 5�      $ 
Horizontal=�6!   .+�5�      �� $��0 0 2 0q�6s   ��6    �� $ Image�8   6s   �� 5�      ��6$   �� *Text+5�      5�      5�      �� 5�   
   .R�5�      �� 8��  $	��100��6>   ��6J   �� *Text+$! TwoWay=�5�      �� 5�   
   .R�5�      	  8��  6*   5�      
  5�   
   8"   8#  8$  5�   (   5�      .��5�      -  'Telerik.Windows.Controls.RadToolBarTray  %   IsLocked% .  {�. & J� IsManipulationEnabled& . .@�5�   
   )  #Telerik.Windows.Controls.RadToolBar  '   Band$' 0��6   (   	BandIndex$( 0��6&   ) J� 	AllowDrop) . & . % .  .   (Telerik.Windows.DragDrop.DragDropManager*   	AllowDrag* . +   TouchDragTrigger$+ 
TapAndHold=�6�   ,   AllowCapturedDrag, . {�. #��[ 6I  $	��150��6�  $��30��6�  ��6+  �� *Items+6�  5�      5�      
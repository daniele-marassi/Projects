﻿' The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

''' <summary>
''' An empty page that can be used on its own or navigated to within a Frame.
''' </summary>
Public NotInheritable Class MainPage
    Inherits Page
	Public Property Response As String
		Get
			Return ctlResponse.Text
		End Get
		Set(value As String)
			ctlResponse.Text = value
		End Set
	End Property
End Class

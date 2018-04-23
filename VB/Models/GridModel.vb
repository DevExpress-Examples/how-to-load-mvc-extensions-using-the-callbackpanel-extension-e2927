Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

Namespace Example.Models
	Public Class GridModel
		Private privateId As Int32
		Public Property Id() As Int32
			Get
				Return privateId
			End Get
			Set(ByVal value As Int32)
				privateId = value
			End Set
		End Property
		Private privateName As String
		Public Property Name() As String
			Get
				Return privateName
			End Get
			Set(ByVal value As String)
				privateName = value
			End Set
		End Property

		Public Shared Function GetModels() As List(Of GridModel)
			Return New List(Of GridModel) (New GridModel() {New GridModel() With {.Id = 1, .Name = "Mike"}, New GridModel() With {.Id = 2, .Name = "Serge"}, New GridModel() With {.Id = 3, .Name = "Kate"}, New GridModel() With {.Id = 4, .Name = "Vest"}, New GridModel() With {.Id = 4, .Name = "Marion"}})
		End Function
	End Class
End Namespace
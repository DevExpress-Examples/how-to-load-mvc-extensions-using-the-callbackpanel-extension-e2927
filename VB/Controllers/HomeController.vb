Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.Mvc

Namespace Example.Controllers
	<HandleError> _
	Public Class HomeController
		Inherits Controller
		Public Function Index() As ActionResult
			ViewData("Message") = "Welcome to DevExpress Extensions for ASP.NET MVC!"
			ViewData("ShowGrid") = False
			Return View()
		End Function

		Public Function CallbackPanelPartial() As ActionResult
			If (Not String.IsNullOrEmpty(Request.Params("ShowGrid"))) Then
				ViewData("ShowGrid") = Convert.ToBoolean(Request.Params("ShowGrid"))
			End If

			Return PartialView("CallbackPartial")
		End Function

		Public Function GridViewPartial() As ActionResult

			Return PartialView("GridPartial")
		End Function
	End Class
End Namespace

<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%
	Html.DevExpress().GridView(Function(settings) AnonymousMethod1(settings)).Bind(Example.Models.GridModel.GetModels()).Render()
%>

private bool AnonymousMethod1(object settings)
{
	settings.Name = "grid";
	settings.CallbackRouteValues = New { Controller = "Home", Action = "GridViewPartial" };
	settings.Columns.Add("Id").Width = Unit.Pixel(30);
	settings.Columns.Add("Name");
	settings.KeyFieldName = "Id";
	settings.Width = Unit.Pixel(200);
	Return True;
}
<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%
	Html.DevExpress().CallbackPanel(Function(settings) AnonymousMethod1(settings)).Render()
%>

private bool AnonymousMethod1(object settings)
{
	settings.Name = "cbp";
	settings.CallbackRouteValues = New { Controller = "Home", Action = "CallbackPanelPartial" };
	settings.SetContent(() =>
	{
		if ((Boolean)ViewData["ShowGrid"])
			Html.RenderPartial("GridPartial");
			else
				ViewContext.Writer.Write("<strong>Push the button</strong>");
	}
   );
	settings.ClientSideEvents.BeginCallback = "cbp_OnBeginCallback";
	Return True;
}
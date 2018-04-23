<%@ Page Language="vb" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	How to load MVC extensions using the CallbackPanel extension
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<script type="text/javascript">
		var showGrid = false;

		function btn_OnClick(s, e) {
			showGrid = true;
			cbp.PerformCallback();
		}

		function cbp_OnBeginCallback(s, e) {
			e.customArgs["ShowGrid"] = showGrid;
			showGrid = false;
		}
	</script>
	<h2>
<%
		  :
%>
		  </h2>
	<p>
		To learn more about DevExpress Extensions for ASP.NET MVC visit <a href="http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/"
			title="ASP.NET MVC Website">http://devexpress.com/Products/NET/Controls/ASP-NET-MVC/</a>.
	</p>
	<div style="border: 1px solid gray; padding: 5px; width: 200px">
<%
		  ViewData("Message") Html.RenderPartial("CallbackPartial")
%>
	</div>
	<%
		Html.DevExpress().Button(Function(settings) AnonymousMethod1(settings)).Render()
	%>
</asp:Content>


private bool AnonymousMethod1(object settings)
{
	settings.Name = "btn";
	settings.UseSubmitBehavior = False;
	settings.Text = "Show grid";
	settings.ClientSideEvents.Click = "btn_OnClick";
	Return True;
}
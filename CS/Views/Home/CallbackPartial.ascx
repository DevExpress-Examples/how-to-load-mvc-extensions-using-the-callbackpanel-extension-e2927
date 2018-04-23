﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%
    Html.DevExpress().CallbackPanel(settings => {
        settings.Name = "cbp";
        settings.CallbackRouteValues = new { Controller = "Home", Action = "CallbackPanelPartial" };
        settings.SetContent(() => {
            if ((Boolean)ViewData["ShowGrid"])
                Html.RenderPartial("GridPartial");
            else
                ViewContext.Writer.Write("<strong>Push the button</strong>");
        });
        settings.ClientSideEvents.BeginCallback = "cbp_OnBeginCallback";
    }).Render();
%>
﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%
    Html.DevExpress().GridView(settings => {
        settings.Name = "grid";
        settings.CallbackRouteValues = new { Controller = "Home", Action = "GridViewPartial" };

        settings.Columns.Add("Id").Width = Unit.Pixel(30);
        settings.Columns.Add("Name");

        settings.KeyFieldName = "Id";

        settings.Width = Unit.Pixel(200);
    }).Bind(Example.Models.GridModel.GetModels())
    .Render();
%>
<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    Html.DevExpress().GridView(
        Function(settings)
            settings.Name = "grid"
            settings.CallbackRouteValues = New With {Key .Controller = "Home", Key .Action = "GridViewPartial"}

            settings.Columns.Add("Id").Width = Unit.Pixel(30)
            settings.Columns.Add("Name")

            settings.KeyFieldName = "Id"

            settings.Width = Unit.Pixel(200)
        End Function
      ).Bind(Example.Models.GridModel.GetModels()).Render()
%>
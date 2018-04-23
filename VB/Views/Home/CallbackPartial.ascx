<%@ Control Language="vb" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    Html.DevExpress().CallbackPanel(
        Function(settings)
            settings.Name = "cbp"
            settings.CallbackRouteValues = New With {Key .Controller = "Home", Key .Action = "CallbackPanelPartial"}
            settings.SetContent(Function()
                                    If (Convert.ToBoolean(ViewData("ShowGrid"))) Then
                                        Html.RenderPartial("GridPartial")
                                    Else
                                        ViewContext.Writer.Write("<strong>Push the button</strong>")
                                    End If
                                End Function
              )
            settings.ClientSideEvents.BeginCallback = "cbp_OnBeginCallback"
        End Function
      ).Render()
%>
    @Html.DevExpress().CallbackPanel(Sub(settings)
        settings.Name = "cbp"
        settings.CallbackRouteValues = new With { .Controller = "Home", .Action = "CallbackPanelPartial" }
        settings.SetContent(Sub() 
            If CType(ViewData("ShowGrid"), Boolean) Then
				Html.RenderPartial("GridPartial")
			Else
				ViewContext.Writer.Write("<strong>Push the button</strong>")
			End If
        End Sub)
        settings.ClientSideEvents.BeginCallback = "cbp_OnBeginCallback"
    End Sub).GetHtml()

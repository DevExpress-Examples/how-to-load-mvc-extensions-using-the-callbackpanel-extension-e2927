   @Html.DevExpress().GridView(Sub(settings)
        settings.Name = "grid"
        settings.CallbackRouteValues = new With { .Controller = "Home", .Action = "GridViewPartial" }

        settings.Columns.Add("Id").Width = Unit.Pixel(30)
        settings.Columns.Add("Name")

        settings.KeyFieldName = "Id"

        settings.Width = Unit.Pixel(200)
    End Sub).Bind(Example.Models.GridModel.GetModels()).GetHtml()

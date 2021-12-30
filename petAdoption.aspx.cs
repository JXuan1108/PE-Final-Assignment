using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PE_Final_Assignment
{
    public partial class petShopPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void petAdoptionDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (petAdoptionDdl.SelectedValue == "All")
            {
                petAdoptionDl.DataSourceID = "SqlDataSourceAll";
                petAdoptionDl.DataBind();
            }

            if (petAdoptionDdl.SelectedValue == "Dog")
            {
                petAdoptionDl.DataSourceID = "SqlDataSourceDog";
                petAdoptionDl.DataBind();
            }

            if (petAdoptionDdl.SelectedValue == "Cat")
            {
                petAdoptionDl.DataSourceID = "SqlDataSourceCat";
                petAdoptionDl.DataBind();
            }

            if (petAdoptionDdl.SelectedValue == "Other")
            {
                petAdoptionDl.DataSourceID = "SqlDataSourceOther";
                petAdoptionDl.DataBind();
            }
        }

        protected void petAdoptionDl_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewDetail")
            {
                Session["petDetail"] = e.CommandArgument.ToString();
                Response.Redirect("~/petAdoptionDetails.aspx");
            }
        }
    }
}
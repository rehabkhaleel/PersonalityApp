using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void ShowResult(object sender, ImageClickEventArgs e)
    {
        ImageButton clickedImage = sender as ImageButton;
        string selected = clickedImage.CommandArgument;

        string result = "";
        switch (selected)
        {
            case "mountain":
                result = "You value peace and solitude.";
                break;
            case "ocean":
                result = "You're open and adaptable.";
                break;
            case "city":
                result = "You're energetic and sociable.";
                break;
            case "forest":
                result = "You're calm and nature-loving.";
                break;
        }

        Response.Write("<script>alert('" + result + "');</script>");
    }
}

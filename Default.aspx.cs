using System;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string tenantID = txtTenantID.Text;
        if (tenantID.Length == 36 && System.Text.RegularExpressions.Regex.IsMatch(tenantID, "^[0-9a-fA-F-]{36}$"))
        {
            string redirectUrl = $"https://login.microsoftonline.com/{tenantID}/adminconsent?client_id=7e41bed4-bfd4-4620-8bf9-127e7d53c0c1&redirect_uri=https://www.microsoft.com/es-es/";
            Response.Redirect(redirectUrl);
        }
    }
}

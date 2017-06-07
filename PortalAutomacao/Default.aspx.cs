using System;
using System.Web.UI;

namespace PortalAutomacao
{
    public partial class _Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValidacao_Click(object sender, EventArgs e)
        {
            //O Contexto é montado na master page!
            Session.Add("Contexto", "Validacao");
            Response.Redirect("Validacao_InserirRegistros.aspx");
        }

        protected void btnSefip_Click(object sender, EventArgs e)
        {
            Session.Add("Contexto", "Sefip");
           Response.Redirect("SEFIP_SemMovimento.aspx");
        }



    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data;

namespace PortalAutomacao
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NavigationMenu.Visible = false;

            PreparaAdmin();

            PreparaContexto();

        }

        protected void PreparaAdmin()
        {
            Negocios p = new Negocios();
            DataTable tabela = new DataTable();
            try
            {
                tabela = p.LoadUsuario(System.Web.HttpContext.Current.User.Identity.Name);

            }
            catch (Exception ee)
            {
                string caca = ee.Message.ToString();
            }
            finally
            {
                p = null;
            }


            if (tabela.Rows.Count == 0)
            {
                Session.Add("Admin", 0);
            }
            else
            {
                Session.Add("Admin", 1);
            }


            int admin = Int32.Parse(Session["Admin"].ToString());

            if (admin == 0)
            {
                if (NavigationMenu != null)
                {
                    NavigationMenu.Items.Remove(NavigationMenu.FindItem("Usuários"));
                }
            }
        }

        protected void PreparaContexto()
        {
            

            if (Session["Contexto"] != null)
            {
                NavigationMenu.Visible = true;
                if (Session["Contexto"].ToString() == "Sefip")
                {
                    NavigationMenu.Items.Remove(NavigationMenu.FindItem("Inserir Registros"));
                    NavigationMenu.Items.Remove(NavigationMenu.FindItem("Listar Registros"));
                    lblTitle.Text = "Portal Automação - Lista de processamento - SEFIP";
                }
                if (Session["Contexto"].ToString() == "Validacao")
                {
                    NavigationMenu.Items.Remove(NavigationMenu.FindItem("SEFIP Sem Movimento"));
                    NavigationMenu.Items.Remove(NavigationMenu.FindItem("SEFIP Retificadora"));
                    lblTitle.Text = "Portal Automação - Lista de processamento - Validação Eletrônica";
                }
            }
        }
    }
}
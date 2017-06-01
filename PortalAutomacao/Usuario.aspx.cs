using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data;

namespace TresCamadasAdoNet
{
    public partial class Usuario : System.Web.UI.Page
    {
        DataTable tabela = null;
        SiteMaster SiteMaster = new SiteMaster();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();

        }
        /// <summary>
        /// Disparado quando o botão Cancel for clicado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CancelRecord(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindGrid();
        }
        /// <summary>
        /// Disparado quando o botão Edit for clicado
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void EditRecord(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        private DataTable BindGrid()
        {
            Negocios p = new Negocios();

            try
            {
                tabela = p.LoadUsuario("0");
                GridView1.DataSource = tabela;
                GridView1.DataBind();
            }
            catch (Exception ee)
            {
                lblMensagem.Text = ee.Message.ToString();
            }
            finally
            {
                p = null;
            }

            return tabela;
        }

        protected void DeleteRecord(object sender, GridViewDeleteEventArgs e)
        {
            int personID = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

            // instancia uma BAL
            Negocios pBAL = new Negocios();
            try
            {
                pBAL.DeleteUsuario(personID);

                lblMensagem.Text = "Registro deletado com sucesso.";
            }
            catch (Exception ee)
            {
                lblMensagem.Text = ee.Message.ToString();
            }
            finally
            {
                pBAL = null;
            }

            GridView1.EditIndex = -1;
            // atualiza a lista
            BindGrid();
        }

        protected void UpdateRecord(object sender, GridViewUpdateEventArgs e)
        {
            int codigo = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = GridView1.Rows[e.RowIndex];

            //TextBox tBase = (TextBox)row.FindControl("txtBase");
            DropDownList ddlAdmin = (DropDownList)row.FindControl("ddlAdmin");
            
            // instancia uma BAL
            Negocios pBAL = new Negocios();

            try
            {
                pBAL.UpdateUsuario(codigo, int.Parse(ddlAdmin.SelectedItem.Value));
                lblMensagem.Text = "Registro atualizado com sucesso.";

            }
            catch (Exception ee)
            {
                lblMensagem.Text = ee.Message.ToString();
            }
            finally
            {
                pBAL = null;
            }

            GridView1.EditIndex = -1;
            // atualiza a lista
            BindGrid();
        }

        /// <summary>
        /// Fires when page links are clicked
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ChangePage(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            // atualiza a lista
            BindGrid();
        }

        /// <summary>
        /// Pega o GridView DataSource
        /// </summary>
        private DataTable GridDataSource()
        {
            Negocios p = new Negocios();
            DataTable tabela = new DataTable();
            try
            {
                tabela = p.LoadUsuario("0");

            }
            catch (Exception ee)
            {
                lblMensagem.Text = ee.Message.ToString();
            }
            finally
            {
                p = null;
            }

            return tabela;
        }
    }
}
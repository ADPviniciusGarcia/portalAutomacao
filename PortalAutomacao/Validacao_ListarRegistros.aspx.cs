using System;
using System.Web.UI.WebControls;
using BAL;
using System.Data;

namespace TresCamadasAdoNet
{
    public partial class ListarRegistros : System.Web.UI.Page
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
                tabela = p.Load(System.Web.HttpContext.Current.User.Identity.Name, Int32.Parse(Session["Admin"].ToString()));
                Session.Add("Tabela", tabela);
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
            GridViewRow row = GridView1.Rows[e.RowIndex];
            
            
            Label lStatus = (Label)row.FindControl("lblStatus");

            if (lStatus.Text != "")
            {
                lblMensagem.Text = "Não é possível apagar este registro porque o status é " + lStatus.Text;
                return;
            }  

            int personID = Int32.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());

            // instancia uma BAL
            Negocios pBAL = new Negocios();
            try
            {
                pBAL.Delete(personID);

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

            DropDownList ddlBase = (DropDownList)row.FindControl("ddlBase");
            TextBox tCliente = (TextBox)row.FindControl("txtCliente");
            TextBox tEmpresa = (TextBox)row.FindControl("txtEmpresa");
            DropDownList tMes = (DropDownList)row.FindControl("ddlMEs");
            TextBox tAno = (TextBox)row.FindControl("txtAno");
            DropDownList ddlTipoDeFolha = (DropDownList)row.FindControl("ddlTipoDeFolha");
            TextBox tCodigosDeFolha = (TextBox)row.FindControl("txtCodigosDeFolha");
            TextBox tPrioridade = (TextBox)row.FindControl("txtPrioridade");
            Label lStatus = (Label)row.FindControl("lblStatus");

            if (lStatus.Text != "")
            {
                lblMensagem.Text = "Não é possível editar este registro porque o status é " + lStatus.Text;
                return;
            }          

            // instancia uma BAL
            Negocios pBAL = new Negocios();

            try
            {
                pBAL.Update(codigo, int.Parse(ddlBase.SelectedItem.Text), int.Parse(tCliente.Text), tEmpresa.Text, tMes.Text, int.Parse(tAno.Text), ddlTipoDeFolha.SelectedItem.Text, tCodigosDeFolha.Text, int.Parse(tPrioridade.Text));
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
                tabela = p.Load(System.Web.HttpContext.Current.User.Identity.Name, Int32.Parse(Session["Admin"].ToString()));
               
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

        protected void CancelaEdicao(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            //Retrieve the table from the session object.
            DataTable dt = Session["Tabela"] as DataTable;

            if (dt != null)
            {

                //Sort the data.
                dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        private string GetSortDirection(string column)
        {

            // By default, set the sort direction to ascending.
            string sortDirection = "ASC";

            // Retrieve the last column that was sorted.
            string sortExpression = ViewState["SortExpression"] as string;

            if (sortExpression != null)
            {
                // Check if the same column is being sorted.
                // Otherwise, the default value can be returned.
                if (sortExpression == column)
                {
                    string lastDirection = ViewState["SortDirection"] as string;
                    if ((lastDirection != null) && (lastDirection == "ASC"))
                    {
                        sortDirection = "DESC";
                    }
                }
            }

            // Save new values in ViewState.
            ViewState["SortDirection"] = sortDirection;
            ViewState["SortExpression"] = column;

            return sortDirection;
        }
    }
}
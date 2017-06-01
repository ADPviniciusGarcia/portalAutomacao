using System;
using System.Web.UI;
using BAL;

namespace TresCamadasAdoNet
{
    public partial class _Validacao_InserirRegistros : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IncluirRegistros(object sender, EventArgs e)
        {
            //valida pagina
            if (!Page.IsValid)
                return;

            int intResult = 0;
            // Para pagina valida continua a inserir
            // instancia um objeto BAL
            Negocios pBAL = new Negocios();
            // define os valores que serão incluídos
            //int Codigo = Int32.Parse(txtCodigo.Text);
            //int Base = Int32.Parse(txtBase.Text);
            int Base = Int32.Parse(ddlBase.SelectedItem.Text);
            int Cliente = Int32.Parse(txtCliente.Text);
            string Empresa = txtEmpresa.Text;
            string Mes = ddlMes.SelectedItem.Text;
            int Ano = Int32.Parse(txtAno.Text);
            string TipoDeFolha = ddlTipoDeFolha.SelectedItem.Text;
            string CodigosDeFolha = txtCodigosDeFolha.Text;
            int Prioridade = Int32.Parse(txtPrioridade.Text);
            //string DataCriacao = txtDataCriacao.Text;
            string Usuario = System.Web.HttpContext.Current.User.Identity.Name;

            try
            {
                intResult = pBAL.Insert(Base, Cliente, Empresa, Mes, Ano, TipoDeFolha, CodigosDeFolha, Prioridade, Usuario);
                if (intResult > 0)
                    lblMessage.Text = "Novo registro incluído com sucesso.";
                else
                    lblMessage.Text = "Nome [<b>" + txtCliente.Text + "</b>] já existe, tente outro nome";

            }
            catch (Exception ee)
            {
                lblMessage.Text = ee.Message.ToString();
            }
            finally
            {
                pBAL = null;
            }
        }

    }
}

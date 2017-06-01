using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace DAL
{
    public class AcessoDados
    {

        /// <summary>
        /// inserir registros no banco de dados
        /// </summary>
        /// <param name="Base"></param>
        /// <param name="Cliente"></param>
        /// <param name="Empresa"></param>
        /// <param name="Mes"></param>
        /// <param name="Ano"></param>
        /// <param name="TipoDeFolha"></param>
        /// <param name="CodigosDeFolha"></param>
        /// <param name="Prioridade"></param>
        /// <param name="DataCriacao"></param>
        /// <param name="Usuario"></param>
        /// <returns></returns>
        /// 
        string connStr = ConfigurationManager.ConnectionStrings["EscolaSqlServer"].ConnectionString;

        public int Insert(int Base, int Cliente, string Empresa, string Mes, int Ano, string TipoDeFolha, string CodigosDeFolha, int Prioridade, string Usuario)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand dCmd = new SqlCommand("InserirDados", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dCmd.Parameters.AddWithValue("@Base", Base);
                dCmd.Parameters.AddWithValue("@Cliente", Cliente);
                dCmd.Parameters.AddWithValue("@Empresa", Empresa);
                dCmd.Parameters.AddWithValue("@Mes", Mes);
                dCmd.Parameters.AddWithValue("@Ano", Ano);
                dCmd.Parameters.AddWithValue("@TipoDeFolha", TipoDeFolha);
                dCmd.Parameters.AddWithValue("@CodigosDeFolha", CodigosDeFolha);
                dCmd.Parameters.AddWithValue("@Prioridade", Prioridade);
                dCmd.Parameters.AddWithValue("@Usuario", Usuario);
                dCmd.ExecuteNonQuery();
                //return dCmd.ExecuteNonQuery(); //tratar posibilidade de erro com if

                return 1;


            }
            catch
            {
                throw;
            }
            finally
            {
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }


        /// <summary>
        /// atualiza registro do banco de dados
        /// </summary>
        /// <param name="Base"></param>
        /// <param name="Cliente"></param>
        /// <param name="Empresa"></param>
        /// <param name="Mes"></param>
        /// <param name="Ano"></param>
        /// <param name="TipoDeFolha"></param>
        /// <param name="CodigosDeFolha"></param>
        /// <param name="Prioridade"></param>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        public int Update(int Codigo,int Base, int Cliente, string Empresa, string Mes, int Ano, string TipoDeFolha, string CodigosDeFolha, int Prioridade)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand dCmd = new SqlCommand("AtualizarDados", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dCmd.Parameters.AddWithValue("@Base", Base);
                dCmd.Parameters.AddWithValue("@Cliente", Cliente);
                dCmd.Parameters.AddWithValue("@Empresa", Empresa);
                dCmd.Parameters.AddWithValue("@Mes", Mes);
                dCmd.Parameters.AddWithValue("@Ano", Ano);
                dCmd.Parameters.AddWithValue("@TipoDeFolha", TipoDeFolha);
                dCmd.Parameters.AddWithValue("@CodigosDeFolha", CodigosDeFolha);
                dCmd.Parameters.AddWithValue("@Prioridade", Prioridade);
                dCmd.Parameters.AddWithValue("@Codigo", Codigo);
                return dCmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// atualiza registro do banco de dados
        /// </summary>
        /// <param name="Admin"></param>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        public int UpdateUsuario(int Codigo, int Admin)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand dCmd = new SqlCommand("AtualizarDadosUsuario", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dCmd.Parameters.AddWithValue("@Codigo", Codigo);
                dCmd.Parameters.AddWithValue("@Admin", Admin);
                return dCmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }
        /// <summary>
        /// carrega todos os registros do banco de dados
        /// </summary>
        /// <returns></returns>
        public DataTable Load(string Usuario, int Admin)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataAdapter dAd = new SqlDataAdapter("CarregarDados", conn);
            dAd.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet dSet = new DataSet();
            try
            {
                dAd.SelectCommand.Parameters.AddWithValue("@Usuario", Usuario);
                dAd.SelectCommand.Parameters.AddWithValue("@Admin", Admin);
                dAd.Fill(dSet, "Contatos");
                return dSet.Tables["Contatos"];
            }
            catch
            {
                throw;
            }
            finally
            {
                dSet.Dispose();
                dAd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// carrega todos os registros do banco de dados
        /// </summary>
        /// <returns></returns>
        public DataTable LoadUsuario(string Nome)
        {
            SqlConnection conn = new SqlConnection(connStr);
            SqlDataAdapter dAd = new SqlDataAdapter("CarregarDadosUsuario", conn);
            dAd.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataSet dSet = new DataSet();
            try
            {
                dAd.SelectCommand.Parameters.AddWithValue("@Nome", Nome);
                dAd.Fill(dSet, "Usuario");
                return dSet.Tables["Usuario"];
            }
            catch
            {
                throw;
            }
            finally
            {
                dSet.Dispose();
                dAd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// Exclui o registro do banco de dados
        /// </summary>
        /// <param name="codigo"></param>
        /// <returns></returns>
        public int Delete(int codigo)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand dCmd = new SqlCommand("DeletarDados", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dCmd.Parameters.AddWithValue("@Codigo", codigo);
                return dCmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }

        /// <summary>
        /// Exclui o registro do banco de dados
        /// </summary>
        /// <param name="codigo"></param>
        /// <returns></returns>
        public int DeleteUsuario(int codigo)
        {
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            SqlCommand dCmd = new SqlCommand("DeletarDadosUsuario", conn);
            dCmd.CommandType = CommandType.StoredProcedure;
            try
            {
                dCmd.Parameters.AddWithValue("@Codigo", codigo);
                return dCmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                dCmd.Dispose();
                conn.Close();
                conn.Dispose();
            }
        }
    }
}

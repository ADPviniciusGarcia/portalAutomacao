using System.Data;
using DAL;

namespace BAL
{
    public class Negocios
    {

        /// <summary>
        /// inserir registro no banco de dados
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
        public int Insert(int Base, int Cliente, string Empresa, string Mes, int Ano, string TipoDeFolha, string CodigosDeFolha, int Prioridade, string Usuario)
        {
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.Insert(Base, Cliente, Empresa, Mes, Ano, TipoDeFolha, CodigosDeFolha, Prioridade,Usuario);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }

        /// <summary>
        /// atualizar registro do banco de dados
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
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.Update(Codigo,Base, Cliente, Empresa, Mes, Ano, TipoDeFolha, CodigosDeFolha , Prioridade);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }

        /// <summary>
        /// atualizar registro do banco de dados
        /// </summary>
        /// <param name="Admin"></param>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        public int UpdateUsuario(int Codigo, int Admin)
        {
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.UpdateUsuario(Codigo, Admin);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }

        /// <summary>
        /// carregar todos os registros
        /// </summary>
        /// <returns></returns>
        public DataTable Load(string Usuario, int Admin)
        {
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.Load(Usuario,Admin);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }


        /// <summary>
        /// carregar todos os registros
        /// </summary>
        /// <returns></returns>
        public DataTable LoadUsuario(string Nome)
        {
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.LoadUsuario(Nome);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }

        /// <summary>
        /// Deletar registro do banco de dados
        /// </summary>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        public int Delete(int Codigo)
        {
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.Delete(Codigo);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }

        /// <summary>
        /// Deletar registro do banco de dados
        /// </summary>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        public int DeleteUsuario(int Codigo)
        {
            AcessoDados pDAL = new AcessoDados();
            try
            {
                return pDAL.DeleteUsuario(Codigo);
            }
            catch
            {
                throw;
            }
            finally
            {
                pDAL = null;
            }
        }
    }
}

<%@ Page Title="Inserir Registros" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Validacao_InserirRegistros.aspx.cs" Inherits="PortalAutomacao._Validacao_InserirRegistros" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Incluir Registros
    </h2>
    <p>
        <%--<asp:HyperLink ID="hplkListarRegistros" runat="server" 
            NavigateUrl="~/ListarRegistros.aspx">Listar Registros</asp:HyperLink>--%>
    </p>
    <asp:Label ID="lblMessage" runat="Server" ForeColor="red" EnableViewState="False"></asp:Label>
    <table style="border: 2px solid #cccccc;">
        <tr style="background-color: #666666; color: White;">
            <th colspan="3">Incluir Registros</th>
        </tr>
        <tr>
            <td>Base:
            </td>
            <td>
                <asp:DropDownList ID="ddlBase" runat="server">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Cliente:
            </td>
            <td>
                <asp:TextBox ID="txtCliente" runat="server" Columns="4" Width="60px" MaxLength="7"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="req3" runat="server" Text="*" ControlToValidate="txtCliente"
                    Display="dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="comp1" runat="server" Text="somente inteiros" ControlToValidate="txtCliente"
                    Operator="datatypecheck" Type="integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Empresa:
            </td>
            <td>
                <asp:TextBox ID="txtEmpresa" runat="Server" Columns="4" Width="60px" MaxLength="7"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="Server" Text="*" ControlToValidate="txtEmpresa"
                    Display="dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" Text="somente inteiros" ControlToValidate="txtEmpresa"
                    Operator="datatypecheck" Type="integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Mes:
            </td>
            <td>
                <asp:DropDownList ID="ddlMes" runat="server">
                    <asp:ListItem Value="Janeiro"></asp:ListItem>
                    <asp:ListItem>Fevereiro</asp:ListItem>
                    <asp:ListItem>Março</asp:ListItem>
                    <asp:ListItem>Abril</asp:ListItem>
                    <asp:ListItem>Maio</asp:ListItem>
                    <asp:ListItem>Junho</asp:ListItem>
                    <asp:ListItem>Julho</asp:ListItem>
                    <asp:ListItem>Agosto</asp:ListItem>
                    <asp:ListItem>Setembro</asp:ListItem>
                    <asp:ListItem>Outubro</asp:ListItem>
                    <asp:ListItem>Novembro</asp:ListItem>
                    <asp:ListItem>Dezembro</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>Ano:
            </td>
            <td>
                <asp:TextBox ID="txtAno" runat="Server" Columns="4" Width="60px" MaxLength="4"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="Server" Text="*" ControlToValidate="txtAno"
                    Display="dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="Server" Text="Somente Inteiros" ControlToValidate="txtAno"
                    Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Ano inválido. Necessário 4 números" ControlToValidate="txtAno"
                    MaximumValue="2030" MinimumValue="2010"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Tipo De Folha:
            </td>
            <td>
                <asp:DropDownList ID="ddlTipoDeFolha" runat="server">
                    <asp:ListItem>ADIDET - ADIANTAMENTO DÉCIMO TERCEIRO</asp:ListItem>
                    <asp:ListItem>ADIPAR - ADIANTAMENTO PARCIAL</asp:ListItem>
                    <asp:ListItem>ADIQUI - ADIANTAMENTO QUINZENAL</asp:ListItem>
                    <asp:ListItem>DECTER - DÉCIMO TERCEIRO</asp:ListItem>
                    <asp:ListItem>DISLUC - DISTRIBUIÇÃO DE LUCROS</asp:ListItem>
                    <asp:ListItem>FÉRIAS - FÉRIAS</asp:ListItem>
                    <asp:ListItem>MENCOM - FOLHA MENSAL COMPLEMENTAR</asp:ListItem>
                    <asp:ListItem>MENSAL - MENSAL</asp:ListItem>
                    <asp:ListItem>RESCIS - RESCISÃO</asp:ListItem>
                    <asp:ListItem>RESCOM - RESCISÃO COMPLEMENTAR</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>Codigos De Folha:
            </td>
            <td>
                <asp:TextBox ID="txtCodigosDeFolha" runat="Server" Columns="4" Width="400px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="Server" Text="*" ControlToValidate="txtCodigosDeFolha"
                    Display="dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Prioridade:
            </td>
            <td>
                <asp:TextBox ID="txtPrioridade" runat="Server" Columns="4" Width="60px" MaxLength="2"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="Server" Text="*" ControlToValidate="txtPrioridade"
                    Display="dynamic"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Prioridade inválida. Digite um número de 0 a 99" ControlToValidate="txtPrioridade"
                    MaximumValue="99" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Enviar" OnClick="IncluirRegistros"
                    Width="80px" />
            </td>
        </tr>
    </table>
</asp:Content>


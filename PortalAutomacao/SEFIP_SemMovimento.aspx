<%@ Page Title="SEFIP Sem Movimento" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SEFIP_SemMovimento.aspx.cs" Inherits="TresCamadasAdoNet.SEFIP_Sem_Movimento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>SEFIP - Sem Movimento
    </h2>

    <asp:Label ID="lblMessage" runat="Server" ForeColor="red" EnableViewState="False"></asp:Label>
    <table style="border: 2px solid #cccccc;">
        <tr style="background-color: #666666; color: White;">
            <th colspan="3">Incluir Registros</th>
        </tr>
        <tr>
            <td>Caminho*:
            </td>
            <td>
                <asp:TextBox ID="txtCaminho" runat="server" Columns="4" Width="500px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ControlToValidate="txtCaminho"
                    Display="dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Interface de Destino 1*:
            </td>
            <td>
                <asp:TextBox ID="txtInterface1" runat="server" Columns="4" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" ControlToValidate="txtInterface1"
                    Display="dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Interface de Destino 2:
            </td>
            <td>
                <asp:TextBox ID="txtInterface2" runat="server" Columns="4" Width="200px"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>Base de transmissão - Cidade*:
            </td>
            <td>
                <asp:TextBox ID="txtBaseCidade" runat="server" Columns="4" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="req3" runat="server" Text="*" ControlToValidate="txtBaseCidade"
                    Display="dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Base de transmissão - UF*:
            </td>
            <td>
                <asp:DropDownList ID="ddlBaseUF" runat="server">
                    <asp:ListItem Value="AC"></asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                    <asp:ListItem>DF</asp:ListItem>
                    <asp:ListItem>ES</asp:ListItem>
                    <asp:ListItem>GO</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MG</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>PB</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>PI</asp:ListItem>
                    <asp:ListItem>PR</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                    <asp:ListItem>RN</asp:ListItem>
                    <asp:ListItem>RO</asp:ListItem>
                    <asp:ListItem>RR</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SE</asp:ListItem>
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>TO</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>


    </table>
</asp:Content>

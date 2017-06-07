<%@ Page Title="Inserir Registros" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="PortalAutomacao._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Início
    </h2>
    <p>
        Selecione qual processo deseja acessar:
    </p>
    <asp:Button ID="btnValidacao" runat="server" Text="Validação Eletrônica" OnClick="btnValidacao_Click" />
    <asp:Button ID="btnSefip" runat="server" Text="SEFIP Sem Mov. e Retif." OnClick="btnSefip_Click"  />
</asp:Content>

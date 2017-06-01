<%@ Page Title="Gestao de Usuarios" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Usuario.aspx.cs" Inherits="TresCamadasAdoNet.Usuario" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Gestão de Usuários
    </h2>
    <p>
        <%--
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx"
            Style="font-family: Calibri">Listar Registros</asp:HyperLink>--%>
    </p>
      <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC0000"
            Style="font-family: Aharoni">Aqui são exibidos todos os usuários com permissão de Administrador. Administradores são aqueles que podem visualizar e editar os processamentos de todos os usuários.</asp:Label>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            DataKeyNames="codigo" AutoGenerateEditButton="True" AutoGenerateColumns="False"
            OnRowEditing="EditRecord" OnRowUpdating="UpdateRecord" OnRowCancelingEdit="CancelRecord"
            OnRowDeleting="DeleteRecord" PageSize="5" Font-Names="Trebuchet MS"
            Height="233px" CssClass="gridView">
            <FooterStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <EditRowStyle BackColor="#99b3e6" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White"/>
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="ID" />

               <asp:TemplateField HeaderText="Nome" SortExpression="Nome">
                    <ItemTemplate>
                        <%# Eval("Nome") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Admin" SortExpression="Admin">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlAdmin" runat="server" SelectedValue='<%# Eval("Admin") %>' Enabled="false">
                            <asp:ListItem Value="1">SIM</asp:ListItem>
                            <asp:ListItem Value="0">NÃO</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlAdmin" runat="server" SelectedValue='<%# Eval("Admin") %>'>
                            <asp:ListItem Value="1">SIM</asp:ListItem>
                            <asp:ListItem Value="0">NÃO</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Deletar?">
                    <ItemTemplate>
                        <span onclick="return confirm('Deseja realmente Excluir este item ?')">
                            <asp:LinkButton ID="lnBD" runat="server" Text="Deletar" CommandName="Delete"></asp:LinkButton>
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    <asp:Label ID="lblMensagem" runat="server" Font-Bold="True" ForeColor="#CC0000"
            Style="font-family: Aharoni"></asp:Label>

</asp:Content>



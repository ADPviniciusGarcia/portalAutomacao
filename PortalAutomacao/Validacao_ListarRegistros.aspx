<%@ Page Title="Listar Registros" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Validacao_ListarRegistros.aspx.cs" Inherits="TresCamadasAdoNet.ListarRegistros" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Listar Registros
    </h2>
    <p>
        <%--
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx"
            Style="font-family: Calibri">Listar Registros</asp:HyperLink>--%>
    </p>
    <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            DataKeyNames="codigo" AutoGenerateEditButton="True" AutoGenerateColumns="False"
            OnRowEditing="EditRecord" OnRowUpdating="UpdateRecord" OnRowCancelingEdit="CancelRecord"
            OnRowDeleting="DeleteRecord" PageSize="5" Font-Names="Trebuchet MS"
            Height="233px" Width="100%" CssClass="gridView" AllowSorting="True" OnSorting="GridView1_Sorting" EmptyDataText="Não há nenhum registro disponível.">
            <FooterStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <EditRowStyle BackColor="#99b3e6" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" Visible="false" />

                <asp:TemplateField HeaderText="Base" SortExpression="Base">
                    <ItemTemplate>
                        <%# Eval("Base") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlBase" runat="server" SelectedValue='<%# Eval("Base") %>'>
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
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cliente" SortExpression="Cliente">
                    <ItemTemplate>
                        <%# Eval("Cliente") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCliente" runat="Server" Text='<%# Eval("Cliente") %>'
                            Height="19px" Width="56px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Empresa" SortExpression="Empresa">
                    <ItemTemplate>
                        <%# Eval("Empresa") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmpresa" runat="Server" Text='<%# Eval("Empresa") %>'
                            Height="19px" Width="56px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mês" SortExpression="Mes">
                    <ItemTemplate>
                        <%# Eval("Mes") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlMes" runat="server" SelectedValue='<%# Eval("Mes") %>' Width="60px">
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
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ano" SortExpression="Ano">
                    <ItemTemplate>
                        <%# Eval("Ano") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAno" runat="Server" Text='<%# Eval("Ano") %>'
                            Height="19px" Width="56px" MaxLength="4"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tipo de Folha" SortExpression="TipoDeFolha">
                    <ItemTemplate>
                        <%# Eval("TipoDeFolha") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlTipoDeFolha" runat="server" SelectedValue='<%# Eval("TipoDeFolha") %>'>
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
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Códigos de Folha" SortExpression="CodigosDeFolha">
                    <ItemTemplate>
                        <asp:Label ID="txtCodigosDeFolha" runat="Server" Text='<%# Eval("CodigosDeFolha") %>'
                            Height="19px" Style="word-wrap: normal; word-break: break-all;"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle CssClass="col" />
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCodigosDeFolha" runat="Server" ItemStyle-Width="500px" Text='<%# Eval("CodigosDeFolha") %>'
                            Height="19px" Width="500px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Prioridade" SortExpression="Mes">
                    <ItemTemplate>
                        <%# Eval("Prioridade") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPrioridade" runat="Server" Text='<%# Eval("Prioridade") %>'
                            Height="19px" Width="56px"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status" SortExpression="Status">
                    <ItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mensagem" SortExpression="Mensagem">
                    <ItemTemplate>
                        <%# Eval("Mensagem") %>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <%# Eval("Mensagem") %>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data de Criação" SortExpression="DataCriacao">
                    <ItemTemplate>
                        <%# Eval("DataCriacao") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Data de Conclusão" SortExpression="DataConclusao">
                    <ItemTemplate>
                        <%# Eval("DataConclusao") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Usuário Criador" SortExpression="Usuario">
                    <ItemTemplate>
                        <%# Eval("Usuario") %>
                    </ItemTemplate>
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
        <br />
        <asp:Label ID="lblMensagem" runat="server" Font-Bold="True" ForeColor="#CC0000"
            Style="font-family: Aharoni"></asp:Label>
    </div>

</asp:Content>



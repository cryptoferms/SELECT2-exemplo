<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComboBoxPagina.aspx.cs" Inherits="SELECT2_exemplo.ComboBoxPagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SELECT 2</title>
    <%-- Referênciando os scripts que foram instalados via nuget --%>
    <script src="Scripts/select2.js"></script>
    <script src="Scripts/jquery-1.7.js"></script>
    <script src="Scripts/jquery-1.7.min.js"></script>
    <script src="Scripts/select2.min.js"></script>
    <link href="Content/css/select2.css" rel="stylesheet" />
    <link href="Content/css/select2.min.css" rel="stylesheet" />
    <script type="text/javascript">
        //chamando o objeto SELECT2
        $(document).ready(function () {
            $('.ddl').select2({
                /*Propriedades a serem usadas caso seja necessário no select2

                ##### ESCONDE A BARRA DE PESQUISA #########
                -----------------------
                minimumResultsForSearch: Infinity    
                --------------------
                ##### DEFINIR UM COMPRIMENTO MAXIMO DE CARACTERES PARA PESQUISA ######
                ----------------------
                maximumInputLenght: 10 -- aqui é definino o tanto de carecteres que será digitado para exibir a pesquisa ex 10

                #### MAIS OPÇÕES DE PROPRIEDADES, e para entender como funciona a busca  https://select2.org/searchin

                */
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Combobox para pesquisa e listagem</h2>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl" DataTextField="Nome" DataValueField="id"></asp:DropDownList>
        </div>
    </form>
</body>
</html>

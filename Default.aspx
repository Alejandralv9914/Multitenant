<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Introducir Tenant ID</title>
    <script type="text/javascript">
        function validateTenantID() {
            var tenantID = document.getElementById('<%= txtTenantID.ClientID %>').value;
            if (tenantID.length !== 36) {
                alert('El Tenant ID debe tener 36 caracteres.');
                return false;
            }
            var regex = /^[0-9a-fA-F-]{36}$/;
            if (!regex.test(tenantID)) {
                alert('El Tenant ID no es válido. Debe tener el formato de un GUID.');
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="https://www.prodwaregroup.com/wp-content/uploads/2021/05/prodware-gray-1850px.png" alt="Prodware Logo" />
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Introduce tu Tenant ID:"></asp:Label>
            <asp:TextBox ID="txtTenantID" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Enviar" OnClientClick="return validateTenantID();" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>

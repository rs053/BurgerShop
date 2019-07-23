<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BurgerShop.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                body{ background-image:url("https://cdn.wallpapersafari.com/8/42/S7NR8H.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="XX-Large" Text="Burger Store"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Impact" Font-Size="XX-Large" Text="Orders" ForeColor="White"></asp:Label>
        <asp:GridView ID="GridMenu" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Impact" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:Label ID="Label3" runat="server" Font-Names="Impact" Font-Size="XX-Large" Text="Menu" ForeColor="White"></asp:Label>
        <asp:GridView ID="GridOrder" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" Font-Names="Impact" Font-Size="Large" ForeColor="Black" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:Label ID="Label2" runat="server" Font-Names="Impact" Font-Size="XX-Large" Text="Take Order Here" ForeColor="White"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Impact" Font-Size="Large" Text="ID" ForeColor="White"></asp:Label>
        <asp:TextBox ID="burgerid" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Impact" Font-Size="Large" Text="Name" ForeColor="White"></asp:Label>
        <asp:TextBox ID="BurgerName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Names="Impact" Font-Size="Large" Text="Order1" ForeColor="White"></asp:Label>
        <asp:TextBox ID="Order1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Font-Names="Impact" Font-Size="Large" Text="Order2" ForeColor="White"></asp:Label>
        <asp:TextBox ID="Order2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Font-Names="Impact" Font-Size="Large" Text="Order3" ForeColor="White"></asp:Label>
        <asp:TextBox ID="Order3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Font-Names="Impact" Font-Size="Large" Text="Mobile" ForeColor="White"></asp:Label>
        <asp:TextBox ID="OrderMobile" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Ordertake" runat="server" Height="31px" Text="Take Order" Width="79px" OnClick="Ordertake_Click" />
&nbsp;
        <asp:Button ID="orderupdate" runat="server" Height="31px" Text="Change Order" Width="96px" OnClick="orderupdate_Click" />
&nbsp;&nbsp;
        <asp:Button ID="ordercomplete" runat="server" Height="31px" Text="Complete Order" Width="106px" OnClick="ordercomplete_Click" />
        <br />
        <br />
    </form>
</body>
</html>

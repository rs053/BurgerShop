using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BurgerShop
{
    public partial class Home : System.Web.UI.Page
       // there are the menus  
    {
        Burger objburger = new Burger();
        BurgerShopEntities Burgerconn = new BurgerShopEntities();
        int orderup;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            GridMenu.DataSource = Burgerconn.Menus.ToList();
            GridMenu.DataBind();
            GridOrder.DataSource = Burgerconn.Orders.ToList();
            GridOrder.DataBind();
            

        }

        protected void Ordertake_Click(object sender, EventArgs e)
        {
            objburger.TAkeorder(BurgerName.Text, Order1.Text, Order2.Text, Order3.Text, OrderMobile.Text);
            GridMenu.DataSource = Burgerconn.Menus.ToList();
            GridMenu.DataBind();
            GridOrder.DataSource = Burgerconn.Orders.ToList();
            GridOrder.DataBind();
            orderup = 0;
        }

        protected void orderupdate_Click(object sender, EventArgs e)
        {
            objburger.OrderUpdate(Convert.ToInt32(burgerid.Text), BurgerName.Text, Order1.Text, Order2.Text, Order3.Text, OrderMobile.Text);
            GridMenu.DataSource = Burgerconn.Menus.ToList();
            GridMenu.DataBind();
            GridOrder.DataSource = Burgerconn.Orders.ToList();
            GridOrder.DataBind();
            orderup = 0;
        }

        protected void ordercomplete_Click(object sender, EventArgs e)
        {
            objburger.Orderemove(Convert.ToInt32(burgerid.Text));
            GridMenu.DataSource = Burgerconn.Menus.ToList();
            GridMenu.DataBind();
            GridOrder.DataSource = Burgerconn.Orders.ToList();
            GridOrder.DataBind();
            orderup = 0;

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            burgerid .Text = GridOrder.SelectedRow.Cells[1].Text;
            BurgerName.Text = GridOrder.SelectedRow.Cells[2].Text;
            Order1.Text = GridOrder.SelectedRow.Cells[3].Text;
            Order2.Text = GridOrder.SelectedRow.Cells[4].Text;
            Order3.Text = GridOrder.SelectedRow.Cells[5].Text;
            OrderMobile.Text = GridOrder.SelectedRow.Cells[6].Text;
            orderup = 0;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (orderup == 0)
            { 
             Order1 .Text = GridMenu.SelectedRow.Cells[2].Text;
                
            }
            else if (orderup == 1)
            {
                Order2.Text = GridMenu.SelectedRow.Cells[2].Text;
                
            }
            else if (orderup == 2)
            {
                Order3.Text = GridMenu.SelectedRow.Cells[2].Text;
                
            }
            orderup++;
        }
    }
}
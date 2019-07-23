using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BurgerShop
{
    public partial class SignIn : System.Web.UI.Page
    {
        Burger objburger = new Burger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // there is a login button
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            String id = burgerlogin .Text;

            BurgerShopEntities db = new BurgerShopEntities();
            string query = (from c in db.Sign_In 
                            where c.Username == id && c.Password == burgerpass .Text
                            select c.Username).FirstOrDefault();
            if (query != null)
            {
                Response.Redirect("Home.aspx");
            }
            else
                Response.Write("Check your password");

        }

        protected void loginregister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
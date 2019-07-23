using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BurgerShop
{
    public partial class Register1 : System.Web.UI.Page
    {
        Burger objburger = new Burger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void loginregister_Click(object sender, EventArgs e)
        {
            objburger.Signup(burgerpass.Text, burgerlogin.Text);
            objburger.SignUpuser(NameBurger.Text);
            Response.Redirect("SignIn.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BurgerShop
{
    public class Burger
    {// here you have register 
        BurgerShopEntities burgerconn = new BurgerShopEntities();
        Register Registerobj = new Register();
        Sign_In  signupobj = new Sign_In();
        Order orderobj = new Order();
        public void SignUpuser(string Adminname)
        {
            Registerobj.Name = Adminname;
           

            burgerconn.Registers.Add(Registerobj);
            burgerconn.SaveChanges();



        }
        public void Signup(string Password, string Username)
        {
            //here you give user name and password
            signupobj.Username = Username;
            signupobj.Password = Password;

            burgerconn.Sign_In.Add(signupobj);
            burgerconn.SaveChanges();

        } // here the order number 
        public void TAkeorder(string Name, string order1, string order2, string order3, string Mobile)
        {
            orderobj.Name= Name;
            orderobj.order1 = order1;
            orderobj.order2 = order2;
            orderobj.order3 = order3;
            orderobj.Mobile = Mobile;
           

            burgerconn.Orders.Add(orderobj);
            burgerconn.SaveChanges();




        }
        public void Orderemove(int ID)
        {

            using (BurgerShopEntities context = new BurgerShopEntities())
            {


                Order  obj = context.Orders.First(x => x.ID == ID);
                context.Orders.Remove(obj);
                context.SaveChanges();


            }

        }
        public void OrderUpdate(int ID, string Name, string order1, string order2, string order3, string Mobile)
        {
            using (var db = new BurgerShopEntities())
            {// from here you can change the order
                var orderobj = db.Orders.SingleOrDefault(b => b.ID == ID);
                if (orderobj != null)
                {
                    orderobj.Name = Name;
                    orderobj.order1 = order1;
                    orderobj.order2 = order2;
                    orderobj.order3 = order3;
                    orderobj.Mobile = Mobile;

                    db.SaveChanges();

                }



            }
        }
    }
}
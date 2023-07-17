using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void btnNum_Click(object sender, EventArgs e)
        {
            Button clicked = (Button) sender;
            tBInput.Text += clicked.Text;
        }

        protected void btnOp_Click(object sender, EventArgs e)
        {
            Button clicked = (Button) sender;
            Session["n1"] = tBInput.Text;
            Session["op"] = clicked.Text;
            Session["Ans"] = Convert.ToInt32(lblTemp.Text);
            if (Session["op"].ToString() == "+")
            {
                int x1 = Convert.ToInt32(Session["Ans"]);
                int x2 = Convert.ToInt32(Session["n1"]);
                Session["Ans"] = x1 + x2;
                lblTemp.Text = Session["Ans"].ToString();
                tBInput.Text = "";
            }
            else
            {
                lblTemp.Text = Session["n1"].ToString();
                tBInput.Text = "";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tBInput.Text = "";
            lblTemp.Text = "00";
            Session.Abandon();
        }

        protected void btnEqual_Click(object sender, EventArgs e)
        {
            int n1 = Convert.ToInt32(Session["n1"]);
            string op = Session["op"].ToString();
            int n2 = Convert.ToInt32(tBInput.Text);
            switch(op)
            {
                case "+":
                    tBInput.Text = (n1 + n2).ToString();
                    break;
                case "-":
                    tBInput.Text = (n1 - n2).ToString();
                    break;
                case "*":
                    tBInput.Text = (n1 * n2).ToString();
                    break;
                case "/":
                    tBInput.Text = (n1 / n2).ToString();
                    break;
                default:
                    tBInput.Text = "ERROR";
                    break;
            }
            lblTemp.Text = "00";
        }

        protected void Page_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();            
            Response.Write("<script>alert('Error: "+ex.Message+"')</script>");
            Context.ClearError();            
        }
    }
}
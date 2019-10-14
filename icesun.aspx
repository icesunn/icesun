  using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class index : System.Web.UI.Page
    {
        Double value = 0;
        string operation = "";
        bool operation_press = false;

        static int Sayi1, Sayi2;
        static string islem;
        private object result;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn0_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                TextBox1.Text = "0";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "0";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text=TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                TextBox1.Text = "1";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "1";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }

        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                TextBox1.Text = "2";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "2";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }

        }

        protected void btn4_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "4";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "4";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }
        }

        protected void btn5_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "5";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "5";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }
        }

        protected void btn6_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "6";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "6";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }
        }

        protected void btn7_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "7";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "7";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }
        }

        protected void btn8_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "8";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "8";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }
        }

        protected void btn9_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "9";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "9";
            }
            if (TextBox1.Text == "")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "";
            }
        }

        protected void btncikarma_Click(object sender, EventArgs e)
        {
            islem = "-";
            Sayi1 = Convert.ToInt32(TextBox1.Text);
            TextBox1.Text = "";
            if (TextBox1.Text == "-")
            {
                Label1.Text = TextBox1.Text;
            }
            else
            {
                Label1.Text = TextBox1.Text + "-";
            }

        }

        protected void btntoplama_Click(object sender, EventArgs e)
        {
            islem = "+";
            Sayi1 = Convert.ToInt32(TextBox1.Text);
            TextBox1.Text = "";

            Button b = (Button)sender;
            TextBox1.Text = TextBox1.Text + b.Text;
            //value = Convert.ToDouble(Double.Parse(result.Text);
            operation = b.Text;
            operation_press = true;
        }

        protected void btncarpma_Click(object sender, EventArgs e)
        {
            islem = "*";
            Sayi1 = Convert.ToInt32(TextBox1.Text);
            TextBox1.Text = "";

        }

        protected void btnbolme_Click(object sender, EventArgs e)
        {
            islem = "/";
            Sayi1 = Convert.ToInt32(TextBox1.Text);
            TextBox1.Text = "";

        }

        protected void btnsonuc_Click(object sender, EventArgs e)
        {
            Sayi2 = Convert.ToInt32(TextBox1.Text);

            if (islem == "+")
            {
                TextBox1.Text = Convert.ToString(Sayi1 + Sayi2);
            }


            if (islem == "-")
            {
                TextBox1.Text = Convert.ToString(Sayi1 - Sayi2);
            }


            if (islem == "*")
            {
                TextBox1.Text = Convert.ToString(Sayi1 * Sayi2);
            }


            if (islem == "/")
            {
                TextBox1.Text = Convert.ToString(Sayi1 / Sayi2);
            }

        }

        protected void btnce_Click(object sender, EventArgs e)
        {
            Sayi1 = 0;
            Sayi2 = 0;
            islem = "";
            TextBox1.Text = "";
            Label1.Text = "";

        }

        protected void btnc_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
        }

        protected void Equal_Click(object sender, EventArgs e)
        {
            //get the values for calculation
            int[] results = Regex.Split(TextBox1.Text, @"-|\+|\*|\/").Select(x => Convert.ToInt32(x)).ToArray();

            //get the operation
            string operation = Regex.Split(TextBox1.Text, @"[0-9]+")[1];

            //do the calculation
            switch (operation)
            {
                case "+":
                    TextBox1.Text = (results[0] + results[1]).ToString();
                    break;
                case "-":
                    TextBox1.Text = (results[0] - results[1]).ToString();
                    break;
                case "*":
                    TextBox1.Text = (results[0] * results[1]).ToString();
                    break;
                case "/":
                    TextBox1.Text = (results[0] / results[1]).ToString();
                    break;
                default:
                    break;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btn3_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                TextBox1.Text = "3";
            }
            else
            {
                TextBox1.Text = TextBox1.Text + "3";
            }
        }

        
    }
}

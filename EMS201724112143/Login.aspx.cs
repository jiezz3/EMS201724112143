
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Album.OnlineAlbum
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connStr);

            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select admin from [Department] where UId=@UId and Psd=@Psd", conn);
                cmd.Parameters.Add("@UId", SqlDbType.Char);
                cmd.Parameters.Add("@Psd", SqlDbType.Char);
                cmd.Parameters[0].Value = TextBox1.Text;
                cmd.Parameters[1].Value = TextBox2.Text;
                var result = cmd.ExecuteScalar();
                if (result == null)
                {
                    Response.Write("<script>alert('登录密码错误')</script>");
                }
                else if((bool)result)
                {
                    Session["CurrentUser"] = TextBox1.Text;
                    Response.Redirect("./adminPage.aspx");
                }
                else
                {
                    Session["CurrentUser"] = TextBox1.Text;
                    Response.Redirect("./queryPage.aspx");
                }
            }
            catch
            {
                Response.Write("<script>alert('登录异常')</script>");
            }

            finally
            {
                conn.Close();
            }

        }
    }
}

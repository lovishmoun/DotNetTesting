using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace DotNetApplication
{
    public class BusinessLogic 
    {
        public static DataSet dashboard()
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd;
            SqlDataAdapter da;
            cmd = new SqlCommand("select_record", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        public static int add_Record(string f_Name, string l_Name, string password,string email, string number, string dob, string c_Name,string state)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd;
            cmd = new SqlCommand("add_Record", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fname", f_Name);
            cmd.Parameters.AddWithValue("@lname", l_Name);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@number", number);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@cname", c_Name);
            cmd.Parameters.AddWithValue("@state", state);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;

        }
        public static int del_Record(int id)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd;
            cmd = new SqlCommand("delete_record", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;

        }
        public static int update_Record(string f_Name, string l_Name, string email, string number, string dob,string c_Name,string state,int id)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlCommand cmd;
            cmd = new SqlCommand("update_record", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@fname", f_Name);
            cmd.Parameters.AddWithValue("@lname", l_Name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@number", number);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@cname", c_Name);
            cmd.Parameters.AddWithValue("@state", state);
            int result = cmd.ExecuteNonQuery();
            con.Close();
            return result;

        }
        public static int login(string username,string password)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            SqlDataReader dr;
            SqlCommand cmd;
            cmd = new SqlCommand("select_login", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;          
            cmd.Parameters.AddWithValue("@email", username);
            cmd.Parameters.AddWithValue("@password", password);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }
}
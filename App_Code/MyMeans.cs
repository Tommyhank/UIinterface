using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace UIinterface.App_Code
{
    /// <summary>
    /// Summary description for MyMeans
    /// </summary>
    public class MyMeans
    {
        public MyMeans()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        #region    全局变量
        public static string Login_ID;//定义全局变量.记录当前登录的用户在该权限下的编号
        public static string Login_Name = "";//定义全局变量,记录当前登录的用户名
        public static string Login_Time = "";//定义全局变量,记录当前登录的时间
        public static string User_Pope = "";//存储用户权限
        public static string User_Pwd = "";//存储用户密码,主要用于密码修改时方便
        public static int User_ID = 0;//存储用户在UserLogin表中的ID,主要用于密码修改时方便
        public static bool IfExperimentView = false;//指示查看实验详情窗体是否打开
        public static bool IFBackup = false;//指示备份数据库窗体是否打开
        //定义静态全局变量,记录"基础信息"各窗体中的表名,SQL语句以及要添加和修改的字段名
        public static string Mean_SQL = "", Mean_Table = "", Mean_Field = "";
        //定义一个sqlconnection类型的静态公共变量My_con,用于判断数据库是否连接成功
        public static SqlConnection My_con;
        //定义SQL2005连接字符串,用户在使用时,将Data source改为自己的SQL Server2005服务器名
        public static string Str_sqlcon = "Trusted_Connection=SSPI;Database=db_BS"; //"Data Source=OMS\\lx;Database=OMS;User id=simple;PWD=";
        public static int Login_n = 0;//用户登陆与重新登陆的标识
        //存储教师基本信息表中的SQL语句
        public static string AllTeacher = "Select * from tb_Teacher";
        //存储学生基本信息表中的SQL语句
        public static string AllStudent = "Select * from tb_Student";
        #endregion

        #region  建立数据库连接
        /// <summary>
        /// 建立数据库连接.
        /// </summary>
        /// <returns>返回SqlConnection对象</returns>
        public static SqlConnection getcon()
        {
            My_con = new SqlConnection(Str_sqlcon);   //用SqlConnection对象与指定的数据库相连接
            My_con.Open();  //打开数据库连接
            return My_con;  //返回SqlConnection对象的信息
        }
        #endregion

        #region  测试数据库是否赋加
        /// <summary>
        /// 测试数据库是否赋加
        /// </summary>
        public void con_open()
        {
            getcon();
            //con_close();
        }
        #endregion

        #region  关闭数据库连接
        /// <summary>
        /// 关闭于数据库的连接.
        /// </summary>
        public void con_close()
        {
            if (My_con.State == ConnectionState.Open)   //判断是否打开与数据库的连接
            {
                My_con.Close();   //关闭数据库的连接
                My_con.Dispose();   //释放My_con变量的所有空间
            }
        }
        #endregion

        #region  读取指定表中的信息
        /// <summary>
        /// 读取指定表中的信息.
        /// </summary>
        /// <param name="SQLstr">SQL语句</param>
        /// <returns>返回bool型</returns>
        public SqlDataReader getcom(string SQLstr)
        {
            getcon();   //打开与数据库的连接
            SqlCommand My_com = My_con.CreateCommand(); //创建一个SqlCommand对象，用于执行SQL语句
            My_com.CommandText = SQLstr;    //获取指定的SQL语句
            SqlDataReader My_read = My_com.ExecuteReader(); //执行SQL语名句，生成一个SqlDataReader对象
            return My_read;
        }
        #endregion

        #region 执行SqlCommand命令
        /// <summary>
        /// 执行SqlCommand
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        public void getsqlcom(string SQLstr)
        {
            getcon();   //打开与数据库的连接
            SqlCommand SQLcom = new SqlCommand(SQLstr, My_con); //创建一个SqlCommand对象，用于执行SQL语句
            SQLcom.ExecuteNonQuery();   //执行SQL语句
            SQLcom.Dispose();   //释放所有空间
            con_close();    //调用con_close()方法，关闭与数据库的连接
        }
        #endregion

        #region  创建DataSet对象
        /// <summary>
        /// 创建一个DataSet对象
        /// </summary>
        /// <param name="M_str_sqlstr">SQL语句</param>
        /// <param name="M_str_table">表名</param>
        /// <returns>返回DataSet对象</returns>
        public DataSet getDataSet(string SQLstr, string tableName)
        {
            getcon();   //打开与数据库的连接
            SqlDataAdapter SQLda = new SqlDataAdapter(SQLstr, My_con);  //创建一个SqlDataAdapter对象，并获取指定数据表的信息
            DataSet My_DataSet = new DataSet(); //创建DataSet对象
            SQLda.Fill(My_DataSet, tableName);  //通过SqlDataAdapter对象的Fill()方法，将数据表信息添加到DataSet对象中
            con_close();    //关闭数据库的连接
            return My_DataSet;  //返回DataSet对象的信息
            //WritePrivateProfileString(string section, string key, string val, string filePath);
        }
        #endregion
    }
}
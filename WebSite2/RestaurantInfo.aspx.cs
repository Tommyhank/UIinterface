using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UIinterface.App_Code;

public partial class WebSite2_RestaurantInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public List<Image> pic = new List<Image>();//存放大图 
    MyModule MyMC = new MyModule();


    protected void butAdd_Click(object sender, EventArgs e)
    {
        MyMC.FileUpload(openFileDialog, UploadStatusLabel,Pic_listView,txtTags);
        /*
        // Specify the path on the server to
        // save the uploaded file to.
        string savePath = @"c:\temp\uploads\";
        //openFileDialog.AppRelativeTemplateSourceDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
        //openFileDialog.filter = "bmp文件(*.bmp)|*.bmp";
        if (openFileDialog.HasFile)
        {

                // Get the name of the file to upload.
                string filename = openFileDialog.FileName;//获取图片路径
                // Get the extension of the uploaded file.
                string extension = System.IO.Path.GetExtension(filename);
                // Allow only files with .doc or .xls extensions
                // to be uploaded.
                // Get the size in bytes of the file to upload.
                int fileSize = openFileDialog.PostedFile.ContentLength;

                if ((extension == ".bmp") || (extension == ".jpg"))
                {
                    if (fileSize < 2100000)
                    {
                        // Append the name of the file to upload to the path.
                        savePath += filename;
                        try
                        {
                            // Call the SaveAs method to save the 
                            // uploaded file to the specified path.
                            // This example does not perform all
                            // the necessary error checking.               
                            // If a file with the same name
                            // already exists in the specified path,  
                            // the uploaded file overwrites it.
                            openFileDialog.SaveAs(savePath);

                        }
                        catch (System.Exception ex)
                        {
                            Response.Write("<script>alert(ex.Message)</script>");
                            //MessageBox.Show(ex.Message);
                            //MessageBox.Show("请选择图片文件！", "提示", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                    else
                    {
                        UploadStatusLabel.Text = "Your file was not uploaded because " +
                                         "it exceeds the 2 MB size limit.";
                    }
                }
                else
                {
                    UploadStatusLabel.Text = "Your file was not Uploaded because it does not have a right extension";
                }
        }
        else
        {
            UploadStatusLabel.Text = "You did not specify a file to upload.";
        }*/
    }
}
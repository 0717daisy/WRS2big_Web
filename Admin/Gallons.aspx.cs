using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FireSharp;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;

namespace WRS2big_Web.Admin
{
    public partial class Gallons : System.Web.UI.Page
    {
        //protected void UploadFile(object sender, EventArgs e)
        //{
        //    //folder path to save uploaded file
        //    string folderPath = Server.MapPath("~/Product Images/Gallons");

        //    //Check whether Directory (Folder) exists
        //    if (!Directory.Exists(folderPath))
        //    {
        //        //If folder does not exists. Create it.
        //        Directory.CreateDirectory(folderPath);
        //    }

        //    //save file in the specified folder and path
        //    ImgUpload.SaveAs(folderPath + Path.GetFileName(ImgUpload.FileName));

        //    //once file is uploaded show message to user in label control
        //    Label1.Text = Path.GetFileName(ImgUpload.FileName) + " has been uploaded.";
        //}

        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "LIBhNTkVW1ksKJsiuR2RHCKB8xlllL98S0sBVTSS",
            BasePath = "https://big-system-64b55-default-rtdb.firebaseio.com/"

        };
        IFirebaseClient twoBigDB;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Connection to database
            twoBigDB = new FireSharp.FirebaseClient(config);
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            uploadImg();
        }
        public void uploadImg()
        {
            string saveDIR = Server.MapPath("/productImages");
            try
            {
                if (ImgUpload.HasFile)
                {
                    string filename = Server.HtmlEncode(ImgUpload.FileName);
                    string extension = System.IO.Path.GetExtension(filename);
                    int filesize = ImgUpload.PostedFile.ContentLength;
                    if (File.Exists(Path.Combine(saveDIR, filename)))
                    {
                        Label1.InnerText = "File already exist";
                    }
                    else
                    {
                        if ((extension == ".jpg") || (extension == ".jpeg") || (extension == ".png") || (extension == ".JPG") || (extension == ".JPEG") || (extension == ".PNG"))
                        {
                            if (filesize < 2100000)
                            {
                                string savePath = Path.Combine(saveDIR, filename);
                                ImgUpload.SaveAs(savePath);
                                productImage.Visible = true;
                                productImage.ImageUrl = Path.Combine("/productImages/", filename);
                                Session["imgPath"] = Path.Combine("/productImages/", filename);
                                Session["filename"] = filename;
                                Label1.InnerText = "Your file was uploaded successfully.";
                            }
                            else
                            {
                                Label1.InnerText = "Your file was not uploaded because image size is more than 2MB";
                            }
                        }
                        else
                        {
                            Label1.InnerText = "Your file was not uploaded because it does not have a .jpg or .jpeg or .png extension.";
                        }
                    }
                }
                else
                {
                    Label1.InnerText = "Upload Failed: Try again";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<pre style='background: white;'>" + ex.ToString() + "</pre><script>alert('" + ex.Message + "');</script>");
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Random rnd = new Random();
                int idnum = rnd.Next(1, 10000);
                //insert data
                var data = new Model.ProductData
                {
                    gallon_id = idnum,
                    gallonType = drdgalType.Text,
                    Quantity= txtQty.Text,
                    DeliveryPrice = txtDeliveryPrice.Text,
                    PickUp_Price = txtPickUp_Price.Text,
                    DateAdded = DateTime.UtcNow
                };

                SetResponse response;
                // GALLONS = tablename, emp_id = key ( PK? )
                response = twoBigDB.Set("WATER_GALLONS/" + data.gallon_id, data);
                Model.ProductData result = response.ResultAs<Model.ProductData>();
                Response.Write("<script> alert ('Data successfully added'); location.reload(); window.location.href = 'WaterProduct.aspx' </script>");

            }
            catch (Exception ex)
            {
                Response.Write("<pre>" + ex.ToString() + "</pre>");

            }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }
    }
}
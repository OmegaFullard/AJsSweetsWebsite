using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using Telerik.Web.UI;


namespace TelerikWebSite1
{
    public partial class ListView : System.Web.UI.Page
    {
        public List<Image> Images
        {
            get
            {
                List<Image> data = Session["DataImages"] as List<Image>;

                if (data == null)
                {
                    data = GetImages();
                    Session["DataImages"] = data;
                }

                return data;
            }
        }

        public List<Image> GetImages()
        {
            return new List<Image>() {
            new Image() { ID=1, Name="Combo Box", ImageUrl="~/images/assorted.png", ThumbnailUrl="~/images/Thumbnails/assorted.png", Description="Assortment of tasty treats"},
            new Image() { ID=2, Name="Brownies", ImageUrl="~/images/brownies.png", ThumbnailUrl="~/images/Thumbnails/brownies.png", Description="Our brownies offer a variety of options such as gluten-free, vegan, and with or without walnuts"},
            new Image() { ID=3, Name="Chocolate Cake", ImageUrl="~/images/choccake.png", ThumbnailUrl="~/images/Thumbnails/choccake.png", Description="Chocolate cake with vegan option"},
            new Image() { ID=4, Name="Donuts", ImageUrl="~/images/donuts.png", ThumbnailUrl="~/images/Thumbnails/donuts.png", Description="Variety of donut flavors and designs including holiday themed options"},
            new Image() { ID=5, Name="Ginger Bread", ImageUrl="~/images/gingerbreadman.png", ThumbnailUrl="~/images/Thumbnails/gingerbreadman.png", Description="Order gingerbread men or dough to make your own gingerbreadmen or houses"},
            new Image() { ID=6, Name="Pies", ImageUrl="~/images/pies.png", ThumbnailUrl="~/images/Thumbnails/pies.png", Description="Pumpkin, Apple, Cherry, Blueberry, and Sweet Potato Pies"},
            new Image() { ID=7, Name="Other Sweets", ImageUrl="~/images/sweetsrandom.png", ThumbnailUrl="~/images/Thumbnails/sweetsrandom.png", Description="Dessert Kits for you to bake at home"},
            
        };
        }

        public List<Article> Articles
        {
            get
            {
                List<Article> data = Session["DataArticles"] as List<Article>;

                if (data == null)
                {
                    data = GetArticles();
                    Session["DataArticles"] = data;
                }

                return data;
            }
        }

        public List<Article> GetArticles()
        {
            return new List<Article>() {
            new Article(){ ID=1, Title="Best in Town", Description="Named best bakery in Atlanta three years in a row!"},
            new Article(){ ID=1, Title="Awards", Description="Voted #1 according to the AJC newspaper"},
            new Article(){ ID=1, Title="Fairs and Festivals", Description="Stop by our food truck"},
            new Article(){ ID=1, Title="Photo Submissions", Description="Photos submitted by our loyal customers"},
            new Article(){ ID=1, Title="Sweet of the Day", Description="Santa's Sugar Cookies"}
        };
        }

        protected void RadListViewImages_NeedDataSource(object sender, Telerik.Web.UI.RadListViewNeedDataSourceEventArgs e)
        {
            //RadListViewImages.DataSource = Images;
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            //RadLightBoxImageDetails.DataSource = Images;
           // RadLightBoxImageDetails.DataBind();
        }

        protected void RadListViewImages_ItemDataBound(object sender, Telerik.Web.UI.RadListViewItemEventArgs e)
        {
            RadListViewDataItem item = e.Item as RadListViewDataItem;
            string description = (item.DataItem as Image).Description;
            if (description.Length > 100)
            {
                description = description.Substring(0, 97) + "...";
                (item.FindControl("LabelShortDescription") as Literal).Text = description;
            }
        }
        protected void RadListViewArticles_NeedDataSource(object sender, RadListViewNeedDataSourceEventArgs e)
        {
            //RadListViewArticles.DataSource = Articles;
        }
    }
}
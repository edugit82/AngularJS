using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace AngularJS
{
    public partial class Exemplo01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string TestAjax(string teste)
        {
            string json = JsonConvert.SerializeObject(new {Nome= "Eduardo",SobreNome="Correa" });
            return json;
        }        
    }
}
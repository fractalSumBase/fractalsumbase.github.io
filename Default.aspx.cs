using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json;

using System.Web.Script.Serialization;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private HttpWebRequest wfmRequest(string uri)
    {
        // create the web request handle.
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(uri);
        request.KeepAlive = false;
        //request.ProtocolVersion = HttpVersion.Version10;
        // this can be POSt or GET, depends on how the service works
        // Both GET and POST method is used to transfer data from client to server in HTTP protocol string
        // but Main difference between POST and GET method is that GET carries request parameter appended in URL 
        // while POST carries request parameter in message body which makes it more secure way of transferring data from client to server
        // in this case we are noit sending any parms, so doesnt matter which we use
        request.Method = "GET";
        // We expect JSON back
        request.ContentType = "application/json";
        //request.Accept = "application/json";
        // if we need a paramater we could add here but we dont sop  ive juyst commented out
        // request.Headers.Add("parm name", "aaaaaaaaaaaaaaaa");

        return request;

    }

    public class myReverserClass : IComparer
    {

        // Calls CaseInsensitiveComparer.Compare with the parameters reversed.
        int IComparer.Compare(Object x, Object y)
        {
            return ((new CaseInsensitiveComparer()).Compare(y, x));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // OK lets  create the handler for the web request
        // You could modify the end if this string for your different thingys,,relic etc
        // not the change to the URL to  prefgix with RAW  so  we just get the JSON
        HttpWebRequest request = wfmRequest("https://raw.githubusercontent.com/WFCD/warframe-drop-data/gh-pages/data/relics/" + relicTierHiddenField1.Value.ToString() + "/" + relicTierHiddenField2.Value.ToString() + ".json");

        // now send the http posst and get the acual respnse, here is where we send the request
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();

        // the respinse is a stream of data we need to out into a string
        // if there is an error , check what is returned here in the string
        string warframeResponse = (new StreamReader(response.GetResponseStream()).ReadToEnd());

        // we have a JSON object we need to  deserialsie it.. into something we can work with, rather than lots of subsring etc,
        JavaScriptSerializer serializer = new JavaScriptSerializer();

        // using our deserialer  we create a dynamic OBJECT.. in C#  this means when i runs it creates the type.. ratjer handy when you
        // dont know what to expect
        dynamic jsonObject = serializer.Deserialize<dynamic>(warframeResponse);

        // now we can access the data.
        // if you run in debig and pasue here.. you  can inspect the jsonobjext to see what you have
        // lets grba the tier and name.  we identifythe hson part  by the tag.. these are Dictionary objects..
        string tier = jsonObject["tier"]; // result is Dictionary<string,object> user with fields name, teamname, email and players with their values
        string name = jsonObject["name"]; // result is asdf

        // get  array if rewards
        dynamic rewards = jsonObject["rewards"]; //  rewards array with its values

        // get each rewards type array
        dynamic intactRewards = rewards["Intact"]; // result is object[] rewards with its values
        dynamic exceptionalRewards = rewards["Exceptional"]; // result is object[] rewards with its values
        dynamic flawlessRewards = rewards["Flawless"]; // result is object[] rewards with its values
        dynamic radiantRewards = rewards["Radiant"]; // result is object[] rewards with its values


        //now we can access them.. you could use a foreach loop here to put into the lsit
        // or if clever youcan bind the lisstbox to the array

        string[] relicName = new string[6];
        decimal[] relicRarity = new decimal[6];

        for (int i = 0; i < 6; i++)
        {
            relicName[i] = intactRewards[i]["itemName"];
            relicRarity[i] = intactRewards[i]["chance"];
        }

        IComparer myComparer = new myReverserClass();

        Array.Sort(relicRarity, relicName, myComparer);

        ListBox1.Items.Clear();
        ListBox1.Items.Add(relicTierHiddenField1.Value.ToString() + " " + relicTierHiddenField2.Value.ToString());
        ListBox1.Items.Add(relicName[0] + ": Common");
        ListBox1.Items.Add(relicName[1] + ": Common");
        ListBox1.Items.Add(relicName[2] + ": Common");
        ListBox1.Items.Add(relicName[3] + ": Uncommon");
        ListBox1.Items.Add(relicName[4] + ": Uncommon");
        ListBox1.Items.Add(relicName[5] + ": Rare");

        

    }



    static void LoadData()
    {
        // Data all loaded now add to DB

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["WRH"].ConnectionString);
        connection.Open();



        string sqlSTR = "insert into regions (region_id,name,description) values(@id,@name,@desc)";

        for (int ii = 0; ii < 5; ii++)
        {
            SqlCommand command = new SqlCommand(sqlSTR, connection);
            //command.Parameters.AddWithValue("id", regions[ii].region_id);
            //command.Parameters.AddWithValue("name", regions[ii].name);
            //command.Parameters.AddWithValue("desc", regions[ii].description);
            try
            {
                command.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                int iii = 1;
            }

        }

        sqlSTR = "select region_id,name from regions where region_id = '10000002'";
        SqlCommand command2 = new SqlCommand(sqlSTR, connection);

        SqlDataReader sqlrd = command2.ExecuteReader();

        if (sqlrd.HasRows)
        {
            while (sqlrd.Read())
            {

                string myname = sqlrd["name"].ToString();
            }
        }

        sqlrd.Close();
        connection.Close();
    }
}
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <%--STYLES--%>
    <style>
        body
        {
            color:white;
            background-color:#444444;
        }
        table
        {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        tr
        {
            background-color:#444444;
        }
        th
        {
            border: 0px solid #dddddd;
            background-color:#444444;
            text-align: center;
            padding: 8px;
            font-weight: bold;
        }
        td
        {
            border: 0px solid #dddddd;
            text-align: center;
            padding: 8px;
            font-weight: normal;
        }
        button
        {
            background-color:#333333;
            border: 0px solid #444444;
            color:white;
            transition-duration: 0.4s;
        }
        button:hover
        {
            background-color: #111111; /* Green */
            color: white;
        }
        tr:nth-child(even)
        {
            background-color: #dddddd;
        }
        .mywide
        {
            width:600px;
        }

    </style>




    <%--HTML--%>


    <%--<select name="relicTier" id="relicTier">
        <option value="Lith">Lith</option>
        <option value="Meso">Meso</option>
        <option value="Neo">Neo</option>
        <option value="Axi">Axi</option>
    </select>--%>

    <asp:HiddenField ID="relicTierHiddenField1" runat="server" ClientIDMode="Static"/>

    <br><br>
        Step 1 : Choose a relic tier
    <table>
        <tr>
            <td><button type='button' onclick="changeTier('Lith')" ><img src="https://vignette.wikia.nocookie.net/warframe/images/a/ae/VoidProjectionsIronD.png" /></button></td>
            <td><button type='button' onclick="changeTier('Meso')" ><img src="https://vignette.wikia.nocookie.net/warframe/images/1/12/VoidProjectionsBronzeD.png" /></button></td>
            <td><button type='button' onclick="changeTier('Neo')" ><img src="https://vignette.wikia.nocookie.net/warframe/images/c/c5/VoidProjectionsSilverD.png" /></button></td>
            <td><button type='button' onclick="changeTier('Axi')" ><img src="https://vignette.wikia.nocookie.net/warframe/images/0/0e/VoidProjectionsGoldD.png" /></button></td>
        </tr>
        <tr>
            <th>LITH</th>
            <th>MESO</th>
            <th>NEO</th>
            <th>AXI</th>
        </tr>
        <tr>
            <td colspan="4" style="text-align:left; padding-left:0px">Step 2 : Choose a Relic from the chosen tier</td>
        </tr>
        <tr>
            <%-- LITH RELICS --%>
            <th>

                <select name="lithRelics" id="lithRelics" style="text-align:left">
                    <option value="" selected disabled hidden>Choose Relic</option>
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="F1">F1</option>
                    <option value="F2">F2</option>
                    <option value="G1">G1</option>
                    <option value="G2">G2</option>
                    <option value="H1">H1</option>
                    <option value="H2">H2</option>
                    <option value="K1">K1</option>
                    <option value="M1">M1</option>
                    <option value="N1">N1</option>
                    <option value="N2">N2</option>
                    <option value="N3">N3</option>
                    <option value="S1">S1</option>
                    <option value="S2">S2</option>
                    <option value="S3">S3</option>
                    <option value="S4">S4</option>
                    <option value="S5">S5</option>
                    <option value="S6">S6</option>
                    <option value="S7">S7</option>
                    <option value="T1">T1</option>
                    <option value="V1">V1</option>
                    <option value="V2">V2</option>
                    <option value="V3">V3</option>
                    <option value="V4">V4</option>
                    <option value="Z1">Z1</option>
                </select>

            </th>
            <%-- MESO RELICS --%>
            <th>

                <select name="mesoRelics" id="mesoRelics" style="display:none">
                    <option value="" selected disabled hidden>Choose Relic</option>
                    <option value="B1">B1</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="C3">C3</option>
                    <option value="D1">D1</option>
                    <option value="E1">E1</option>
                    <option value="F1">F1</option>
                    <option value="F2">F2</option>
                    <option value="F3">F3</option>
                    <option value="G1">G1</option>
                    <option value="H1">H1</option>
                    <option value="K1">K1</option>
                    <option value="M1">M1</option>
                    <option value="N1">N1</option>
                    <option value="N2">N2</option>
                    <option value="N3">N3</option>
                    <option value="N4">N4</option>
                    <option value="N5">N5</option>
                    <option value="O1">O1</option>
                    <option value="O2">O2</option>
                    <option value="S1">S1</option>
                    <option value="S2">S2</option>
                    <option value="S3">S3</option>
                    <option value="S4">S4</option>
                    <option value="S5">S5</option>
                    <option value="S6">S6</option>
                    <option value="T1">T1</option>
                    <option value="T2">T2</option>
                    <option value="V1">V1</option>
                    <option value="V2">V2</option>
                    <option value="V3">V3</option>
                    <option value="V4">V4</option>
                    <option value="V5">V5</option>
                </select>

            </th>
            <%-- NEO RELICS --%>
            <th>

                <select name="neoRelics" id="neoRelics" style="display:none">
                    <option value="" selected disabled hidden>Choose Relic</option>
                    <option value="A1">A1</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="B4">B4</option>
                    <option value="D1">D1</option>
                    <option value="E1">E1</option>
                    <option value="F1">F1</option>
                    <option value="H1">H1</option>
                    <option value="K1">K1</option>
                    <option value="M1">M1</option>
                    <option value="N1">N1</option>
                    <option value="N2">N2</option>
                    <option value="N3">N3</option>
                    <option value="N4">N4</option>
                    <option value="N5">N5</option>
                    <option value="N6">N6</option>
                    <option value="N7">N7</option>
                    <option value="O1">O1</option>
                    <option value="S1">S1</option>
                    <option value="S2">S2</option>
                    <option value="S3">S3</option>
                    <option value="S5">S5</option>
                    <option value="S6">S6</option>
                    <option value="S7">S7</option>
                    <option value="S8">S8</option>
                    <option value="T1">T1</option>
                    <option value="V1">V1</option>
                    <option value="V2">V2</option>
                    <option value="V3">V3</option>
                    <option value="V4">V4</option>
                    <option value="V5">V5</option>
                    <option value="V6">V6</option>
                    <option value="Z1">Z1</option>
                </select>

            </th>
            <%-- AXI RELICS --%>
            <th>
                             
                <select name="axiRelics" id="axiRelics" style="display:none">
                    <option value="" selected disabled hidden>Choose Relic</option>
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="E1">E1</option>
                    <option value="E2">E2</option>
                    <option value="G1">G1</option>
                    <option value="H1">H1</option>
                    <option value="H2">H2</option>
                    <option value="H3">H3</option>
                    <option value="K1">K1</option>
                    <option value="K2">K2</option>
                    <option value="L1">L1</option>
                    <option value="N1">N1</option>
                    <option value="N2">N2</option>
                    <option value="N3">N3</option>
                    <option value="N4">N4</option>
                    <option value="N5">N5</option>
                    <option value="O1">O1</option>
                    <option value="O2">O2</option>
                    <option value="R1">R1</option>
                    <option value="S1">S1</option>
                    <option value="S2">S2</option>
                    <option value="T1">T1</option>
                    <option value="V1">V1</option>
                    <option value="V2">V2</option>
                    <option value="V3">V3</option>
                    <option value="V4">V4</option>
                    <option value="V5">V5</option>
                    <option value="V6">V6</option>
                    <option value="V7">V7</option>
                    <option value="V8">V8</option>
                </select>

            </th>
        </tr>
    </table>
    
    <asp:HiddenField ID="relicTierHiddenField2" runat="server" ClientIDMode="Static"/>

    <br><br>
    Step 3 : Select type of request
	<table>
        <tr>
            <th style="width:20%"><input type="radio" id="hlfgH" name="hlfg" value="H">HOSTING</th>
            <th style="width:20%"><input type="radio" id="hlfgLF" name="hlfg" value="LFG">LOOKING FOR GROUP</th>
            <th style="width:60%"></th>
        </tr>
    </table>

    <br><br>
    Step 4 : How many group members do you currently have?
    <table>
        <tr>
            <th style="width:8%"><input type="radio" id="gm0" name="gm" value="0">0</th>
            <th style="width:8%"><input type="radio" id="gm1" name="gm" value="1">1</th>
            <th style="width:8%"><input type="radio" id="gm2" name="gm" value="2">2</th>
            <th style="width:8%"><input type="radio" id="gm3" name="gm" value="3">3</th>
            <th style="width:68%"></th>
        </tr>
    </table>

    <br><br>
    Step 5 : Copy the text to place into recruiting chat in Warframe
    <br>
    <input type="text" name="textOutput" id="textOutput" style="height:30px;width:800px;font-size:20">

    <button type='button' style="height:30px;width:100px;font-size:20" onclick="copyText();return false">Copy Text</button>
    <br /><br /><br><br>
    Step 6 : Get the drop table for the chosen relic (WARNING: Copy Text before showing drop data)
    <br>
    <%--GET RELIC DROP DATA BUTTON--%>
    <asp:Button ID="Button1" runat="server" Text="Get Relic Drop Data" OnClick="Button1_Click"/>
    <br />
    <asp:ListBox ID="ListBox1" runat="server" ForeColor="#6baa68" style="height:124px;max-width:600px;width:400px;" ></asp:ListBox>
    <br /><br /><br><br>
    
    Step 7 : Ignore everything below this line (WIP)
    
    <hr style="height:10px;border-width:0;background-color:black">
    <br><br><br><br><br><br><br><br>
    <table>
        <tr>
            <th>Relic Name</th>
            <th>Upgrade Required</th>
            <th>Host Name</th>
        </tr>
        <tr>
            <td>(temp) Lith A1</td>
            <td>(temp) Radiant</td>
            <td>(temp) ShadowCryptic</td>
        </tr>
    </table>


    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>
    <br><br>

    <div id="myform">
        <b>Simple form with name and age ...</b>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" id="name"></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="text" id="age">
                <input type="button" id="add" value="Add" onclick="Javascript: addRow()"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <div id="mydata">
        <b>Current data in the system ...</b>
        <table id="myTableData"  border="1" cellpadding="2">
            <tr>
                <td>&nbsp;</td>
                <td><b>Name</b></td>
                <td><b>Age</b></td>
            </tr>
        </table>
        &nbsp;<br/>
        </div>
        <div id="myDynamicTable">
        <input type="button" id="create" value="Click here" onclick="Javascript: addTable()">
        to create a Table and add some data using JavaScript
    </div>





    <%--SCRIPT--%>
    
    <script>

        var relicTier = "Lith";

        var relicLith = document.getElementById('lithRelics');
        var relicMeso = document.getElementById('mesoRelics');
        var relicNeo = document.getElementById('neoRelics');
        var relicAxi = document.getElementById('axiRelics');

        var relicTierHidden1 = document.getElementById("relicTierHiddenField1");
        var relicTierHidden2 = document.getElementById("relicTierHiddenField2");

        var output = document.getElementById('textOutput');

        var urlOutput = document.getElementById('relicOutput');

        var hlfg1 = document.getElementById('hlfgH');
        var hlfg2 = document.getElementById('hlfgLF');

        var status;

        relicTierHidden1.value = relicTier.value;
        relicTierHidden2.value = relicLith.value;
        

        function changeTier(relicTierVar)
        {

            relicTierHidden1.value = relicTierVar;

            relicLith.style.display = "none";
            relicMeso.style.display = "none";
            relicNeo.style.display = "none";
            relicAxi.style.display = "none";

            switch (relicTierVar) {
                case "Lith":
                    relicLith.style.display = "inline";

                    break;
                case "Meso":
                    relicMeso.style.display = "inline";

                    break;
                case "Neo":
                    relicNeo.style.display = "inline";

                    break;
                case "Axi":
                    relicAxi.style.display = "inline";

                    break;
            }
        }

       

        relicTier.onchange = function () {

            relicTierHidden1.value = relicTier.value;

            relicLith.style.display = "none";
            relicMeso.style.display = "none";
            relicNeo.style.display = "none";
            relicAxi.style.display = "none";

            switch (relicTier.value) {
                case "Lith":
                    relicLith.style.display = "inline";

                    break;
                case "Meso":
                    relicMeso.style.display = "inline";

                    break;
                case "Neo":
                    relicNeo.style.display = "inline";

                    break;
                case "Axi":
                    relicAxi.style.display = "inline";

                    break;
            }
        }

        hlfg1.onchange = function ()
        {
            output.value = output.value.substr(2);
            output.value = "H " + output.value;
        }

        hlfg2.onchange = function () {
            output.value = output.value.substr(2);
            output.value = "LF" + output.value;
        }
        gm0.onchange = function () {
            output.value = output.value.substr(0, output.value.indexOf("share") + 5);
        }
        gm1.onchange = function () {
            output.value = output.value.substr(0, output.value.indexOf("share") + 5);
            output.value = output.value + " 1/4";
        }
        gm2.onchange = function () {
            output.value = output.value.substr(0, output.value.indexOf("share") + 5);
            output.value = output.value + " 2/4";
        }
        gm3.onchange = function () {
            output.value = output.value.substr(0, output.value.indexOf("share") + 5);
            output.value = output.value + " 3/4";
        }

        relicLith.onchange = function () {
            relicTier = "Lith";
            if (hlfg1.checked) {
                status = "H";
            }
            else {
                status = "LF"
            }
            output.value = status + " > [" + relicTier + " " + relicLith.value + "] Radshare";
            if (gm1.checked) (output.value = output.value + " 1/4");
            else if (gm2.checked) (output.value = output.value + " 2/4");
            else if (gm3.checked) (output.value = output.value + " 3/4");

            relicTierHidden2.value = relicLith.value;
        }
        relicMeso.onchange = function () {
            relicTier = "Meso";
            if (hlfg1.checked) {
                status = "H";
            }
            else {
                status = "LF"
            }
            output.value = status + " > [" + relicTier + " " + relicMeso.value + "] Radshare";
            if (gm1.checked) (output.value = output.value + " 1/4");
            else if (gm2.checked) (output.value = output.value + " 2/4");
            else if (gm3.checked) (output.value = output.value + " 3/4");
            relicTierHidden2.value = relicMeso.value;
        }
        relicNeo.onchange = function () {
            relicTier = "Neo";
            if (hlfg1.checked) {
                status = "H";
            }
            else {
                status = "LF"
            }
            output.value = status + " > [" + relicTier + " " + relicNeo.value + "] Radshare";
            if (gm1.checked) (output.value = output.value + " 1/4");
            else if (gm2.checked) (output.value = output.value + " 2/4");
            else if (gm3.checked) (output.value = output.value + " 3/4");
            relicTierHidden2.value = relicNeo.value;
        }
        relicAxi.onchange = function () {
            relicTier = "Axi";
            if (hlfg1.checked) {
                status = "H";
            }
            else {
                status = "LF"
            }
            output.value = status + " > [" + relicTier + " " + relicAxi.value + "] Radshare";
            if (gm1.checked) (output.value = output.value + " 1/4");
            else if (gm2.checked) (output.value = output.value + " 2/4");
            else if (gm3.checked) (output.value = output.value + " 3/4");
            relicTierHidden2.value = relicAxi.value;
        }














        function copyText()
        {
            output.select();
            document.execCommand("Copy");
        }

        function addRow() {

            var myName = document.getElementById("name");
            var age = document.getElementById("age");
            var table = document.getElementById("myTableData");

            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);

            row.insertCell(0).innerHTML = '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
            row.insertCell(1).innerHTML = myName.value;
            row.insertCell(2).innerHTML = age.value;

        }

        function deleteRow(obj) {

            var index = obj.parentNode.parentNode.rowIndex;
            var table = document.getElementById("myTableData");
            table.deleteRow(index);

        }

        function addTable() {

            var myTableDiv = document.getElementById("myDynamicTable");

            var table = document.createElement('TABLE');
            table.border = '1';

            var tableBody = document.createElement('TBODY');
            table.appendChild(tableBody);

            for (var i = 0; i < 3; i++) {
                var tr = document.createElement('TR');
                tableBody.appendChild(tr);

                for (var j = 0; j < 4; j++) {
                    var td = document.createElement('TD');
                    td.width = '75';
                    td.appendChild(document.createTextNode("Cell " + i + "," + j));
                    tr.appendChild(td);
                }
            }
            myTableDiv.appendChild(table);

        }

        function load() {

            console.log("Page load finished");

        }

      </script>


      
</asp:Content>

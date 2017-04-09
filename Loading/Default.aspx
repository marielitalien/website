<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>

    <script type="text/javascript">
    function LoadPage()
    {
        var loadPageURL = '\Loading.html'; //Intermediate page with "Loading" message
        window.location = loadPageURL;
        return false;
    }        
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: justify">
            <span style="font-size: 10pt; font-family: Verdana">Clicking on this button redirects
                you to a html
                <br />
                page first, which shows you a loading message
                <br />
                and then immediately redirects(through
                <br />
                javascript) to the actual page to be loaded.</span><br />
            <br />
            <input id="btnLoad" type="button" value="Load Page" onclick="LoadPage()" />
        </div>
    </form>
</body>
</html>

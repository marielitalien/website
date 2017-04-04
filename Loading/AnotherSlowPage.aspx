<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnotherSlowPage.aspx.cs"
    Inherits="AnotherSlowPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Slow Page</title>

    <script type="text/javascript">
    var _isInitialLoad = true;
    function PageLoad()
    {
        if(_isInitialLoad)
        {
            if (document.getElementById('hdnLoaded').value) //Check to make sure the page load doesn't gets called over and over
                return false;
            _isInitialLoad = false;
            setTimeout('__doPostBack(\'<%= this.btnPageLoad.ClientID %>\',\'\');',100); //Triggering a postback after 100 milliseconds
        }
    }
    </script>

</head>
<body onload="PageLoad()">
    <form id="form1" runat="server">
        <div id="divLoading" runat="server" style="text-align: center">
            <span style="font-size: 10pt; font-family: Verdana">
                <br />
                <br />
                <br />
                <br />
                <br />
                [Please wait while the page is loading...]</span><br />
            <img src="Images/ajax-loader.gif" alt="Loading..." /><br />
        </div>
        <center>
            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"
                ForeColor="Maroon" Text="This is a slowly loaded page." Visible="false"></asp:Label>
        </center>
        <!-- Note that the button is not made visible false. Making visible false will not render it to the UI at all. So a postback cannot be triggered
            So we use display none. UseSubmitBehavior="false" will enable triggering a postback from a invisible control-->
        <asp:Button ID="btnPageLoad" runat="server" Text="Page Load" OnClick="btnPageLoad_Click"
            Style="display: none" UseSubmitBehavior="false" />
        <input type="hidden" id="hdnLoaded" runat="server"/>
    </form>
</body>
</html>

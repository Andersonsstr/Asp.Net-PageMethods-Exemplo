<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PageMethods_Exemplo.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-3.4.1.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" ID="sm1" EnablePageMethods="true" />
        <div>
            <script type="text/javascript">
                function getValues() {
                    var text1 = $('#txt1').val();
                    PageMethods.getValues(text1, getValues_Success, getValues_Fail);
                }

                function getValues_Success(msg) {
                    $('#div1').html(msg);
                }
                function getValues_Fail(msg) {
                    alert(msg.get_message());
                }
            </script>
            <input type="text" id="txt1"/>
            <br />
            <input type="button" onclick="getValues();" value="get values"/>
            <br />
            <br />
            <div id="div1"></div>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QRscan.aspx.cs" Inherits="TempleAthletics.QRscan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="pain">
            <img src="Images/QRscan.png" width="500" height="900"/>
        </div>
        <div class="pain">
            <div class="col-md-6 button"><a href="ScanSuccess.aspx"><button class="btn btn-danger d-block w-100" type="button">Scan Success</button></a></div>
            <div class="col-md-6 button"><a href="ErrorQR.aspx"><button class="btn btn-danger d-block w-100" type="button">Scan Failed</button></a></div>

        </div>
    </form>
</body>

<style>
.pain {
    text-align:center;
}
</style>
</html>

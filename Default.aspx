<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html>
<head>
    <title>Personality Test</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: #FFFF;
            margin: 0;
            padding: 0;
        }

        h2 {
            margin-top: 40px;
            color: #333;
        }

        .image-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 40px;
        }

        .image-container img {
            width: 200px;
            height: 150px;
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s;
            border: 2px solid #ccc;
        }

        .image-container img:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border-color: #0078D7;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Select the image that attracts you most:</h2>

        <div class="image-container">
            <asp:ImageButton ID="img1" runat="server" ImageUrl="~/Images/mountains.jpg" OnClick="ShowResult" CommandArgument="mountain" AlternateText="Mountains" />
            <asp:ImageButton ID="img2" runat="server" ImageUrl="~/Images/ocean.jpg" OnClick="ShowResult" CommandArgument="ocean" AlternateText="Ocean" />
            <asp:ImageButton ID="img3" runat="server" ImageUrl="~/Images/city.jpg" OnClick="ShowResult" CommandArgument="city" AlternateText="City" />
            <asp:ImageButton ID="img4" runat="server" ImageUrl="~/Images/forest.jpg" OnClick="ShowResult" CommandArgument="forest" AlternateText="Forest" />
        </div>
    </form>
</body>
</html>

<%@ Page Title="Events" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="events.aspx.cs" Inherits="teressajohnsonstudio.events" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Xml.Xsl" %>
<script runat="server">
protected void Page_Load(Object sender, EventArgs e)
    {
        
        XsltArgumentList args = new XsltArgumentList();
        args.AddParam("pageId", "", "");
        args.AddParam("galleryType", "", "Events");
        xmllauncher.TransformArgumentList = args;
    }
    </script>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder topBorder oneColumn">
                    <asp:Xml ID="xmllauncher" DocumentSource="common/xml/pictures.xml" TransformSource="common/xslt/galleryContent.xslt" runat="server" />
    </div>
</asp:Content>

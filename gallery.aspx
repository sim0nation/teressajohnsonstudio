<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="teressajohnsonstudio.info" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder topBorder threeColumn">
                    <asp:Xml DocumentSource="common/xml/pictures.xml" TransformSource="common/xslt/gallery.xslt" runat="server" />
    </div>
</asp:Content>

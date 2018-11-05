<%@ Page Title="Reviews" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reviews.aspx.cs" Inherits="teressajohnsonstudio.reviews" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder twoColumn">
         <asp:Xml DocumentSource="common/xml/reviews.xml" TransformSource="common/xslt/reviews.xslt" runat="server" />
        
    </div>
</asp:Content>

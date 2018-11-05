<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="teressajohnsonstudio.About" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder topBorder twoColumn">
        <div class="col1 rightBorder">
            <div class="bottomBorder">
                <div class="titleContainer clearFix">
                    <div class="pageTitle rightBorder">
                        <div class="hexagon"><span>About</span></div>
                    </div>
                    <div class="descriptor">
                        <p>We are a husband and wife team offering customized and unique floral and event design. </p>
                    </div>
                </div>
            </div>
            <div>
                <div class="secondaryPageContent">
                    <img src="/common/img/tjs_greenwater_01.jpg" />
                </div>
            </div>

        </div>
        <div class="col2">
            <div>
                <div class="pageContent bottomBorder">
                    <div class="">
                    <h2>A little about us</h2>
                    <p>Teressa {that’s me!} is the sole designer, and works closely with clients to transform concepts into reality.  I really like people and I really like flowers, so it’s a pretty ideal situation.  Bottom line on what drives my aesthetic:  I love, LOVE, love using flowers, fruit, and foliage at the peak of their season.  I've also been known to play with unconventional and exciting materials.  Further, vital to each project, regardless of scope, is a certain relevance and respect paid to the architecture and palette of its setting.</p>
                    <p>Ryan {he’s the backbone of this whole operation} is our logistical hero and really should be walking around wearing a cape; he’s that awesome. </p>
                    <p>Caroline is our biggest blessing and we are so thankful for her.  Right now, she’s not super helpful with our events, but she’s cute so it’s okay.</p>
                </div>
                
            </div>
                <div class="linkers">
                    <asp:Xml ID="Xml1" TransformSource="~/common/xslt/blog.xsl" runat="server" />
                </div>
                </div>
        

    </div>
    </div>
</asp:Content>

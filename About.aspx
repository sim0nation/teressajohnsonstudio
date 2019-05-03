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
                    <img src="/common/img/family_photo.jpg" />
                </div>
            </div>

        </div>
        <div class="col2">
            <div>
                <div class="pageContent bottomBorder">
                    <div class="">
                    <h2>A little about us</h2>
                    <p>Teressa (that’s me!) is the sole designer, and works closely with clients to transform concepts into reality.  I really like people and I really like flowers, so it’s a pretty ideal situation.  Bottom line on what drives my aesthetic:  I love, LOVE, love using flowers, fruit, and foliage at the peak of their season.  I've also been known to play with unconventional and exciting materials.  Further, vital to each project, regardless of scope, is a certain relevance and respect paid to the architecture and palette of its setting.</p>
                    <p>Ryan, he is our backbone. He is our logistical hero and really should be walking around wearing a cape; he’s that awesome. If I design something that needs to be built, stand tall, be hauled, not break, and/or still stand after torrential winds and rains, he’s the guy to make it happen. We have been married for many many years and find that we very much enjoy working together to transform concepts into realities with his ingenuity.</p>
                    <p>Caroline and Benjamin are our biggest blessings and we are so thankful for them. Caroline loves to give me the thumbs up on my work (all thumbs up if it contains pink and peach), all thumbs down if it doesn’t. And Benji isn’t much help at all actually, but he’s really adorable so it’s okay.</p>
                    
                </div>
                
            </div>
                <div class="linkers">
                    <asp:Xml ID="Xml1" TransformSource="~/common/xslt/blog.xsl" runat="server" />
                </div>
                </div>
        

    </div>
    </div>
</asp:Content>

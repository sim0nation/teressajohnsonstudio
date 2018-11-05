<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="teressajohnsonstudio.contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder topBorder twoColumn">
        <div class="col1 rightBorder">
            <div class="bottomBorder ">
                <div class="secondaryPageContent">
                    <img class="show" src="/common/img/tjs_ireland_01.jpg">
                </div>

            </div>
            <div class="linkers">
                <div class="clearFix">
                    <div class="leftBorder">
                        <a href="//www.facebook.com/teressa.johnson.studio" target="_blank"><img src="common/img/facebook.png" /></a>     
                    </div>
                    <div class="leftBorder">
                        <a href="//www.twitter.com/teressajstudio" target="_blank"><img src="common/img/twitter.png" /></a>
                    </div>
                    <div class="leftBorder">
                        <a href="//www.instagram.com/teressajohnson" target="_blank"><img src="common/img/instagram.png" /></a>
                      </div>
                    <div class="leftBorder">
                        <a href="//www.pinterest.com/teressajohnson" target="_blank"><img src="common/img/pinterest.png" /></a>
                        </div>
                </div>
            </div>
    </div>
    <div class="col2">
        <div>

            <div class="bottomBorder">
                <div class="titleContainer clearFix">
                    <div class="pageTitle rightBorder">
                        <div class="hexagon"><span>Contact</span></div>
                    </div>
                    <div class="descriptor">
                        <blockquote>
                            <p>It turns out that I enjoy meeting people and I love coffee.  So if you like those same things, let's be friends. <a href="tel:2537099509">{253} 709&ndash;9509</a></p>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="pageContent">
                <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit" CssClass="contactForm">

                    <div>

                        <asp:TextBox ID="YourName" runat="server" placeholder="name" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter your name" ControlToValidate="YourName" ValidationGroup="save" Display="Dynamic" />
                    </div>
                    <div>

                        <asp:TextBox ID="YourEmail" runat="server" placeholder="email address" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="How can we reach you?" ControlToValidate="YourEmail" ValidationGroup="save" Display="Dynamic" />


                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                            SetFocusOnError="true" Text="Please enter a valid email address. Example: user@gmail.com" ControlToValidate="YourEmail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                            ValidationGroup="save" />

                    </div>
                    <div>

                        <asp:TextBox ID="YourSubject" runat="server" placeholder="subject" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="What are you inquiring about?" ControlToValidate="YourSubject" ValidationGroup="save" Display="Dynamic" />
                    </div>
                    <div>

                        <asp:TextBox ID="Comments" runat="server" placeholder="your question" TextMode="MultiLine" Rows="7" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="What would you like to say?" ControlToValidate="Comments" ValidationGroup="save" Display="Dynamic" />
                    </div>
                    <div>
                        <asp:Button class="submit" ID="btnSubmit" runat="server" Text="Send Message" OnClick="Button1_Click" ValidationGroup="save" CssClass="button" />
                    </div>


                </asp:Panel>

                <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
            </div>

        </div>

    </div>


    </div>

</asp:Content>

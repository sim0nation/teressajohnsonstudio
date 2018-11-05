<%@ Page Title="Sweet-Little-Number" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="babybear.aspx.cs" Inherits="teressajohnsonstudio.babybear" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder topBorder twoColumn">
        <div class="col1 rightBorder">
            <div class="bottomBorder ">
                <div class="secondaryPageContent">
                    <img src="/common/img/tjs_wild-gathered_011.jpg" />
                </div>
            </div>
        </div>
    <div class="col2">
        <div>
                    
            <div class="pageContent">
                <div>
                <p>YES, LOVELY.</p>
                <p>$75.00</p>
                <p>Flowers have been known to bring happy energy to a space. This sweet little number will brighten it up and leave you feeling balanced and lively. This image is an example of size and feel. All flowers and foliage are season specific, but of course feel free to leave comments and we'll do our best to accomodate.</p>
                <p>American grown | Locally resourced | Delivered Thursdays</p>
                    <input type="hidden" name="cmd" value="_s-xclick">
                    <input type="hidden" name="hosted_button_id" value="ERK4LYX9NF57G">
                        <table>
                            <tr><td><input type="hidden" name="on0" value=""></td></tr>
                            <tr>
                                <td>
                                    <select name="os0">
	                                    <option value="weekly">Yes, Lovely. : $75.00 USD - weekly</option>
	                                    <option value="monthly">Yes, Lovely. : $75.00 USD - monthly</option>
                                    </select>
                                </td>
                            </tr>
                            <tr><td><input type="hidden" name="on1" value="Tell us more">Tell us more about your style and preferences (if you want to)</td></tr>
                            <tr><td><textarea class="formDescription" name="os1" maxlength="200"></textarea><span class="characterCount"></span></td></tr>
                        </table>
                    <input type="hidden" name="currency_code" value="USD">
                    <!--<input type="image" src="http://www.teressajohnsonstudio.com/common/img/btn_paypal.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">-->
                    <asp:ImageButton CssClass="paypalWA" ID="btnPayNow150" runat="server" ImageUrl="http://www.teressajohnsonstudio.com/common/img/btn_paypal.png" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" />
                    <p class="unsub"><a href="mailto:teressa@teressajohnsonstudio.com?subject=Change or Cancel Subcription&body=Hi Teressa,">Change Subscription</a></p>
                    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">





              <%--   <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit" CssClass="contactForm">

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

                <asp:Label ID="DisplayMessage" runat="server" Visible="false" />--%>
                    </div>
            </div>
        </div>
    </div>
    </div>

</asp:Content>

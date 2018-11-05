<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="order-form.aspx.cs" Inherits="teressajohnsonstudio.orderForm" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content clearFix bottomBorder topBorder twoColumn">
        <div class="col1 rightBorder">
            <div class="bottomBorder ">
                <div class="secondaryPageContent">
                    <a href="#OrderForm">
                        <img class="show" src="/common/img/TJS_squarzies_01-2.jpg"></a>
                    <a href="#OrderForm">
                        <img class="show" src="/common/img/TJS_squarzies_01-1.jpg"></a>

                    <a href="#OrderForm">
                        <img class="show" src="/common/img/TJS_squarzies_01-3.jpg"></a>
                </div>

            </div>
            <div class="linkers">
                <div class="clearFix">
                    <p>Each bouquet will be unique and feature the season’s most beautiful flowers.  The images shown are to provide examples and sizes.  If you have specific requests, head over to our <a href="contact.aspx" target="_blank">contact page</a> and leave us a note. We will do our best to accommodate.  Happy Valentine’s Day!</p>
                </div>
            </div>
        </div>
        <div class="col2">
            <div>

                <div class="bottomBorder">
                    <div class="titleContainer clearFix">
                        <div class="pageTitle rightBorder">
                            <div class="hexagon"><span>Order</span></div>
                        </div>
                        <div class="descriptor">
                            <blockquote>
                                <p>All bouquets will be available for pick-up only at the South Lake Union WeWork. 500 Yale Ave N. 98109. Between 11am - 5pm.</p>
                            </blockquote>
                        </div>
                    </div>
                </div>
                <div id="OrderForm" class="pageContent">

                    <input type="hidden" name="cmd" value="_s-xclick">
                    <input type="hidden" name="hosted_button_id" value="DD4A6E7S7NWCS">
                    <table>
                        <tr>
                            <td>
                                <input type="hidden" name="on0" value="Product">Product</td>
                        </tr>
                        <tr>
                            <td>
                                <select name="os0">
                                    <option value="Mini">Mini $25.00 USD</option>
                                    <option value="Dream">Dream $50.00 USD</option>
                                    <option value="Swoon">Swoon $75.00 USD</option>
                                    <option value="Luxe">Luxe $125.00 USD</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" name="on1" value="Quantity">Quantity</td>
                        </tr>
                        <tr>
                            <td>
                                <select name="quantity">
                                    <option value="1">1 </option>
                                    <option value="2">2 </option>
                                    <option value="3">3 </option>
                                    <option value="4">4 </option>
                                    <option value="5">5 </option>
                                    <option value="6">6 </option>
                                </select>
                            </td>
                        </tr>
                    </table>
                    <input type="hidden" name="currency_code" value="USD">
                    <asp:ImageButton CssClass="paypalWA" ID="btnPayNow1984" runat="server" ImageUrl="http://www.teressajohnsonstudio.com/common/img/btn_paypal.png" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" />
                    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                </div>

            </div>

        </div>


    </div>

</asp:Content>

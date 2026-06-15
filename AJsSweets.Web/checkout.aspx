<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container my-5">
        <div class="row">
            <div class="col-lg-8">
                <h1 class="display-4 mb-4">
                    <i class="fa fa-credit-card"></i> Checkout
                </h1>

                <!-- Progress Steps -->
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col-md-4">
                                <i class="fa fa-shopping-cart fa-2x text-success"></i>
                                <p class="mt-2"><strong>Cart</strong></p>
                            </div>
                            <div class="col-md-4">
                                <i class="fa fa-credit-card fa-2x text-primary"></i>
                                <p class="mt-2"><strong>Checkout</strong></p>
                            </div>
                            <div class="col-md-4">
                                <i class="fa fa-check-circle fa-2x text-muted"></i>
                                <p class="mt-2">Confirmation</p>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:Panel ID="pnlError" runat="server" Visible="false" CssClass="alert alert-danger">
                    <i class="fa fa-exclamation-circle"></i>
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </asp:Panel>

                <!-- Customer Information -->
                <div class="card mb-4">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0"><i class="fa fa-user"></i> Customer Information</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="txtFirstName">First Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" 
                                    ErrorMessage="First name is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="txtLastName">Last Name <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                                    ErrorMessage="Last name is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="txtEmail">Email Address <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                                ErrorMessage="Email is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Please enter a valid email address" CssClass="text-danger" Display="Dynamic" 
                                ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ValidationGroup="Checkout"></asp:RegularExpressionValidator>
                        </div>
                        <div class="mb-3">
                            <label for="txtPhone">Phone Number <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" 
                                ErrorMessage="Phone number is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <!-- Billing Address -->
                <div class="card mb-4">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0"><i class="fa fa-map-marker"></i> Billing Address</h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="txtAddress">Street Address <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" 
                                ErrorMessage="Address is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                        </div>
                        <div class="mb-3">
                            <label for="txtAddress2">Address Line 2</label>
                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="txtCity">City <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="txtCity" 
                                    ErrorMessage="City is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="ddlState">State <span class="text-danger">*</span></label>
                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="" Text="Select State"></asp:ListItem>
                                    <asp:ListItem Value="AL" Text="Alabama"></asp:ListItem>
                                    <asp:ListItem Value="AK" Text="Alaska"></asp:ListItem>
                                    <asp:ListItem Value="AZ" Text="Arizona"></asp:ListItem>
                                    <asp:ListItem Value="AR" Text="Arkansas"></asp:ListItem>
                                    <asp:ListItem Value="CA" Text="California"></asp:ListItem>
                                    <asp:ListItem Value="CO" Text="Colorado"></asp:ListItem>
                                    <asp:ListItem Value="CT" Text="Connecticut"></asp:ListItem>
                                    <asp:ListItem Value="DE" Text="Delaware"></asp:ListItem>
                                    <asp:ListItem Value="FL" Text="Florida"></asp:ListItem>
                                    <asp:ListItem Value="GA" Text="Georgia"></asp:ListItem>
                                    <asp:ListItem Value="HI" Text="Hawaii"></asp:ListItem>
                                    <asp:ListItem Value="ID" Text="Idaho"></asp:ListItem>
                                    <asp:ListItem Value="IL" Text="Illinois"></asp:ListItem>
                                    <asp:ListItem Value="IN" Text="Indiana"></asp:ListItem>
                                    <asp:ListItem Value="IA" Text="Iowa"></asp:ListItem>
                                    <asp:ListItem Value="KS" Text="Kansas"></asp:ListItem>
                                    <asp:ListItem Value="KY" Text="Kentucky"></asp:ListItem>
                                    <asp:ListItem Value="LA" Text="Louisiana"></asp:ListItem>
                                    <asp:ListItem Value="ME" Text="Maine"></asp:ListItem>
                                    <asp:ListItem Value="MD" Text="Maryland"></asp:ListItem>
                                    <asp:ListItem Value="MA" Text="Massachusetts"></asp:ListItem>
                                    <asp:ListItem Value="MI" Text="Michigan"></asp:ListItem>
                                    <asp:ListItem Value="MN" Text="Minnesota"></asp:ListItem>
                                    <asp:ListItem Value="MS" Text="Mississippi"></asp:ListItem>
                                    <asp:ListItem Value="MO" Text="Missouri"></asp:ListItem>
                                    <asp:ListItem Value="MT" Text="Montana"></asp:ListItem>
                                    <asp:ListItem Value="NE" Text="Nebraska"></asp:ListItem>
                                    <asp:ListItem Value="NV" Text="Nevada"></asp:ListItem>
                                    <asp:ListItem Value="NH" Text="New Hampshire"></asp:ListItem>
                                    <asp:ListItem Value="NJ" Text="New Jersey"></asp:ListItem>
                                    <asp:ListItem Value="NM" Text="New Mexico"></asp:ListItem>
                                    <asp:ListItem Value="NY" Text="New York"></asp:ListItem>
                                    <asp:ListItem Value="NC" Text="North Carolina"></asp:ListItem>
                                    <asp:ListItem Value="ND" Text="North Dakota"></asp:ListItem>
                                    <asp:ListItem Value="OH" Text="Ohio"></asp:ListItem>
                                    <asp:ListItem Value="OK" Text="Oklahoma"></asp:ListItem>
                                    <asp:ListItem Value="OR" Text="Oregon"></asp:ListItem>
                                    <asp:ListItem Value="PA" Text="Pennsylvania"></asp:ListItem>
                                    <asp:ListItem Value="RI" Text="Rhode Island"></asp:ListItem>
                                    <asp:ListItem Value="SC" Text="South Carolina"></asp:ListItem>
                                    <asp:ListItem Value="SD" Text="South Dakota"></asp:ListItem>
                                    <asp:ListItem Value="TN" Text="Tennessee"></asp:ListItem>
                                    <asp:ListItem Value="TX" Text="Texas"></asp:ListItem>
                                    <asp:ListItem Value="UT" Text="Utah"></asp:ListItem>
                                    <asp:ListItem Value="VT" Text="Vermont"></asp:ListItem>
                                    <asp:ListItem Value="VA" Text="Virginia"></asp:ListItem>
                                    <asp:ListItem Value="WA" Text="Washington"></asp:ListItem>
                                    <asp:ListItem Value="WV" Text="West Virginia"></asp:ListItem>
                                    <asp:ListItem Value="WI" Text="Wisconsin"></asp:ListItem>
                                    <asp:ListItem Value="WY" Text="Wyoming"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvState" runat="server" ControlToValidate="ddlState" 
                                    InitialValue="" ErrorMessage="State is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="txtZipCode">Zip Code <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" ControlToValidate="txtZipCode" 
                                    ErrorMessage="Zip code is required" CssClass="text-danger" Display="Dynamic" ValidationGroup="Checkout"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Payment Information -->
                <div class="card mb-4">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0"><i class="fa fa-credit-card"></i> Payment Information</h5>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <label>Payment Method <span class="text-danger">*</span></label>
                            <asp:RadioButtonList ID="rblPaymentMethod" runat="server" CssClass="form-check" RepeatDirection="Vertical">
                                <asp:ListItem Value="CreditCard" Text="Credit Card" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="PayPal" Text="PayPal"></asp:ListItem>
                                <asp:ListItem Value="BankTransfer" Text="Bank Transfer"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>

                        <asp:Panel ID="pnlCreditCard" runat="server">
                            <div class="alert alert-info">
                                <i class="fa fa-info-circle"></i> <strong>Note:</strong> Credit card information is processed securely. 
                                This is a demo - actual payment gateway integration required for production.
                            </div>
                            <div class="mb-3">
                                <label for="txtCardName">Name on Card <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtCardName" runat="server" CssClass="form-control" MaxLength="100"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="txtCardNumber">Card Number <span class="text-danger">*</span></label>
                                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control" MaxLength="19" placeholder="XXXX-XXXX-XXXX-XXXX"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="txtExpiryDate">Expiry Date <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtExpiryDate" runat="server" CssClass="form-control" placeholder="MM/YY" MaxLength="5"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="txtCVV">CVV <span class="text-danger">*</span></label>
                                    <asp:TextBox ID="txtCVV" runat="server" CssClass="form-control" MaxLength="4" placeholder="XXX"></asp:TextBox>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>

                <!-- Additional Notes -->
                <div class="card mb-4">
                    <div class="card-header bg-secondary text-white">
                        <h5 class="mb-0"><i class="fa fa-comment"></i> Order Notes (Optional)</h5>
                    </div>
                    <div class="card-body">
                        <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control" TextMode="MultiLine" 
                            Rows="3" MaxLength="500" placeholder="Any special instructions or notes about your order..."></asp:TextBox>
                    </div>
                </div>
            </div>

            <!-- Order Summary Sidebar -->
            <div class="col-lg-4">
                <div class="card mb-4 sticky-top" style="top: 20px;">
                    <div class="card-header bg-success text-white">
                        <h5 class="mb-0"><i class="fa fa-list"></i> Order Summary</h5>
                    </div>
                    <div class="card-body">
                        <asp:Repeater ID="rptOrderItems" runat="server" OnItemDataBound="rptOrderItems_ItemDataBound">
                            <ItemTemplate>
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <div class="d-flex align-items-center">
                                        <asp:Image ID="imgProduct" runat="server" CssClass="me-2" Width="50" Height="50" AlternateText='<%# Eval("ProductName") %>' />
                                        <div>
                                            <strong><%# Eval("ProductName") %></strong><br />
                                            <small class="text-muted">Qty: <%# Eval("Quantity") %></small>
                                            </div>
                                        </div>
                                        <span class="text-end"><%# Eval("LineTotal", "{0:C}") %></span>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <hr />
                        <div class="d-flex justify-content-between mb-2">
                            <span>Subtotal:</span>
                            <strong><asp:Label ID="lblSubtotal" runat="server"></asp:Label></strong>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span>Tax (6%):</span>
                            <strong><asp:Label ID="lblTax" runat="server"></asp:Label></strong>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <span>Shipping:</span>
                            <strong><asp:Label ID="lblShipping" runat="server"></asp:Label></strong>
                        </div>
                        <hr />
                        <div class="d-flex justify-content-between mb-3">
                            <h5>Total:</h5>
                            <h5 class="text-success"><asp:Label ID="lblTotal" runat="server"></asp:Label></h5>
                        </div>

                        <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" 
                            CssClass="btn btn-success btn-lg w-100 mb-2" OnClick="btnPlaceOrder_Click" ValidationGroup="Checkout" />
                        <a href="Cart.aspx" class="btn btn-outline-secondary w-100">
                            <i class="fa fa-arrow-left"></i> Back to Cart
                        </a>
                    </div>
                </div>

                <!-- Security Badges -->
                <div class="card">
                    <div class="card-body text-center">
                        <i class="fa fa-lock fa-3x text-success mb-2"></i>
                        <p class="mb-0"><small>Secure Checkout</small></p>
                        <p><small class="text-muted">Your information is protected</small></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
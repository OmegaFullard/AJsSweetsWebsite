<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <asp:PlaceHolder runat="server">
      <%: Scripts.Render("~/bundles/modernizr") %>
  </asp:PlaceHolder>

  <webopt:bundlereference runat="server" path="~/Content/css" />

      
        <div class="container">

    <div class="py-5 text-center">
    
    <h2>Checkout Form</h2>
   
        </div>
    <div class="py-5 text-center">
        <img src="images/ajslogo.png" alt="logo" width="72" height="57"/>
      
      
    </div>

    <div class="cart">
        <div class="cart-item">

            <span>Strawberry Jam</span>
            
              <span>Homemade strawberry jam</span>
            <input type="number" value="1" class="quantity"/>
            <span class="price">$10</span>
             <br />
              <br />
            <button class="remove">Remove</button>
         </div>
        
       <br />
        <br />
            <div class="cart-item">
              <span>Pumpkin Pie</span>
              <small class="text-body-secondary">Just a sweet reminder of the fall season</small>
             <input type="number" value="1" class="quantity"/>
            <span class="price">$20</span>
            <br />
              <br />
            <button class="remove">Remove</button>
        </div>
        <br />
          <br />


            <div class="cart-item">
              <h6 class="my-0">Halloween Cupcakes</h6>
              <small class="text-body-secondary">Trick or Treat. Check out these Spook-Tacular cupcakes with Halloween themes.</small>
            <input type="number" value="1" class="quantity"/>
            <span class="price">$25</span>
           <br />
              <br />
            <button class="remove">Remove</button>
        </div>
        <br />
          <br />

          <div class="list-group-item d-flex justify-content-between">
            <span>Total (USD)</span>
            <strong>$20</strong>
          </div>
       
        <class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code"/>
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
  
      </div>
      <br />
  


  
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Billing address</h4>
        <class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">First name</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" />
              <div class="invalid-feedback">
                Valid first name is required.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Last name</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" />
              <div class="invalid-feedback">
                Valid last name is required.
              </div>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">Username</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <input type="text" class="form-control" id="username" placeholder="Username" />
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com"/>
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Main St" />
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">Address 2 <span class="text-body-secondary">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartment or suite"/>
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">Country</label>
              <select class="form-select" id="country" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="">Choose...</option>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option>United States</option>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </select>
              <div class="invalid-feedback">
                Please select a valid country.
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" id="state" >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option value="">Choose...</option>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <option>California</option>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </select>
              <div class="invalid-feedback">
                Please provide a valid state.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Zip</label>
              <input type="text" class="form-control" id="zip" placeholder="" />
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
          </div>

          <hr class="my-4"/>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address"/>
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info"/>
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div>

          <hr class="my-4"/>

          <h4 class="mb-3">Payment</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" />
              <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" />
              <label class="form-check-label" for="debit">Debit card</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input"/>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="required" />
              <small class="text-body-secondary">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="required" />
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="required" />
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="required"/>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>
              <hr class="my-4"/>

          <button class="btn btn-success rounded-pill px-3" type="submit">Submit Order</button>

      </div>
    </div>

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

    <script src="checkout.js"></script>
   </asp:Content>
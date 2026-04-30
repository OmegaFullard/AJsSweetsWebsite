<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Directions.aspx.cs" Inherits="Directions" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <style>
        .directions-wrap { max-width: 950px; margin: 0 auto; }
        .directions-wrap h2 { margin: 20px 0 10px; }
        .map-frame { width: 100%; height: 420px; border: 0; }
        .info-box { margin-top: 15px; padding: 12px; background: #f8f9fa; border: 1px solid #e5e5e5; }
        .steps li { margin-bottom: 6px; }
    </style>
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="directions-wrap">
        <h2>Directions to AJ's Sweets</h2>
        <p>Visit us at <strong>123 Treats Rd., Atlanta, GA 30080</strong>.</p>

        <iframe class="map-frame"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3314.9878558125074!2d-84.14853362438608!3d33.81262647324805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f5af0ae0844df7%3A0xd7888cf9c7aed2fa!2s1000%20Robert%20E%20Lee%20Blvd%2C%20Stone%20Mountain%2C%20GA%2030083!5e0!3m2!1sen!2sus!4v1730230999345!5m2!1sen!2sus"
                allowfullscreen
                loading="lazy">
        </iframe>

        <div class="info-box">
            <h4>Quick Directions</h4>
            <ol class="steps">
                <li>Take I-285 E toward Stone Mountain.</li>
                <li>Exit toward Memorial Dr / Stone Mountain area.</li>
                <li>Turn onto Treats Rd and continue to AJ's Sweets.</li>
            </ol>
            <p><strong>Phone:</strong> 404-222-2222</p>
        </div>

        <p>
            <a class="btn btn-primary" href="https://maps.google.com/?q=123+Treats+Rd,+Atlanta,+GA+30080" target="_blank">
                Open in Google Maps
            </a>
        </p>
    </div>
</asp:Content>
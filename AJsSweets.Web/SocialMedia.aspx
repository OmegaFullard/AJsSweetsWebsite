<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeFile="SocialMedia.aspx.cs" Inherits="SocialMedia" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <style>
        .social-wrap { max-width: 900px; margin: 0 auto; }
        .social-title { margin: 20px 0 10px 0; text-align: center; }
        .social-subtitle { text-align: center; color: #666; margin-bottom: 25px; }
        .social-grid { display: flex; flex-wrap: wrap; gap: 16px; justify-content: center; }
        .social-card {
            width: 260px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 16px;
            background: #fff;
            box-shadow: 0 2px 6px rgba(0,0,0,.08);
            text-align: center;
        }
        .social-card h4 { margin: 8px 0; }
        .social-card p { color: #666; min-height: 42px; }
        .social-btn {
            display: inline-block;
            margin-top: 8px;
            padding: 8px 14px;
            border-radius: 4px;
            text-decoration: none;
            color: #fff;
            background-color: #0d6efd;
        }
        .updates {
            margin-top: 28px;
            border-top: 1px solid #eee;
            padding-top: 16px;
        }
        .updates ul { padding-left: 20px; }
    </style>
</asp:Content>

<asp:Content ID="ContentMain" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="social-wrap">
        <h2 class="social-title">AJ's Sweets Social Media</h2>
        <p class="social-subtitle">Follow us for bakery updates, new treats, and special offers.</p>

        <div class="social-grid">
            <div class="social-card">
                <h4>Facebook</h4>
                <p>Photos, events, and customer stories.</p>
                <a class="social-btn" href="https://facebook.com" target="_blank">Follow</a>
            </div>

            <div class="social-card">
                <h4>Instagram</h4>
                <p>Daily dessert highlights and behind-the-scenes.</p>
                <a class="social-btn" href="https://instagram.com" target="_blank">Follow</a>
            </div>

            <div class="social-card">
                <h4>X / Twitter</h4>
                <p>Quick updates, announcements, and news.</p>
                <a class="social-btn" href="https://x.com" target="_blank">Follow</a>
            </div>

            <div class="social-card">
                <h4>YouTube</h4>
                <p>Decorating videos and baking tutorials.</p>
                <a class="social-btn" href="https://youtube.com" target="_blank">Subscribe</a>
            </div>
        </div>

        <div class="updates">
            <h3>Latest Bakery Updates</h3>
            <ul>
                <li>New seasonal cupcake collection now available.</li>
                <li>Weekend order cutoff is now Friday at 5 PM.</li>
                <li>Custom cake consultations open every Wednesday.</li>
            </ul>
        </div>
    </div>
</asp:Content>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Check if search query is passed via URL
            string query = Request.QueryString["q"];
            if (!string.IsNullOrEmpty(query))
            {
                // Validate and sanitize input
                query = query.Trim();
                if (query.Length > 100)
                {
                    query = query.Substring(0, 100);
                }

                txtSearch.Text = query;
                PerformSearch(query);
            }
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string searchQuery = txtSearch.Text.Trim();
        if (!string.IsNullOrEmpty(searchQuery))
        {
            // Redirect to include query in URL for bookmarking and refresh support
            Response.Redirect("~/Search.aspx?q={HttpUtility.UrlEncode(searchQuery)}");
        }
    }

    private void PerformSearch(string query)
    {
        // Get all searchable pages and their content
        List<SearchResult> results = SearchPages(query);

        if (results.Count > 0)
        {
            // Sort by relevance score
            results = results.OrderByDescending(r => r.Score).ToList();

            // Display results
            pnlResults.Visible = true;
            pnlNoResults.Visible = false;
            lblResultCount.Text = results.Count.ToString();
            lblSearchTerm.Text = HttpUtility.HtmlEncode(query);
        
        }
        else
        {
            // No results found
            pnlResults.Visible = false;
            pnlNoResults.Visible = true;
            lblNoResultsTerm.Text = HttpUtility.HtmlEncode(query);
        }
    }

    private List<SearchResult> SearchPages(string query)
    {
        List<SearchResult> results = new List<SearchResult>();
        string[] keywords = query.ToLower().Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

        // Define searchable pages with their content
        var pages = GetSearchablePages();

        foreach (var page in pages)
        {
            int score = CalculateRelevanceScore(page, keywords);
            if (score > 0)
            {
                string snippet = ExtractSnippet(page.Content, keywords);
                results.Add(new SearchResult
                {
                    Title = page.Title,
                    PageName = page.PageName,
                    Url = page.Url,
                    Description = page.Description,
                    Snippet = snippet,
                    Score = score
                });
            }
        }

        return results;
    }

    private List<PageContent> GetSearchablePages()
    {
        return new List<PageContent>
            {
                new PageContent
                {
                    PageName = "Home",
                    Title = "AJ's Sweets - Home",
                    Url = "~/Default.aspx",
                    Description = "Welcome to AJ's Sweets, your trusted partner in sweet treats.",
                    Content = "home sweets desserts chocolates candies cakes pastries bakery treats confectionery"
                },
          
                new PageContent
                {
                    PageName = "Products",
                    Title = "Products & Pricing",
                    Url = "~/Products.aspx",
                    Description = "Explore AJ's Sweets products, including jellies, pies, cookies, brownies, cakes, cupcakes, and gift cards.",
                    Content = "products menu aj's sweets jelly pies cookies brownies cakes cupcakes gift card pricing bakery desserts treats order online cart checkout"
                },
                new PageContent
                {
                    PageName = "Contact",
                    Title = "Contact Us",
                    Url = "~/Contact.aspx",
                    Description = "Contact AJ's Sweets for questions about orders, products, and support.",
                    Content = "contact aj's sweets customer support order help phone email address location inquiries bakery assistance"
                },
                new PageContent
                {
                    PageName = "About",
                    Title = "About Us",
                    Url = "~/About.aspx",
                    Description = "Learn about AJ's Sweets, our story, and our commitment to fresh, handcrafted desserts.",
                    Content = "about aj's sweets bakery story mission values handcrafted desserts quality ingredients local business customer satisfaction"
                },
                new PageContent
                {
                    PageName = "Support",
                    Title = "Support Center",
                    Url = "~/Support.aspx",
                    Description = "Find help with AJ's Sweets orders, account questions, and common issues.",
                    Content = "support help center faq order status checkout payment troubleshooting customer service aj's sweets"
                },
                new PageContent
                {
                    PageName = "Privacy",
                    Title = "Privacy Policy",
                    Url = "~/Privacy.aspx",
                    Description = "Review AJ's Sweets privacy policy and how we handle your information.",
                    Content = "privacy policy aj's sweets personal information data protection security cookies terms legal"
                },
                new PageContent
                {
                    PageName = "Social",
                    Title = "Social Media",
                    Url = "~/SocialMedia.aspx",
                    Description = "Follow AJ's Sweets on social media for updates, specials, and new treats.",
                    Content = "social media aj's sweets facebook instagram youtube follow updates specials promotions new products bakery"
                },
                new PageContent
                {
                    PageName = "Cart",
                    Title = "Shopping Cart",
                    Url = "~/Cart.aspx",
                    Description = "View your AJ's Sweets shopping cart and proceed to checkout.",
                    Content = "shopping cart aj's sweets checkout buy order payment products items quantity total"
                }
            };
    }

    private int CalculateRelevanceScore(PageContent page, string[] keywords)
    {
        int score = 0;
        string content = (page.Title + " " + page.Description + " " + page.Content).ToLower();

        foreach (string keyword in keywords)
        {
            // Count occurrences of keyword
            int occurrences = Regex.Matches(content, Regex.Escape(keyword)).Count;

            // Higher weight for title matches
            if (page.Title.ToLower().Contains(keyword))
            {
                score += 30;
            }

            // Medium weight for description matches
            if (page.Description.ToLower().Contains(keyword))
            {
                score += 15;
            }

            // Standard weight for content matches
            score += occurrences * 5;
        }

        return score;
    }

    private string ExtractSnippet(string content, string[] keywords)
    {
        // Find the first keyword match and extract surrounding text
        content = content.ToLower();
        int snippetLength = 150;

        foreach (string keyword in keywords)
        {
            int index = content.IndexOf(keyword);
            if (index >= 0)
            {
                int start = Math.Max(0, index - 50);
                int length = Math.Min(snippetLength, content.Length - start);
                string snippet = content.Substring(start, length);

                // Highlight the keyword
                snippet = Regex.Replace(snippet, Regex.Escape(keyword),
                    match => "<strong>{match.Value}</strong>",
                    RegexOptions.IgnoreCase);

                return snippet;
            }
        }

        // If no keyword found, return first part of content
        return content.Length > snippetLength
            ? content.Substring(0, snippetLength)
            : content;
    }

    // Helper classes
    private class PageContent
    {
        public string PageName { get; set; }
        public string Title { get; set; }
        public string Url { get; set; }
        public string Description { get; set; }
        public string Content { get; set; }
    }

    public class SearchResult
    {
        public string Title { get; set; }
        public string PageName { get; set; }
        public string Url { get; set; }
        public string Description { get; set; }
        public string Snippet { get; set; }
        public int Score { get; set; }
    }
}


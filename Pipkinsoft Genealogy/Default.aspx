<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pipkinsoft_Genealogy.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Family Tree Poster</title>
    <meta name="description" content="Get a poster that features a large, high-quality print with a custom design detailing your family tree going back up to eight generations." />
    <meta name="keywords" content="family tee,genealogy,poster,tree,family,ancestry,ancestor,research,veteran" />
    <meta property="og:url" content="http://tree.pipkinsoft.com" />
    <meta property="og:title" content="Family Tree Poster" />
    <meta property="og:image" content="http://tree.pipkinsoft.com/images/family-tree.jpg" />
    <meta property="og:site_name" content="Family Tree Poster" />
    <meta property="og:description" content="Get a poster that features a large, high-quality print with a custom design detailing your family tree going back up to eight generations." />
    <link type="text/css" rel="stylesheet" href="/styles/main.css" />
    <link href="http://fonts.googleapis.com/css?family=Jim+Nightshade" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=IM+Fell+English:400,400italic" rel="stylesheet" type="text/css" />
    <script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-550afd1673f4d0f4" async="async"></script>
    <form id="form" runat="server">
    <div class="main">
        <h1>Family Tree Poster</h1>
        <img src="images/family-tree.jpg" class="tree" alt="Framed Family Tree Poster" />
        <div class="content">
            <h2>High-Quality, Framed Family Tree Poster</h2>
            <p>
                This poster features a large, high-quality print with a custom design detailing 
                your family tree going back up to <em><strong>eight</strong></em> generations.
            </p>
            <p>
                The poster includes:
            </p>
            <ul>
                <li>Extensive genealogical research</li>
                <li>Profile details, including:
                    <ul>
                        <li>Photo (when provided or discovered)</li>
                        <li>Full birth name</li>
                        <li>Date and location of birth</li>
                        <li>Date and location of marriage</li>
                        <li>Date and location of death</li>
                        <li>Occupation</li>
                    </ul>
                </li>
                <li>War veteran badges with legend</li>
                <li>Approximate Heritage breakdown of children by country with flag and percentage</li>
                <li>High-quality 24" x 36" poster print</li>
                <li>2" black gallery frame with anti-glare acrylic facing</li>
            </ul>

            <p>
                All of that for just <span class="price">$1200</span> + shipping &amp; handling
            </p>

            <p>
                To get started on your project, fill out the form below and you will 
                be contacted to discuss the details.
            </p>
        </div>
        <div class="clear"></div>
        <div class="columnLeft">
            <h3>The Process</h3>
            <ul>
                <li>Submit your project request with the form to the right</li>
                <li>We will contact you and gather initial information about what you know of your family tree</li>
                <li>Once we receive a non-refundable <span class="number">$200</span> security deposit,<br />we will start your project</li>
                <li>While we are working on your project, you can gather family photos to use in the poster
                    <ul>
                        <li>
                            Photos can either be scanned in at a minimum of 300 DPI and emailed to us or sent to us via mail and we will scan and return them
                        </li>
                    </ul>
                </li>
                <li>When your poster is ready, we will send you a proof to review</li>
                <li>We will make any revisions necessary and send a new proof as needed</li>
                <li>If the proof is accepted, we will print, frame, and ship your poster once we receive the remaining <span class="number">$1000</span> + shipping &amp; handling</li>
            </ul>
        </div>
        <div class="columnRight">
            <h3>Start My Project</h3>
            <div class="form">
                <div class="formRow">
                    <div class="label">
                        Name:
                    </div>
                    <div class="field">
                        <asp:TextBox runat="server" ID="Name" ValidationGroup="request"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvName" ValidationGroup="request" ControlToValidate="Name" ErrorMessage="required" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="formRow">
                    <div class="label">
                        Email:
                    </div>
                    <div class="field">
                        <asp:TextBox runat="server" ID="Email" ValidationGroup="request"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ValidationGroup="request" ControlToValidate="Email" ErrorMessage="required" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="formRow">
                    <div class="label">
                        Phone:
                    </div>
                    <div class="field">
                        <asp:TextBox runat="server" ID="Phone" ValidationGroup="request"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="rfvPhone" ValidationGroup="request" ControlToValidate="Phone" ErrorMessage="required" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="formRow">
                    <div class="label">
                        Check to verify you are human
                    </div>
                    <div class="field">
                        <div class="g-recaptcha" data-sitekey="6LctkgMTAAAAAGUei6WCspWkFoZlJ2pt3FHo2be7"></div>
                        <asp:CustomValidator runat="server" ID="cvCaptcha" ValidationGroup="request" ErrorMessage="You must check the box above" CssClass="error" Display="Dynamic"></asp:CustomValidator>
                    </div>
                </div>
                <asp:Button runat="server" ID="Submit" ValidationGroup="request" OnClick="Submit_Click" Text="Submit" CssClass="submit" />
            </div>
        </div>
        <div class="clear"></div>
    </div>
    </form>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-36110164-3', 'auto');
        ga('send', 'pageview');

    </script>
    <script type="text/javascript">
        var message = "<%= Alert.Replace("'", "\\'") %>";
        if (message.length > 0) alert(message);
    </script>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="josspaper.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: 1px;
            top: 0px;
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <link href="Styles/contact.css" rel="stylesheet" />
    <div class="contactimg">
    <asp:Image ID="Image1" runat="server" Height="280px" Width="950px" ImageUrl="~/Images/contactusbanner.jfif" />
    </div>
    <section class="contact">
        <div class="content">
            <h2>Contact Us</h2>
            <p>Contact us to make an order or get more information about any products or services you are interested in.Our staff will provide you with all the information that will be relevant for you.Thank you for shopping with us we hope to see you soon. </p>
        </div>
        <div class="container">
            <div class="contactInfo">
                <div class="box">
                 <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div> 
                 <div class="text">
                     <h3>Address</h3>
                    <p>119C Rivervale Drive,<br />Singapore,543119</p>
                 </div>
                </div>
                <div class="box">
                 <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div> 
                 <div class="text">
                     <h3>Phone</h3>
                    <p>99126292</p>
                 </div>
                </div>
                <div class="box">
                 <div class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div> 
                 <div class="text">
                    <h3>Email</h3>
                    <p>josspapery2@gmail.com</p>
                 </div>
                </div>
            </div>
            <div class="contactForm">
                <form>
                    <h2>Send Message</h2>
                   
                    <asp:Label ID="lbl_confirm" runat="server" ForeColor="Green"></asp:Label>
                    <br />
                    <div class="auto-style1">
                        <asp:TextBox ID="tb_name" runat="server" placeholder="Name" Height="32px" Width="376px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Name is required.Please enter  a name" ControlToValidate="tb_name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div class="inputBox">
                        <asp:TextBox ID="tb_email" runat="server" placeholder="Email" Height="32px" Width="376px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_email" runat="server" ErrorMessage="Email is required.Please enter  a email" ControlToValidate="tb_email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" ErrorMessage="Please enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                   
                    <div class="inputBox">
                        <asp:TextBox ID="tb_subject" runat="server" placeholder ="Subject" Height="32px" Width="378px" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfv_subject" runat="server" ErrorMessage="Subject is required.Please enter subject" ControlToValidate="tb_subject" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="inputBox">
                        <asp:TextBox ID="tb_message" runat="server" placeholder="Message" Height="32px" Width="375px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_message" runat="server" ErrorMessage="Message is required.Please enter  a message" ControlToValidate="tb_message" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="inputBox">
                        <asp:Button ID="btn_submit" runat="server" Text="Send" BackColor="#0066FF" ForeColor="White" Height="32px" OnClick="btn_submit_Click" Width="381px" />
                    </div>  
                </form>
            </div>
        </div>
    </section>
    <hr />
    <br />
    <br />
    <div class="map">
        <h2>LOCATED IN THE HEART OF RIVERVALE</h2>
        <h2>We are situated right opposite rivervale plaza.A 5- minute walk from the nearest LRT station(Kangkar).</h2>
        <br />
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15954.612543451707!2d103.89452421701517!3d1.3847423853760559!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da1619d3912331%3A0xafbff984cde508e0!2sSingapore%20543119!5e0!3m2!1sen!2ssg!4v1640342575724!5m2!1sen!2ssg" width="950" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        <br />
    </div>
    <br />
    <br />
    <br />
   
</asp:Content>

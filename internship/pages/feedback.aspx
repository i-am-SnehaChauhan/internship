<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="internship.pages.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-ld-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="col-md-6 col-md-offset-3">
                                <h1>Management of Training Details</h1>
                            </div>
                        </header>
                        <div style="border: medium solid #E3F9FF; padding: inherit; margin: inherit;">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label Text="Training S.No. " runat="server" />
                                            <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control input-sm" placeholder="Trainee S.No.">
                                                <asp:ListItem Value="">Please Select</asp:ListItem> 
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label Text="Feedback for the Trainee" runat="server" />
                                            <asp:TextBox ID="feed" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Feedback" Height="100px" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1 col-md-offset-2">
                                        <asp:Button ID="btnsubmit" Text="Submit" runat="server" CssClass="btn btn-primary" OnClick="submit" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
</asp:Content>

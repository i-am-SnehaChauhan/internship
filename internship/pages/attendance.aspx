<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="internship.pages.attendance" %>
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
                                            <asp:TextBox ID="serialnumber" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Trainee S.No." />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1 col-md-offset-2">
                                        <asp:Button ID="btnsave" Text="Save" runat="server" CssClass="btn btn-primary" OnClick="save" />
                                    </div>
                                    <div class="col-md-2 col-md-offset-2">
                                        <asp:Button ID="btnview" Text="View" runat="server" CssClass="btn btn-success" OnClick="view" />
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

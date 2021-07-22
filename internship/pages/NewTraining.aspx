<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewTraining.aspx.cs" Inherits="internship.pages.NewTraining" %>

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
                                            <asp:Label ID="Label1" Text="Trainee Name" runat="server" />
                                            <asp:TextBox ID="trainingname" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Training Name" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label ID="Label2" Text="Trainer Name" runat="server" />
                                            <asp:TextBox ID="trainername" runat="server" onkeypress="return numeric(event)" Enabled="true" CssClass="form-control input-sm" placeholder="Trainer Name" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label ID="Label3" Text="Trainer Email" runat="server" />
                                            <asp:TextBox ID="traineremail" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Trainer Email" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label Text="Training Desc." runat="server" />
                                            <asp:TextBox ID="trainingdesc" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Training Description" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label Text="Training From " runat="server" />
                                            <asp:TextBox ID="datefrom" runat="server" TextMode="Date" CssClass="form-control input-sm" Placeholder="Staring date" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label Text="Training Till " runat="server" />
                                            <asp:TextBox ID="datetill" runat="server" TextMode="Date" CssClass="form-control input-sm" Placeholder="Ending date" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1 col-md-offset-1">
                                        <asp:Button ID="btnsave" Text="Save" runat="server" CssClass="btn btn-success" OnClick="save" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-md-offset-2">
                                    <asp:Label Text="" ID="lblMessage" runat="server" ForeColor="Blue" />
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </section>
</asp:Content>

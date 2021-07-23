<%@ Page Title="Trainee Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="internship.pages.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section id="main-content">
        <section id="wrapper">
            <div class="row">
                <div class="col-ld-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <h1 style="position: center">Training Details</h1>
                            </div>
                                </div>
                        </header>
                        <div style="border: medium solid #E3F9FF; padding: inherit; margin: inherit;">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label ID="Label1" Text="Trainer Name" runat="server" />
                                            <asp:TextBox ID="traineename" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Trainee Name" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label ID="Label2" Text="Trainer Number" runat="server" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="traineenumber" ErrorMessage="Only enter Numeric value" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                            <asp:TextBox ID="traineenumber" runat="server" onkeypress="return numeric(event)" Enabled="true" CssClass="form-control input-sm" placeholder="Trainee Number" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label ID="Label3" Text="Trainer Email" runat="server" />
                                            <asp:TextBox ID="traineeemail" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Trainee Email" />
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
                                            <asp:Label Text="Financial Year" runat="server" />
                                            <asp:DropDownList ID="financialyear" runat="server" CssClass="form-control input-sm">
                                                <asp:ListItem Text="Please Select" Value="" />
                                                <asp:ListItem Text="2015" />
                                                <asp:ListItem Text="2016" />
                                                <asp:ListItem Text="2017" />
                                                <asp:ListItem Text="2018" />
                                                <asp:ListItem Text="2019" />
                                                <asp:ListItem Text="2020" />
                                                <asp:ListItem Text="2021" />
                                                <asp:ListItem Text="2022" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:Label Text="Training S.No. " runat="server" />
                                            <asp:TextBox ID="serialnumber" runat="server" Enabled="false" CssClass="form-control input-sm" placeholder="Trainee S.No." />
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
                                    <div class="col-md-1 col-md-offset-2">
                                        <asp:Button ID="btnsave" Text="Save" runat="server" CssClass="btn btn-primary" OnClick="save" />
                                    </div>
                                    <div class="col-md-1 col-md-offset-1">
                                        <asp:Button ID="btnview" Text="View" runat="server" CssClass="btn btn-success" OnClick="view" />
                                    </div>
                                    <div class="col-md-1 col-md-offset-1">
                                        <asp:Button ID="btndelete" Text="Delete" runat="server" CssClass="btn btn-danger" OnClick="delete" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-md-offset-2">
                                    <asp:Label Text ="" ID="lblMessage" runat="server" ForeColor="Blue"/>
                                </div>
                            </div>
                        </div>
                    <br / . />
                        <table class ="output">
                            <asp:GridView ID="gvtrainee" runat="server" CssClass="table" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="traineename" HeaderText="Name" />
                                    <asp:BoundField DataField="traineenumber" HeaderText="Number" />
                                    <asp:BoundField DataField="traineeemail" HeaderText="Email" />
                                    <asp:BoundField DataField="traineeyear" HeaderText="Financial Year" />
                                    <asp:BoundField DataField="traineedescription" HeaderText="Training Description" />
                                    <asp:BoundField DataField="trainstart" HeaderText="Training start date" />
                                    <asp:BoundField DataField="trainend" HeaderText="Training End Date" />
                                    <asp:BoundField DataField="traineesno" HeaderText="Serial Number" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton Text="Select" ID="lnkSelect" CommandArgument='<%Eval("traineesno") %>' runat="server"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </table>
                    </section>
                </div>
            </div>
        </section>
    </section>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="internship.pages.attendance" CodeBehind="attendance.aspx.cs" %>

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
                                            <asp:Label Text="Training Name" runat="server" />
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control input-sm" placeholder="Training name">
                                                <asp:ListItem Value="">Please Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-1 col-md-offset-1">
                                        <asp:Button ID="btnview" Text="Check" runat="server" CssClass="btn btn-success" OnClick="Check" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-2">
                                        <div class="form-group">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="500px" CssClass="table-bordered">
                                                <Columns>
                                                    <asp:BoundField DataField="eid" HeaderText="Serial Number" HeaderStyle-HorizontalAlign="Center">
                                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="Present" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="present" GroupName="attend" runat="server" CssClass="radio" Width="30" OnCheckedChanged="present_CheckedChanged" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Absent" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="absent" GroupName="attend" runat="server" CssClass="radio" Width="30" OnCheckedChanged="absent_CheckedChanged" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1 col-md-offset-1">
                                        <asp:Button ID="submit" Text="Submit" runat="server" CssClass="btn btn-success" OnClick="Submit" />
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

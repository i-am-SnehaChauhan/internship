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
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="500px">
                                                <Columns>
                                                    <asp:BoundField DataField="traineesno" HeaderText="Serial Number" HeaderStyle-HorizontalAlign="Center" >
                                                        <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                                    </asp:BoundField>
                                                    <asp:TemplateField HeaderText="Present" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="present" GroupName="attendance" OnCheckedChanged="present_CheckedChanged" runat="server" CssClass="radio" Width="30" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Absent" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                                        <ItemTemplate>
                                                            <asp:RadioButton ID="absent" GroupName="attendance" OnCheckedChanged="absent_CheckedChanged" runat="server" CssClass="radio" Width="30" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <div class="row">
                                                <div class="col-md-1 col-md-offset-2">
                                                    <asp:Button ID="btnsubmit" Text="Submit" runat="server" CssClass="btn btn-primary" OnClick="submit" />
                                                </div>
                                            </div>
                                        </div>
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

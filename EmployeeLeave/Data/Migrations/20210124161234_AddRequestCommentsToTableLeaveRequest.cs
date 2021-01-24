using Microsoft.EntityFrameworkCore.Migrations;

namespace EmployeeLeave.Data.Migrations
{
    public partial class AddRequestCommentsToTableLeaveRequest : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "RequestComments",
                table: "LeaveRequests",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "RequestComments",
                table: "LeaveRequests");
        }
    }
}

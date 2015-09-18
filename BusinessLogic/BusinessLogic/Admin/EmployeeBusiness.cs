using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess.Admin;
using DataEntity.Admin;

namespace BusinessLogic.Admin {

	public class EmployeeBusiness : BaseBusinessLogic<EmployeeDataAccess> {

		#region 构造器

		public EmployeeBusiness() {
		}

		#endregion

		#region 公共方法

		/// <summary>
		/// 保存员工信息
		/// </summary>
		/// <param name="Employee"></param>
		public bool SaveAccount(UserEntity Employee, out String ErrorMsg) {
			bool Result = false;
			DataAccess.SaveEmployee(Employee,out ErrorMsg);

			using (SysUserBusiness SysUser = new SysUserBusiness()) {
				SysUserEntity User = SysUser.GetUserByAccount(Employee.UserID);
				if (User == null) User = new SysUserEntity();
				User.UserAccount = Employee.UserID;
				User.UserName = Employee.LastName + Employee.FirstName;
				User.PassWord = Employee.Password;
				User.UserCategory = "1";
				SysUser.SaveSysUser(User);
			}



			return Result;
		}

		public bool DeleteAccount(String UserID, out String ErrorMsg) {
			bool Result = false;
			ErrorMsg = "";
			using (SysUserBusiness SysUser = new SysUserBusiness()) {
				SysUserEntity User = SysUser.GetUserByAccount(UserID);
				if (User != null) SysUser.DeleteSysUser(User);			
			}
			UserEntity Employee = DataAccess.GetUser(UserID, out ErrorMsg);
			if (Employee != null) DataAccess.DeleteUser(Employee, out ErrorMsg);
			return Result;
		}

		public bool SuspendAccount(String UserID, out String ErrorMsg) {
			bool Result = false;
			ErrorMsg = "";
			UserEntity Employee = DataAccess.GetUser(UserID, out ErrorMsg);
			if (Employee != null) {
				Employee.Status = "Disabled";
				DataAccess.SaveEmployee(Employee,out ErrorMsg);
			}
			return Result;
		}

		public bool RestoreAccount(String UserID, out String ErrorMsg) {
			bool Result = false;
			ErrorMsg = "";
			UserEntity Employee = DataAccess.GetUser(UserID, out ErrorMsg);
			if (Employee != null) {
				Employee.Status = "Active";
				DataAccess.SaveEmployee(Employee,out ErrorMsg);
			}
			return Result;
		}
		#endregion
	}
		
}

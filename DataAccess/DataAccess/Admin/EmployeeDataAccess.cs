using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataEntity.Admin;
using NHibernate.Linq;

namespace DataAccess.Admin {

	public class EmployeeDataAccess : BaseDataAccess<UserEntity> {

		#region 构造器

		public EmployeeDataAccess() {
		}

		#endregion

		#region 公共方法

		/// <summary>
		/// 保存员工信息
		/// </summary>
		/// <param name="Employee"></param>
		public bool SaveEmployee(UserEntity Employee, out String ErrorMsg) {
			ErrorMsg = "";
			try {
				Session.SaveOrUpdate(Employee);
				Session.Flush();
				CloseSession();
			}
			catch (Exception ex) {
				ErrorMsg = ex.Message;
				return false;
			}
			return true;
		}

		public UserEntity GetUser(String UserID, out String ErrorMsg) {
			ErrorMsg = "";
			try {
				List<UserEntity> Users = (from p in Session.Query<UserEntity>()
											  where p.UserID == UserID
											  select p).ToList<UserEntity>();
				if (Users.Count > 0) return Users[0];
			}
			catch (Exception ex) {
				ErrorMsg = ex.Message;
				return null; 
			}
			return null; 
		}

		public bool DeleteUser(UserEntity Employee, out String ErrorMsg) {
			ErrorMsg = "";
			try {
				Session.Delete(Employee);
				Session.Flush();
				CloseSession();
			}
			catch (Exception ex) {
				ErrorMsg = ex.Message;
				return false;
			}
			return true;
		}

		#endregion
	}
}

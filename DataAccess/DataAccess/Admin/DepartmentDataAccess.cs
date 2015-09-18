using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataEntity.Admin;
using NHibernate;
using NHibernate.Linq;

namespace DataAccess.Admin {
	
	public class DepartmentDataAccess:BaseDataAccess<DepartmentEntity> {

		#region 构造器

		public DepartmentDataAccess() {
		}

		#endregion

		#region 公共方法

		/// <summary>
		/// 返回部门信息
		/// </summary>
		/// <param name="DeptNo">部门编号</param>
		/// <returns></returns>
		public DepartmentEntity GetDepartment(String DeptNo) {
			DepartmentEntity Result = Session.Get<DepartmentEntity>(DeptNo);
			CloseSession();
			return Result;
		}

		/// <summary>
		/// 返回所有部门信息
		/// </summary>
		/// <returns></returns>
		public List<DepartmentEntity> GetDepartments() {
			var q = from p in Session.Query<DepartmentEntity>()
					select p;
			List<DepartmentEntity> Result = q.ToList<DepartmentEntity>();
			CloseSession();
			return Result;
		}

		/// <summary>
		/// 保存部门信息
		/// </summary>
		/// <param name="Department">部门信息实体</param>
		/// <returns></returns>
		public int SaveDepartment(DepartmentEntity Department) {
			if (String.IsNullOrEmpty(Department.DeptNo)) Department.DeptNo = GetLineID("Department");
			Session.SaveOrUpdate(Department);
			Session.Flush();
			CloseSession();
			return 1;
		}

		/// <summary>
		/// 删除部门信息
		/// </summary>
		/// <param name="Department">部门信息实体</param>
		/// <returns></returns>
		public int DeleteDepartment(DepartmentEntity Department) {
			Session.Delete(Department);
			Session.Flush();
			CloseSession();
			return 1;
		}

		#endregion
	}
}

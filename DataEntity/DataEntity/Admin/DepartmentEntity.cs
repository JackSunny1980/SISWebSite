using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace DataEntity.Admin {

	/// <summary>
	/// 部门信息
	/// </summary>
	public class DepartmentEntity {

		#region 构造器

		public DepartmentEntity() {
		}

		#endregion

		#region 属性

		/// <summary>
		/// 部门编号
		/// </summary>
		[Description("DeptNo")]
		public virtual String DeptNo {
			get;
			set;
		}

		/// <summary>
		/// 部门名称
		/// </summary>
		[Description("DeptName")]
		public virtual String DeptName {
			get;
			set;
		}

		/// <summary>
		/// 描述
		/// </summary>
		[Description("DeptDescription")]
		public virtual String DeptDescription {
			get;
			set;
		}
		#endregion
	}
}

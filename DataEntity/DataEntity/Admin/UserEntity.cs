using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace DataEntity.Admin {

	/// <summary>
	/// 实体类:EmployeeEntity
	/// 文件名:EmployeeEntity.cs
	/// 说  明:
	/// </summary>
	[DataContract(Name = "UserEntity")]
	public class UserEntity {

		#region 构造方法

		public UserEntity() {
		}

		#endregion

		#region 属性

		/// <summary>
		/// 主键
		/// </summary>		
		public virtual string PkId {
			get;
			set;
		}

		/// <summary>
		/// 登录帐号标识
		/// </summary>		
		public virtual string UserID {
			get;
			set;
		}

		/// <summary>
		/// 密码
		/// </summary>		
		public virtual string Password {
			get;
			set;
		}

		/// <summary>
		/// 对应组织机构-部门的编号
		/// </summary>		
		public virtual string OrgCode {
			get;
			set;
		}

		/// <summary>
		/// 对应员工直接所属的组织机构-单位名称
		/// </summary>		
		public virtual string OrgName {
			get;
			set;
		}

		/// <summary>
		/// 对应组织机构-部门的编号
		/// </summary>		
		public virtual string DepartmentNum {
			get;
			set;
		}

		/// <summary>
		/// 对应组织机构-部门的名称
		/// </summary>		
		public virtual string DepartmentName {
			get;
			set;
		}

		/// <summary>
		/// 员工的邮箱
		/// </summary>		
		public virtual string Mail {
			get;
			set;
		}

		/// <summary>
		/// 员工的手机
		/// </summary>		
		public virtual string Mobile {
			get;
			set;
		}

		/// <summary>
		/// 员工的办公室电话
		/// </summary>		
		public virtual string Telephone {
			get;
			set;
		}

		/// <summary>
		/// 为枚举值：  
		/// </summary>

		public virtual string Status {
			get;
			set;
		}

		/// <summary>
		/// 授权系统
		/// </summary>		
		public virtual string Usesystem {
			get;
			set;
		}

		/// <summary>
		/// 授权功能
		/// </summary>		
		public virtual string Usefunction {
			get;
			set;
		}

		/// <summary>
		/// 名
		/// </summary>		
		public virtual string FirstName {
			get;
			set;
		}

		/// <summary>
		/// 姓
		/// </summary>		
		public virtual string LastName {
			get;
			set;
		}

		/// <summary>
		/// 性别
		/// </summary>		
		public virtual string Sex {
			get;
			set;
		}

		/// <summary>
		/// 用户类型
		/// </summary>		
		public virtual string UserType {
			get;
			set;
		}

		/// <summary>
		/// 用户排序索引
		/// </summary>		
		public virtual decimal DisplayIndex {
			get;
			set;
		}

		/// <summary>
		/// 身份证号
		/// </summary>		
		public virtual string Pid {
			get;
			set;
		}

		/// <summary>
		/// 护照号
		/// </summary>		
		public virtual string PassportId {
			get;
			set;
		}

		/// <summary>
		/// 员工编号
		/// </summary>		
		public virtual string EmpNumber {
			get;
			set;
		}

		/// <summary>
		/// 员工职位编号
		/// </summary>		
		public virtual string Title {
			get;
			set;
		}

		/// <summary>
		/// 职位名称
		/// </summary>		
		public virtual string TitleName {
			get;
			set;
		}

		/// <summary>
		/// 是否兼职
		/// </summary>		
		public virtual string IsBywork {
			get;
			set;
		}

		/// <summary>
		/// 扩展信息
		/// </summary>		
		public virtual string Extensions {
			get;
			set;
		}

		/// <summary>
		/// 删除标记
		/// </summary>

		public virtual string DelFlag {
			get;
			set;
		}

		/// <summary>
		/// 密码key
		/// </summary>

		public virtual string PasswordKey {
			get;
			set;
		}

		#endregion
	}
}

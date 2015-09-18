using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NHibernate;
using NHibernate.Linq;
using DataEntity.Admin;

namespace DataAccess.Admin {
	
	public class UserLoginLogDataAccess:BaseDataAccess<UserLoginLogEntity> {

		public UserLoginLogDataAccess() {
		}

		public void SaveUserLoginLog(UserLoginLogEntity Log) {
			if (String.IsNullOrEmpty(Log.PkId)) Log.PkId = GetLineID("UserLoginLog");
			Session.SaveOrUpdate(Log);
			Session.Flush();			
		}
	}
}

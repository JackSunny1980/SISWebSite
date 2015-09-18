using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccess.Admin;
using DataEntity.Admin;

namespace BusinessLogic.Admin {
	public class UserLoginLogBusiness:BaseBusinessLogic<UserLoginLogDataAccess> {

		public UserLoginLogBusiness() {
		}

		public void SaveUserLoginLog(UserLoginLogEntity Log) {
			DataAccess.SaveUserLoginLog(Log);
		}
	}
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataEntity.Admin {
	
	public class UserLoginLogEntity {

		public UserLoginLogEntity() {
		}

		public virtual string PkId {
			get;
			set;
		}

		public virtual DateTime ActionDate {
			get;
			set;
		}

		public virtual string Username {
			get;
			set;
		}

		public virtual string Action {
			get;
			set;
		}

		public virtual string Ip {
			get;
			set;
		}

		public virtual String Remark {
			get;
			set;
		}

	}
}

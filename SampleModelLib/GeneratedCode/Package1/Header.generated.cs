﻿
#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Dieser Code wurde von einem Tool generiert.
//     Wenn der Code neu generiert wird, gehen alle Änderungen an dieser Datei verloren
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Package1 {
	public class Header : IMonitoredEntity {
		public virtual int Id {
			get;
			set;
		}

		public virtual string Title {
			get;
			set;
		}

		public virtual bool IsChecked {
			get;
			set;
		}

		public virtual HeaderStates Status {
			get;
			set;
		}

		// Implementation of IMonitoredEntity
		public virtual DateTime DateCreated { get;set; }

		public virtual DateTime DateModified { get;set; }

		// association properties
		public virtual IList<Position> Positions {
			get;
			set;
		}

	}
}
#pragma warning restore 1591

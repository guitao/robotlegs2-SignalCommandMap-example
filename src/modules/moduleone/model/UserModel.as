package modules.moduleone.model
{
	import org.osflash.signals.Signal;

	/**
	 * @author Hans Van den Keybus
	 * @copyright (c) 2013, dotdotcommadot
	 */
	public class UserModel
	{
		//--------------------------------------------------------------------------
		//
		// Public Properties
		// 
		//--------------------------------------------------------------------------

		//-----------------------------------
		// Signals
		//-----------------------------------

		public var usersChanged:Signal = new Signal;

		//-----------------------------------
		// Users
		//-----------------------------------

		private var _users:Array;

		public function get users():Array
		{
			return _users;
		}

		public function set users(value:Array):void
		{
			if (_users !== value)
			{
				_users = value;

				usersChanged.dispatch();
			}
		}

		//--------------------------------------------------------------------------
		//
		// Constructor
		// 
		//--------------------------------------------------------------------------

		public function UserModel()
		{
		}
	}
}

using System;
using System.Windows.Forms;

namespace IT4077
{
	public class DangerousClass
	{
		public static void Main(string[] args)
		{
			ETWcanSeeClassNamesandLoads();
		}
		private static void ETWcanSeeClassNamesandLoads()
		{
			MessageBox.Show("Executing","Code");
		}
	}
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nhom11
{
    public partial class UC_KhuyenMai : UserControl
    {
        public UC_KhuyenMai()
        {
            InitializeComponent();
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            form_SuaMaKhuyenMai form_SuaMaKhuyenMai = new form_SuaMaKhuyenMai();

            form_SuaMaKhuyenMai.ShowDialog();
        }
    }
}

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
    public partial class UC_KhachHang : UserControl
    {
        public UC_KhachHang()
        {
            InitializeComponent();
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            form_TaoKhachHang form_TaoKhachHang = new form_TaoKhachHang();

            form_TaoKhachHang.ShowDialog();
        }

        private void btn_ThanhToan_Click(object sender, EventArgs e)
        {
            form_KhachTraGop form_KhachTraGop = new form_KhachTraGop();

            form_KhachTraGop.ShowDialog();
        }
    }
}

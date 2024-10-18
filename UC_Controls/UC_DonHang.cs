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
    public partial class UC_DonHang : UserControl
    {
        public UC_DonHang()
        {
            InitializeComponent();
        }

        private void btn_TraGop_Click(object sender, EventArgs e)
        {
            form_SuaDonHang form_SuaDonHang = new form_SuaDonHang();
            form_SuaDonHang.ShowDialog();
        }

        private void btn_KhachHangMoi_Click_1(object sender, EventArgs e)
        {
            form_TaoKhachHang form_TaoKhachHang = new form_TaoKhachHang();

            form_TaoKhachHang.ShowDialog();
        }
    }
}

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
    public partial class UC_NhanVien : UserControl
    {
        public UC_NhanVien()
        {
            InitializeComponent();
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            form_SuaNhanVien form_SuaNhanVien = new form_SuaNhanVien();

            form_SuaNhanVien.ShowDialog();
        }
    }
}

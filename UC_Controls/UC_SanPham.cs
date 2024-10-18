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
    public partial class UC_SanPham : UserControl
    {
        public UC_SanPham()
        {
            InitializeComponent();
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            form_SuaSanPham form_SuaSanPham = new form_SuaSanPham();

            form_SuaSanPham.ShowDialog();
        }
    }
}

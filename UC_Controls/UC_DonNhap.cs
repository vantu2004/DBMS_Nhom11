﻿using System;
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
    public partial class UC_DonNhap : UserControl
    {
        public UC_DonNhap()
        {
            InitializeComponent();
        }

        private void btn_SuaDonNhap_Click(object sender, EventArgs e)
        {
            form_SuaDonNhap form_SuaDonNhap = new form_SuaDonNhap();

            form_SuaDonNhap.ShowDialog();
        }

        private void btn_TaoNhaCungCap_Click_1(object sender, EventArgs e)
        {
            form_TaoNhaCungCap form_TaoNhaCungCap = new form_TaoNhaCungCap();

            form_TaoNhaCungCap.ShowDialog();
        }

        private void btn_TaoDongMay_Click_1(object sender, EventArgs e)
        {
            form_TaoDongMay form_TaoDongMay = new form_TaoDongMay();

            form_TaoDongMay.ShowDialog();
        }
    }
}

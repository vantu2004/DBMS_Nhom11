﻿namespace Nhom11
{
    partial class UC_DonNhap
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tcl_SanPham = new System.Windows.Forms.TabControl();
            this.tab_DanhSachDonNhap = new System.Windows.Forms.TabPage();
            this.label10 = new System.Windows.Forms.Label();
            this.dgv_ChiTietDonNhap = new System.Windows.Forms.DataGridView();
            this.label9 = new System.Windows.Forms.Label();
            this.btn_XoaDonNhap = new System.Windows.Forms.Button();
            this.btn_SuaDonNhap = new System.Windows.Forms.Button();
            this.btn_TìmDonNhap = new System.Windows.Forms.Button();
            this.tbx_TimDonNhap = new System.Windows.Forms.TextBox();
            this.dgv_DanhSachDonNhap = new System.Windows.Forms.DataGridView();
            this.tab_TaoDonNhap = new System.Windows.Forms.TabPage();
            this.btn_HoanThanh = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tbx_GiaBan = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btn_TaoImei = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.lbl_ImeiNgauNhien = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.tbx_GiaNhap = new System.Windows.Forms.TextBox();
            this.btn_TaoDongMay = new System.Windows.Forms.Button();
            this.cbx_ChonNhaCungCap = new System.Windows.Forms.ComboBox();
            this.cbx_ChonDongMay = new System.Windows.Forms.ComboBox();
            this.btn_TaoNhaCungCap = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_ThemSanPham = new System.Windows.Forms.Button();
            this.lbl_ThongTinDienThoai = new System.Windows.Forms.Label();
            this.dgv_DanhSachDienThoai = new System.Windows.Forms.DataGridView();
            this.tcl_SanPham.SuspendLayout();
            this.tab_DanhSachDonNhap.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_ChiTietDonNhap)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_DanhSachDonNhap)).BeginInit();
            this.tab_TaoDonNhap.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_DanhSachDienThoai)).BeginInit();
            this.SuspendLayout();
            // 
            // tcl_SanPham
            // 
            this.tcl_SanPham.Controls.Add(this.tab_DanhSachDonNhap);
            this.tcl_SanPham.Controls.Add(this.tab_TaoDonNhap);
            this.tcl_SanPham.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tcl_SanPham.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.tcl_SanPham.Location = new System.Drawing.Point(0, 0);
            this.tcl_SanPham.Name = "tcl_SanPham";
            this.tcl_SanPham.SelectedIndex = 0;
            this.tcl_SanPham.Size = new System.Drawing.Size(1104, 726);
            this.tcl_SanPham.TabIndex = 2;
            // 
            // tab_DanhSachDonNhap
            // 
            this.tab_DanhSachDonNhap.Controls.Add(this.label10);
            this.tab_DanhSachDonNhap.Controls.Add(this.dgv_ChiTietDonNhap);
            this.tab_DanhSachDonNhap.Controls.Add(this.label9);
            this.tab_DanhSachDonNhap.Controls.Add(this.btn_XoaDonNhap);
            this.tab_DanhSachDonNhap.Controls.Add(this.btn_SuaDonNhap);
            this.tab_DanhSachDonNhap.Controls.Add(this.btn_TìmDonNhap);
            this.tab_DanhSachDonNhap.Controls.Add(this.tbx_TimDonNhap);
            this.tab_DanhSachDonNhap.Controls.Add(this.dgv_DanhSachDonNhap);
            this.tab_DanhSachDonNhap.Location = new System.Drawing.Point(4, 33);
            this.tab_DanhSachDonNhap.Margin = new System.Windows.Forms.Padding(10);
            this.tab_DanhSachDonNhap.Name = "tab_DanhSachDonNhap";
            this.tab_DanhSachDonNhap.Padding = new System.Windows.Forms.Padding(10);
            this.tab_DanhSachDonNhap.Size = new System.Drawing.Size(1096, 689);
            this.tab_DanhSachDonNhap.TabIndex = 0;
            this.tab_DanhSachDonNhap.Text = "Danh sách đơn nhập";
            this.tab_DanhSachDonNhap.UseVisualStyleBackColor = true;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label10.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label10.Location = new System.Drawing.Point(3, 418);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(130, 21);
            this.label10.TabIndex = 31;
            this.label10.Text = "Chi tiết đơn nhập";
            // 
            // dgv_ChiTietDonNhap
            // 
            this.dgv_ChiTietDonNhap.BackgroundColor = System.Drawing.Color.White;
            this.dgv_ChiTietDonNhap.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_ChiTietDonNhap.Location = new System.Drawing.Point(3, 442);
            this.dgv_ChiTietDonNhap.Name = "dgv_ChiTietDonNhap";
            this.dgv_ChiTietDonNhap.RowHeadersWidth = 51;
            this.dgv_ChiTietDonNhap.RowTemplate.Height = 24;
            this.dgv_ChiTietDonNhap.Size = new System.Drawing.Size(1090, 244);
            this.dgv_ChiTietDonNhap.TabIndex = 30;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label9.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label9.Location = new System.Drawing.Point(3, 66);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(152, 21);
            this.label9.TabIndex = 29;
            this.label9.Text = "Danh sách đơn nhập";
            // 
            // btn_XoaDonNhap
            // 
            this.btn_XoaDonNhap.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_XoaDonNhap.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_XoaDonNhap.Location = new System.Drawing.Point(973, 13);
            this.btn_XoaDonNhap.Name = "btn_XoaDonNhap";
            this.btn_XoaDonNhap.Size = new System.Drawing.Size(110, 32);
            this.btn_XoaDonNhap.TabIndex = 6;
            this.btn_XoaDonNhap.Text = "Xóa";
            this.btn_XoaDonNhap.UseVisualStyleBackColor = false;
            // 
            // btn_SuaDonNhap
            // 
            this.btn_SuaDonNhap.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_SuaDonNhap.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_SuaDonNhap.Location = new System.Drawing.Point(857, 13);
            this.btn_SuaDonNhap.Name = "btn_SuaDonNhap";
            this.btn_SuaDonNhap.Size = new System.Drawing.Size(110, 32);
            this.btn_SuaDonNhap.TabIndex = 5;
            this.btn_SuaDonNhap.Text = "Sửa";
            this.btn_SuaDonNhap.UseVisualStyleBackColor = false;
            this.btn_SuaDonNhap.Click += new System.EventHandler(this.btn_SuaDonNhap_Click);
            // 
            // btn_TìmDonNhap
            // 
            this.btn_TìmDonNhap.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_TìmDonNhap.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_TìmDonNhap.Location = new System.Drawing.Point(741, 13);
            this.btn_TìmDonNhap.Name = "btn_TìmDonNhap";
            this.btn_TìmDonNhap.Size = new System.Drawing.Size(110, 32);
            this.btn_TìmDonNhap.TabIndex = 4;
            this.btn_TìmDonNhap.Text = "Tìm kiếm";
            this.btn_TìmDonNhap.UseVisualStyleBackColor = false;
            // 
            // tbx_TimDonNhap
            // 
            this.tbx_TimDonNhap.ForeColor = System.Drawing.Color.DarkGray;
            this.tbx_TimDonNhap.Location = new System.Drawing.Point(472, 13);
            this.tbx_TimDonNhap.Name = "tbx_TimDonNhap";
            this.tbx_TimDonNhap.Size = new System.Drawing.Size(263, 32);
            this.tbx_TimDonNhap.TabIndex = 3;
            this.tbx_TimDonNhap.Text = "Nhập mã đơn nhập";
            // 
            // dgv_DanhSachDonNhap
            // 
            this.dgv_DanhSachDonNhap.BackgroundColor = System.Drawing.Color.White;
            this.dgv_DanhSachDonNhap.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_DanhSachDonNhap.Location = new System.Drawing.Point(3, 90);
            this.dgv_DanhSachDonNhap.Name = "dgv_DanhSachDonNhap";
            this.dgv_DanhSachDonNhap.RowHeadersWidth = 51;
            this.dgv_DanhSachDonNhap.RowTemplate.Height = 24;
            this.dgv_DanhSachDonNhap.Size = new System.Drawing.Size(1090, 325);
            this.dgv_DanhSachDonNhap.TabIndex = 2;
            this.dgv_DanhSachDonNhap.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_DanhSachDonNhap_CellClick);
            // 
            // tab_TaoDonNhap
            // 
            this.tab_TaoDonNhap.BackColor = System.Drawing.Color.White;
            this.tab_TaoDonNhap.Controls.Add(this.btn_HoanThanh);
            this.tab_TaoDonNhap.Controls.Add(this.groupBox1);
            this.tab_TaoDonNhap.Controls.Add(this.lbl_ThongTinDienThoai);
            this.tab_TaoDonNhap.Controls.Add(this.dgv_DanhSachDienThoai);
            this.tab_TaoDonNhap.Location = new System.Drawing.Point(4, 33);
            this.tab_TaoDonNhap.Name = "tab_TaoDonNhap";
            this.tab_TaoDonNhap.Padding = new System.Windows.Forms.Padding(3);
            this.tab_TaoDonNhap.Size = new System.Drawing.Size(1096, 689);
            this.tab_TaoDonNhap.TabIndex = 1;
            this.tab_TaoDonNhap.Text = "Tạo đơn nhập";
            // 
            // btn_HoanThanh
            // 
            this.btn_HoanThanh.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_HoanThanh.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_HoanThanh.Location = new System.Drawing.Point(635, 633);
            this.btn_HoanThanh.Name = "btn_HoanThanh";
            this.btn_HoanThanh.Size = new System.Drawing.Size(336, 32);
            this.btn_HoanThanh.TabIndex = 69;
            this.btn_HoanThanh.Text = "Hoàn thành";
            this.btn_HoanThanh.UseVisualStyleBackColor = false;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.tbx_GiaBan);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.btn_TaoImei);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.lbl_ImeiNgauNhien);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.tbx_GiaNhap);
            this.groupBox1.Controls.Add(this.btn_TaoDongMay);
            this.groupBox1.Controls.Add(this.cbx_ChonNhaCungCap);
            this.groupBox1.Controls.Add(this.cbx_ChonDongMay);
            this.groupBox1.Controls.Add(this.btn_TaoNhaCungCap);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btn_ThemSanPham);
            this.groupBox1.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.groupBox1.ForeColor = System.Drawing.SystemColors.GrayText;
            this.groupBox1.Location = new System.Drawing.Point(0, 6);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1097, 266);
            this.groupBox1.TabIndex = 29;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Chi tiết tạo";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label8.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label8.Location = new System.Drawing.Point(412, 205);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(41, 21);
            this.label8.TabIndex = 68;
            this.label8.Text = "VND";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label4.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label4.Location = new System.Drawing.Point(113, 175);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(63, 21);
            this.label4.TabIndex = 67;
            this.label4.Text = "Giá bán";
            // 
            // tbx_GiaBan
            // 
            this.tbx_GiaBan.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.tbx_GiaBan.Location = new System.Drawing.Point(117, 199);
            this.tbx_GiaBan.Name = "tbx_GiaBan";
            this.tbx_GiaBan.Size = new System.Drawing.Size(293, 32);
            this.tbx_GiaBan.TabIndex = 66;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label6.Location = new System.Drawing.Point(412, 136);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(41, 21);
            this.label6.TabIndex = 65;
            this.label6.Text = "VND";
            // 
            // btn_TaoImei
            // 
            this.btn_TaoImei.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_TaoImei.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_TaoImei.Location = new System.Drawing.Point(866, 51);
            this.btn_TaoImei.Name = "btn_TaoImei";
            this.btn_TaoImei.Size = new System.Drawing.Size(105, 32);
            this.btn_TaoImei.TabIndex = 64;
            this.btn_TaoImei.Text = "Mới";
            this.btn_TaoImei.UseVisualStyleBackColor = false;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label7.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label7.Location = new System.Drawing.Point(113, 105);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(72, 21);
            this.label7.TabIndex = 63;
            this.label7.Text = "Giá nhập";
            // 
            // lbl_ImeiNgauNhien
            // 
            this.lbl_ImeiNgauNhien.AutoSize = true;
            this.lbl_ImeiNgauNhien.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbl_ImeiNgauNhien.ForeColor = System.Drawing.Color.Black;
            this.lbl_ImeiNgauNhien.Location = new System.Drawing.Point(631, 55);
            this.lbl_ImeiNgauNhien.Name = "lbl_ImeiNgauNhien";
            this.lbl_ImeiNgauNhien.Size = new System.Drawing.Size(145, 24);
            this.lbl_ImeiNgauNhien.TabIndex = 62;
            this.lbl_ImeiNgauNhien.Text = "Imei ngẫu nhiên";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label5.Location = new System.Drawing.Point(631, 27);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(68, 21);
            this.label5.TabIndex = 61;
            this.label5.Text = "Tạo Imei";
            // 
            // tbx_GiaNhap
            // 
            this.tbx_GiaNhap.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.tbx_GiaNhap.Location = new System.Drawing.Point(117, 129);
            this.tbx_GiaNhap.Name = "tbx_GiaNhap";
            this.tbx_GiaNhap.Size = new System.Drawing.Size(293, 32);
            this.tbx_GiaNhap.TabIndex = 60;
            // 
            // btn_TaoDongMay
            // 
            this.btn_TaoDongMay.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_TaoDongMay.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_TaoDongMay.Location = new System.Drawing.Point(866, 129);
            this.btn_TaoDongMay.Name = "btn_TaoDongMay";
            this.btn_TaoDongMay.Size = new System.Drawing.Size(105, 32);
            this.btn_TaoDongMay.TabIndex = 54;
            this.btn_TaoDongMay.Text = "Mới";
            this.btn_TaoDongMay.UseVisualStyleBackColor = false;
            this.btn_TaoDongMay.Click += new System.EventHandler(this.btn_TaoDongMay_Click_1);
            // 
            // cbx_ChonNhaCungCap
            // 
            this.cbx_ChonNhaCungCap.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.cbx_ChonNhaCungCap.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.cbx_ChonNhaCungCap.FormattingEnabled = true;
            this.cbx_ChonNhaCungCap.IntegralHeight = false;
            this.cbx_ChonNhaCungCap.Location = new System.Drawing.Point(117, 51);
            this.cbx_ChonNhaCungCap.Name = "cbx_ChonNhaCungCap";
            this.cbx_ChonNhaCungCap.Size = new System.Drawing.Size(225, 32);
            this.cbx_ChonNhaCungCap.TabIndex = 55;
            // 
            // cbx_ChonDongMay
            // 
            this.cbx_ChonDongMay.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.cbx_ChonDongMay.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.cbx_ChonDongMay.FormattingEnabled = true;
            this.cbx_ChonDongMay.IntegralHeight = false;
            this.cbx_ChonDongMay.Location = new System.Drawing.Point(635, 129);
            this.cbx_ChonDongMay.Name = "cbx_ChonDongMay";
            this.cbx_ChonDongMay.Size = new System.Drawing.Size(225, 32);
            this.cbx_ChonDongMay.TabIndex = 51;
            // 
            // btn_TaoNhaCungCap
            // 
            this.btn_TaoNhaCungCap.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_TaoNhaCungCap.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_TaoNhaCungCap.Location = new System.Drawing.Point(348, 50);
            this.btn_TaoNhaCungCap.Name = "btn_TaoNhaCungCap";
            this.btn_TaoNhaCungCap.Size = new System.Drawing.Size(105, 32);
            this.btn_TaoNhaCungCap.TabIndex = 53;
            this.btn_TaoNhaCungCap.Text = "Mới";
            this.btn_TaoNhaCungCap.UseVisualStyleBackColor = false;
            this.btn_TaoNhaCungCap.Click += new System.EventHandler(this.btn_TaoNhaCungCap_Click_1);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label3.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label3.Location = new System.Drawing.Point(631, 105);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(119, 21);
            this.label3.TabIndex = 59;
            this.label3.Text = "Chọn dòng máy";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.ForeColor = System.Drawing.SystemColors.GrayText;
            this.label1.Location = new System.Drawing.Point(113, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(141, 21);
            this.label1.TabIndex = 57;
            this.label1.Text = "Chọn nhà cung cấp";
            // 
            // btn_ThemSanPham
            // 
            this.btn_ThemSanPham.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.btn_ThemSanPham.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btn_ThemSanPham.Location = new System.Drawing.Point(635, 199);
            this.btn_ThemSanPham.Name = "btn_ThemSanPham";
            this.btn_ThemSanPham.Size = new System.Drawing.Size(336, 32);
            this.btn_ThemSanPham.TabIndex = 56;
            this.btn_ThemSanPham.Text = "Thêm sản phẩm";
            this.btn_ThemSanPham.UseVisualStyleBackColor = false;
            // 
            // lbl_ThongTinDienThoai
            // 
            this.lbl_ThongTinDienThoai.AutoSize = true;
            this.lbl_ThongTinDienThoai.Font = new System.Drawing.Font("Calibri", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbl_ThongTinDienThoai.ForeColor = System.Drawing.SystemColors.GrayText;
            this.lbl_ThongTinDienThoai.Location = new System.Drawing.Point(6, 275);
            this.lbl_ThongTinDienThoai.Name = "lbl_ThongTinDienThoai";
            this.lbl_ThongTinDienThoai.Size = new System.Drawing.Size(217, 21);
            this.lbl_ThongTinDienThoai.TabIndex = 28;
            this.lbl_ThongTinDienThoai.Text = "Danh sách điện thoại đã thêm";
            // 
            // dgv_DanhSachDienThoai
            // 
            this.dgv_DanhSachDienThoai.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgv_DanhSachDienThoai.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_DanhSachDienThoai.Location = new System.Drawing.Point(8, 299);
            this.dgv_DanhSachDienThoai.Name = "dgv_DanhSachDienThoai";
            this.dgv_DanhSachDienThoai.RowHeadersWidth = 51;
            this.dgv_DanhSachDienThoai.RowTemplate.Height = 24;
            this.dgv_DanhSachDienThoai.Size = new System.Drawing.Size(1082, 316);
            this.dgv_DanhSachDienThoai.TabIndex = 27;
            // 
            // UC_DonNhap
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tcl_SanPham);
            this.Name = "UC_DonNhap";
            this.Size = new System.Drawing.Size(1104, 726);
            this.tcl_SanPham.ResumeLayout(false);
            this.tab_DanhSachDonNhap.ResumeLayout(false);
            this.tab_DanhSachDonNhap.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_ChiTietDonNhap)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_DanhSachDonNhap)).EndInit();
            this.tab_TaoDonNhap.ResumeLayout(false);
            this.tab_TaoDonNhap.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_DanhSachDienThoai)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public System.Windows.Forms.TabControl tcl_SanPham;
        public System.Windows.Forms.TabPage tab_DanhSachDonNhap;
        public System.Windows.Forms.Button btn_TìmDonNhap;
        public System.Windows.Forms.TextBox tbx_TimDonNhap;
        public System.Windows.Forms.DataGridView dgv_DanhSachDonNhap;
        public System.Windows.Forms.TabPage tab_TaoDonNhap;
        public System.Windows.Forms.Button btn_XoaDonNhap;
        public System.Windows.Forms.Button btn_SuaDonNhap;
        public System.Windows.Forms.DataGridView dgv_DanhSachDienThoai;
        public System.Windows.Forms.Label lbl_ThongTinDienThoai;
        public System.Windows.Forms.Label label10;
        public System.Windows.Forms.DataGridView dgv_ChiTietDonNhap;
        public System.Windows.Forms.Label label9;
        public System.Windows.Forms.Button btn_HoanThanh;
        public System.Windows.Forms.Label label8;
        public System.Windows.Forms.Label label4;
        public System.Windows.Forms.TextBox tbx_GiaBan;
        public System.Windows.Forms.Label label6;
        public System.Windows.Forms.Button btn_TaoImei;
        public System.Windows.Forms.Label label7;
        public System.Windows.Forms.Label lbl_ImeiNgauNhien;
        public System.Windows.Forms.Label label5;
        public System.Windows.Forms.TextBox tbx_GiaNhap;
        public System.Windows.Forms.Button btn_TaoDongMay;
        public System.Windows.Forms.ComboBox cbx_ChonNhaCungCap;
        public System.Windows.Forms.ComboBox cbx_ChonDongMay;
        public System.Windows.Forms.Button btn_TaoNhaCungCap;
        public System.Windows.Forms.Label label3;
        public System.Windows.Forms.Label label1;
        public System.Windows.Forms.Button btn_ThemSanPham;
        public System.Windows.Forms.GroupBox groupBox1;
    }
}

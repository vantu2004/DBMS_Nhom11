using DevExpress.Data.Filtering.Helpers;
using Nhom11.DB;
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
        DonHangDAO donHangDAO = new DonHangDAO();
        public UC_DonHang()
        {
            InitializeComponent();
            LoadDanhSachDonHang();
            LoadDanhSachDienThoaiCoSan();
            //LoadSDTNhanVien_vao_cbx();
            LoadSDTKhachHang_vao_cbx();
            LoadMaKhuyenMai_vao_cbx();
        }

        private void btn_TraGop_Click(object sender, EventArgs e)
        {
            form_SuaDonHang form_SuaDonHang = new form_SuaDonHang();
            

            string maDonHang = tbx_MaDonHang.Text;

           
            List<string> thongTinDonHang = donHangDAO.DienThongTinDonHang(maDonHang);

            //   kiểm tra nếu nhập đúng mã đơn bán thì fill, ko đúng thì thôi
            if (thongTinDonHang != null)
            {
                form_SuaDonHang.cbx_ChonNhanVien.Text = thongTinDonHang[13];
                form_SuaDonHang.cbx_ChonKhachHang.Text = thongTinDonHang[7];
                form_SuaDonHang.cbx_ChonKhuyenMai.Text = thongTinDonHang[9];

                string tongTien1DonHang = donHangDAO.TinhTongTien1DonHang(maDonHang);
                form_SuaDonHang.lbl_TongHoaDon.Text = tongTien1DonHang;

                form_SuaDonHang.ShowDialog();
            }
        }

        private void btn_KhachHangMoi_Click_1(object sender, EventArgs e)
        {
            form_TaoKhachHang form_TaoKhachHang = new form_TaoKhachHang();

            form_TaoKhachHang.ShowDialog();
        }

        private void LoadDanhSachDonHang()
        {
            try
            {
                // Lấy dữ liệu từ view
                DataTable dt = donHangDAO.GetDanhSachDonHang();
                // Gán dữ liệu vào DataGridView
                dgv_DanhSachDonHang.DataSource = dt; 
            }
            catch (Exception ex)
            {
                // Hiển thị thông báo lỗi nếu có
                MessageBox.Show("Lỗi: " + ex.Message); 
            }
        }

        private void dgv_DanhSachDonHang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            // Kiểm tra nếu click vào hàng hợp lệ
            if (e.RowIndex >= 0)
            {
                // Lấy dữ liệu từ dòng đã chọn
                var selectedRow = dgv_DanhSachDonHang.Rows[e.RowIndex];
                var maDonBan = selectedRow.Cells["Mã đơn bán"].Value;

                // Lấy % chiết khấu
                var chietKhau = selectedRow.Cells["Chiết khấu"].Value;
                double double_chietKhau = 0;

                // Kiểm tra và chuyển đổi giá trị chiết khấu
                if (chietKhau != null && !string.IsNullOrEmpty(chietKhau.ToString()))
                {
                    bool isDouble = double.TryParse(chietKhau.ToString(), out double_chietKhau);
                    if (!isDouble)
                    {
                        MessageBox.Show("Chiết khấu không phải là giá trị hợp lệ.");
                        return;
                    }
                }

                try
                {
                    // Lấy dữ liệu từ view
                    DataTable dt = donHangDAO.getChiTietDonHang(maDonBan.ToString());
                    // Gán dữ liệu vào DataGridView
                    dgv_ChiTietDonHang.DataSource = dt;

                    // Tính toán tổng tiền (chưa trừ khuyến mãi) 1 đơn
                    double tongTien1DonHang = Convert.ToDouble(donHangDAO.TinhTongTien1DonHang(maDonBan.ToString()));
                    lbl_TongHoaDon_DanhSach.Text = tongTien1DonHang.ToString();

                    lbl_TongHoaDonSauKM_DanhSach.Text = (tongTien1DonHang - double_chietKhau * tongTien1DonHang).ToString();
                }
                catch (Exception ex)
                {
                    // Hiển thị thông báo lỗi nếu có
                    MessageBox.Show("Lỗi: " + ex.Message);
                }
            }
        }


        private void LoadDanhSachDienThoaiCoSan()
        {
            try
            {
                // Lấy dữ liệu từ view
                DataTable dt = donHangDAO.GetDanhSachDienThoaiCoSan();
                // Gán dữ liệu vào DataGridView
                dgv_DanhSachDienThoaiSanCo.DataSource = dt;

                // Kiểm tra xem đã có cột Button chưa, nếu chưa thì thêm vào
                if (!dgv_DanhSachDienThoaiSanCo.Columns.Contains("ActionButton"))
                {
                    // Tạo cột Button
                    DataGridViewButtonColumn buttonColumn = new DataGridViewButtonColumn();

                    buttonColumn.Name = "col_ThemDienThoai";
                    buttonColumn.HeaderText = "";
                    buttonColumn.Text = "Thêm";
                    buttonColumn.UseColumnTextForButtonValue = true; 

                    // Thêm cột Button vào DataGridView
                    dgv_DanhSachDienThoaiSanCo.Columns.Add(buttonColumn);

                    // Gọi event click cho button
                    dgv_DanhSachDienThoaiSanCo.CellContentClick += dgv_DanhSachDienThoaiSanCo_CellContentClick;
                }
            }
            catch (Exception ex)
            {
                // Hiển thị thông báo lỗi nếu có
                MessageBox.Show("Lỗi: " + ex.Message);
            }

        }

        private void dgv_DanhSachDienThoaiSanCo_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Kiểm tra nếu cột được click là cột Button
            if (e.ColumnIndex == dgv_DanhSachDienThoaiSanCo.Columns["col_ThemDienThoai"].Index && e.RowIndex >= 0)
            {
                // Lấy Imei điện thoại của hàng được click
                string maDienThoai = dgv_DanhSachDienThoaiSanCo.Rows[e.RowIndex].Cells["Mã Imei"].Value.ToString();

                // Xử lý logic khi nút bấm được click, ví dụ: hiện chi tiết hoặc xử lý hàng đó
                MessageBox.Show("Bạn đã chọn điện thoại: " + maDienThoai);
            }
        }

        private void btn_TìmDonHang_Click(object sender, EventArgs e)
        {
            String soDienThoai = tbx_TimDonHang.Text;

            try
            {
                // Lấy dữ liệu từ view
                DataTable dt = donHangDAO.GetDanhSachDonHangMotKhach(soDienThoai);
                // Gán dữ liệu vào DataGridView
                dgv_DanhSachDonHang.DataSource = dt;
            }
            catch (Exception ex)
            {
                // Hiển thị thông báo lỗi nếu có
                MessageBox.Show("Lỗi: " + ex.Message);
            }
        }

        //private void LoadSDTNhanVien_vao_cbx()
        //{
        //    // Xóa các mục cũ nếu có
        //    cbx_ChonNhanVien.Items.Clear();

        //    // Lấy danh sách số điện thoại
        //    List<string> phoneNumbers = donHangDAO.GetDanhSachDienThoaiNhanVien();

        //    // Thêm số điện thoại vào ComboBox
        //    foreach (string phoneNumber in phoneNumbers)
        //    {
        //        cbx_ChonNhanVien.Items.Add(phoneNumber);
        //    }
        //}

        private void LoadSDTKhachHang_vao_cbx()
        {
            // Xóa các mục cũ nếu có
            cbx_ChonKhachHang.Items.Clear();

            // Lấy danh sách số điện thoại
            List<string> phoneNumbers = donHangDAO.GetDanhSachDienThoaiKhachHang();

            // Thêm số điện thoại vào ComboBox
            foreach (string phoneNumber in phoneNumbers)
            {
                cbx_ChonKhachHang.Items.Add(phoneNumber);
            }
        }

        private void LoadMaKhuyenMai_vao_cbx()
        {
            // Xóa các mục cũ nếu có
            cbx_ChonKhuyenMai.Items.Clear();

            // Lấy danh sách mã khuyến mãi
            List<string> maKhuyenMais = donHangDAO.GetDanhSachMaKhuyenMai();

            // Thêm mã khuyến mãi vào ComboBox
            foreach (string maKhuyenMai in maKhuyenMais)
            {
                cbx_ChonKhuyenMai.Items.Add(maKhuyenMai);
            }
        }

        //  LỖI LOGIC
        private void btn_XoaDonHang_Click(object sender, EventArgs e)
        {
            string maDonHang = tbx_MaDonHang.Text;
            donHangDAO.XoaDonHangTheoMa(maDonHang);
        }
    }
}

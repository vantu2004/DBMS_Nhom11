using Nhom11.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Nhom11.DB
{
    internal class DonHangDAO
    {
        static SqlCommand sqlCommand; // dung de truy van cau lenh insert, delete,...
        static SqlDataReader dataReader;

        public DonHangDAO() { }

        public DataTable GetDanhSachDonHang()
        {
            DataTable dt = new DataTable();
            string query = "SELECT * FROM Dgv_DanhSachDonHang"; 

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                sqlCommand = new SqlCommand(query, conn);
                try
                {
                    conn.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
                    adapter.Fill(dt);
                }
                catch (Exception ex)
                {
                    throw new Exception("Không thể lấy danh sách đơn hàng: " + ex.Message);
                }
            }

            return dt; 
        }

        public DataTable getChiTietDonHang(string maDonBan)
        {
            DataTable dt = new DataTable();
            string query = $"SELECT * FROM Dgv_ChiTietDonHang WHERE [Mã đơn bán] = '{maDonBan}'";

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                sqlCommand = new SqlCommand(query, conn);

                try
                {
                    conn.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
                    adapter.Fill(dt); 
                }
                catch (Exception ex)
                {
                    throw new Exception("Không thể lấy danh sách chi tiết đơn hàng: " + ex.Message);
                }
            }

            return dt; 
        }

        //  liệt kê danh sách điện thoại sẵn có, nếu có bất kỳ thuộc tính nào bị null sẽ ko hiện
        public DataTable GetDanhSachDienThoaiCoSan()
        {
            DataTable dt = new DataTable();
            string query = "SELECT * FROM Dgv_DanhSachDienThoaiSanCo";

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                sqlCommand = new SqlCommand(query, conn);
                try
                {
                    conn.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
                    adapter.Fill(dt);

                    // Tạo danh sách để lưu các hàng cần xóa
                    List<DataRow> rowsToDelete = new List<DataRow>();

                    // Duyệt qua từng hàng và kiểm tra giá trị null
                    foreach (DataRow row in dt.Rows)
                    {
                        foreach (DataColumn col in dt.Columns)
                        {
                            if (row[col] == DBNull.Value)
                            {
                                // Nếu có null, thêm vào danh sách xóa
                                rowsToDelete.Add(row);
                                break;
                            }
                        }
                    }

                    // Xóa các hàng có giá trị null
                    foreach (DataRow row in rowsToDelete)
                    {
                        dt.Rows.Remove(row);
                    }
                }
                catch (Exception ex)
                {
                    throw new Exception("Không thể lấy danh sách điện thoại có sẵn: " + ex.Message);
                }
            }

            return dt;
        }

        public DataTable GetDanhSachDonHangMotKhach(string soDienThoai)
        {
            DataTable dt = new DataTable();
            string query = $"SELECT * FROM dbo.Fn_TimKiemTheoSoDienThoai('{soDienThoai}');";

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                sqlCommand = new SqlCommand(query, conn);
                try
                {
                    conn.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
                    adapter.Fill(dt);
                }
                catch (Exception ex)
                {
                    throw new Exception("Không thể lấy danh sách đơn hàng: " + ex.Message);
                }
            }

            return dt;
        }

        //  hàm dùng chung cho GetDanhSachDienThoaiNhanVien, GetDanhSachDienThoaiKhachHang, GetDanhSachMaKhuyenMai
        private List<string> GetDanhSachTheoHam(string sqlFunctionName)
        {
            List<string> resultList = new List<string>();
            string querry = $"SELECT * FROM {sqlFunctionName}";

            using (SqlConnection connection = DBConnection.GetSqlConnection())
            {
                try
                {
                    connection.Open();
                    
                    sqlCommand = new SqlCommand(querry, connection);

                    // Thực hiện truy vấn
                    SqlDataReader reader = sqlCommand.ExecuteReader();

                    if (sqlFunctionName == "dbo.Fn_LayTatCaMaKhuyenMai()")
                    {
                        // Thêm từng số điện thoại hoặc mã khuyến mãi vào danh sách
                        while (reader.Read())
                        {
                            string value = reader["Ma_khuyen_mai"].ToString();
                            resultList.Add(value); // Thêm vào danh sách
                        }
                    }    
                    else
                    {
                        // Thêm từng số điện thoại hoặc mã khuyến mãi vào danh sách
                        while (reader.Read())
                        {
                            string value = reader["SDT"].ToString();
                            resultList.Add(value); // Thêm vào danh sách
                        }
                    }    


                    reader.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi: " + ex.Message);
                }
            }

            return resultList;
        }

        ////  viết trong này để cbx trong form_SuaDonHang và cbx trong UC_DonHang đều dùng được
        //public List<string> GetDanhSachDienThoaiNhanVien()
        //{
        //    return GetDanhSachTheoHam("dbo.Fn_LayTatCaSoDienThoaiNhanVien()");
        //}
        //  viết trong này để cbx trong form_SuaDonHang và cbx trong UC_DonHang đều dùng được
        public List<string> GetDanhSachDienThoaiKhachHang()
        {
            return GetDanhSachTheoHam("dbo.Fn_LayTatCaSoDienThoaiKhachHang()");
        }
        //  viết trong này để cbx trong form_SuaDonHang và cbx trong UC_DonHang đều dùng được
        public List<string> GetDanhSachMaKhuyenMai()
        {
            return GetDanhSachTheoHam("dbo.Fn_LayTatCaMaKhuyenMai()");
        }


        //  LỖI LOGIC
        public void XoaDonHangTheoMa(string maDonHang)
        {
            string query = $"EXEC [dbo].[XoaDonBanTheoMa] @MaDonBan = '{maDonHang}';";

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                sqlCommand = new SqlCommand(query, conn);
                try
                {
                    conn.Open();
                    // Thực thi câu lệnh
                    sqlCommand.ExecuteNonQuery(); 
                    MessageBox.Show("Xóa thành công");
                }
                catch (Exception ex)
                {
                    throw new Exception("Không thể xóa: " + ex.Message);
                }
            }
        }

        //  tạo mới khách hàng
        public void themKhachHang(KhachHang khachHang)
        {
            // Gọi stored procedure để thêm khách hàng
            string query = "EXEC [dbo].[ThemKhachHang] @Ma_khach_hang, @SDT, @Ten_khach_hang, @Dia_chi, @Gmail;";

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                using (SqlCommand sqlCommand = new SqlCommand(query, conn))
                {
                    // Sử dụng tham số để tránh SQL Injection
                    sqlCommand.Parameters.AddWithValue("@Ma_khach_hang", khachHang.MaKhachHang); 
                    sqlCommand.Parameters.AddWithValue("@SDT", khachHang.SDT);
                    sqlCommand.Parameters.AddWithValue("@Ten_khach_hang", khachHang.TenKhachHang);
                    sqlCommand.Parameters.AddWithValue("@Dia_chi", khachHang.DiaChi);
                    sqlCommand.Parameters.AddWithValue("@Gmail", khachHang.Gmail);

                    try
                    {
                        conn.Open();
                        sqlCommand.ExecuteNonQuery(); // Thực thi câu lệnh
                        MessageBox.Show("Thêm khách hàng thành công.");
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Không thể thêm khách hàng: " + ex.Message);
                    }
                }
            }
        }

        //  lấy thông tin đơn hàng để fill vào khi sửa đơn hàng
        public List<string> DienThongTinDonHang(string maDonHang)
        {
            List<string> resultList = new List<string>();
            string query = $"SELECT * FROM dbo.GetOrderDetails('{maDonHang}')";

            using (SqlConnection connection = DBConnection.GetSqlConnection())
            {
                try
                {
                    connection.Open();

                    SqlCommand sqlCommand = new SqlCommand(query, connection);

                    // Thực hiện truy vấn
                    SqlDataReader dataReader = sqlCommand.ExecuteReader();

                    // Đọc dữ liệu từ reader và thêm vào list
                    if (dataReader.Read()) // Kiểm tra xem có bản ghi nào không
                    {
                        resultList.Add(dataReader["Mã đơn bán"].ToString());
                        resultList.Add(dataReader["Ngày tạo đơn"].ToString());
                        resultList.Add(dataReader["Số tiền khách đã trả"].ToString());
                        resultList.Add(dataReader["Số lượng điện thoại"].ToString());
                        resultList.Add(dataReader["Trị giá"].ToString());
                        resultList.Add(dataReader["Trạng thái"].ToString());
                        resultList.Add(dataReader["Mã khách hàng"].ToString());
                        resultList.Add(dataReader["Số điện thoại khách hàng"].ToString());
                        resultList.Add(dataReader["Tên khách hàng"].ToString());
                        resultList.Add(dataReader["Mã khuyến mãi"].ToString());
                        resultList.Add(dataReader["Chiết khấu"].ToString());
                        resultList.Add(dataReader["Mã nhân viên"].ToString());
                        resultList.Add(dataReader["Tên nhân viên"].ToString());
                        resultList.Add(dataReader["Số điện thoại nhân viên"].ToString());
                    }
                    else
                    {
                        return null; // Không tìm thấy bản ghi, trả về null
                    }

                    dataReader.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi: " + ex.Message);
                }
            }

            return resultList;
        }

        // Tính tổng tiền 1 đơn hàng chưa trừ khuyến mãi
        public string TinhTongTien1DonHang(string maDonBan)
        {
            // Gọi hàm để tính tổng tiền
            string query = $"SELECT dbo.Fn_TongTien1DonHang('{maDonBan}') AS NetTotalAmount";
            string tongTien = "0";

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                using (SqlCommand sqlCommand = new SqlCommand(query, conn))
                {
                    try
                    {
                        conn.Open();
                        // Sử dụng ExecuteScalar để lấy giá trị trả về
                        var result = sqlCommand.ExecuteScalar();
                        tongTien = result.ToString();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Lỗi tính toán: " + ex.Message);
                    }
                }
            }
            return tongTien;
        }


        //  lấy chiết khấu từ mã khuyến mãi truyền vào
        public double GetChietKhau(string maKhuyenMai)
        {
            string query = $"SELECT dbo.Fn_LayChietKhau('{maKhuyenMai}') AS ChietKhau";

            double chietKhau = 0;

            using (SqlConnection conn = DBConnection.GetSqlConnection())
            {
                using (SqlCommand sqlCommand = new SqlCommand(query, conn))
                {
                    try
                    {
                        conn.Open();
                        // Sử dụng ExecuteScalar để lấy giá trị trả về
                        var result = sqlCommand.ExecuteScalar();
                        chietKhau = Convert.ToDouble(result.ToString());
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Lỗi tính toán: " + ex.Message);
                    }
                }
            }
            return chietKhau;
        }
    }
}

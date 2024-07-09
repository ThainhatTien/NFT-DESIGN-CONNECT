/*
 * package com.web.app.service;
 * 
 * 
 * import jakarta.servlet.http.HttpServletRequest; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service; import
 * java.io.UnsupportedEncodingException; import java.math.BigDecimal; import
 * java.net.URLEncoder; import java.nio.charset.StandardCharsets; import
 * java.text.SimpleDateFormat; import java.util.*;
 * 
 * @Service public class PaymentService {
 * 
 * @Autowired private CartService cartService;
 * 
 * public String createPayment(HttpServletRequest req,CartDto cart) throws
 * UnsupportedEncodingException { Integer amount = (int) (cart.getTotalAmount()
 * * 100L); // Số tiền thanh toán String orderType = "other"; // Loại đơn hàng
 * String vnp_TxnRef = Config.getRandomNumber(8); // Mã giao dịch ngẫu nhiên
 * String vnp_IpAddr = Config.getIpAddress(req); // Địa chỉ IP của người dùng
 * String vnp_TmnCode = Config.vnp_TmnCode; // Mã Terminal
 * 
 * // Khởi tạo các tham số gửi đến VNPAY Map<String, String> vnp_Params = new
 * HashMap<>(); vnp_Params.put("vnp_Version", Config.vnp_Version);
 * vnp_Params.put("vnp_Command", Config.vnp_Command);
 * vnp_Params.put("vnp_TmnCode", vnp_TmnCode); vnp_Params.put("vnp_Amount",
 * String.valueOf(amount)); vnp_Params.put("vnp_CurrCode", "VND");
 * vnp_Params.put("vnp_BankCode", "NCB"); vnp_Params.put("vnp_TxnRef",
 * vnp_TxnRef); vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang:" +
 * vnp_TxnRef); vnp_Params.put("vnp_Locale", "vn");
 * vnp_Params.put("vnp_OrderType", orderType); vnp_Params.put("vnp_ReturnUrl",
 * Config.vnp_ReturnUrl); vnp_Params.put("vnp_IpAddr", vnp_IpAddr);
 * 
 * // Định dạng ngày giờ Calendar cld =
 * Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7")); SimpleDateFormat
 * formatter = new SimpleDateFormat("yyyyMMddHHmmss"); String vnp_CreateDate =
 * formatter.format(cld.getTime()); vnp_Params.put("vnp_CreateDate",
 * vnp_CreateDate);
 * 
 * // Thêm thời gian hết hạn cld.add(Calendar.MINUTE, 15); String vnp_ExpireDate
 * = formatter.format(cld.getTime()); vnp_Params.put("vnp_ExpireDate",
 * vnp_ExpireDate);
 * 
 * // Tạo chuỗi dữ liệu và chuỗi truy vấn List<String> fieldNames = new
 * ArrayList<>(vnp_Params.keySet()); Collections.sort(fieldNames); StringBuilder
 * hashData = new StringBuilder(); StringBuilder query = new StringBuilder();
 * Iterator<String> itr = fieldNames.iterator(); while (itr.hasNext()) { String
 * fieldName = itr.next(); String fieldValue = vnp_Params.get(fieldName); if
 * (fieldValue != null && fieldValue.length() > 0) {
 * hashData.append(fieldName).append('=') .append(URLEncoder.encode(fieldValue,
 * StandardCharsets.US_ASCII.toString()));
 * query.append(URLEncoder.encode(fieldName,
 * StandardCharsets.US_ASCII.toString())).append('=')
 * .append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
 * if (itr.hasNext()) { query.append('&'); hashData.append('&'); } } }
 * 
 * // Tạo URL thanh toán String queryUrl = query.toString(); String
 * vnp_SecureHash = Config.hmacSHA512(Config.secretKey, hashData.toString());
 * queryUrl += "&vnp_SecureHash=" + vnp_SecureHash; return Config.vnp_PayUrl +
 * "?" + queryUrl; } }
 */
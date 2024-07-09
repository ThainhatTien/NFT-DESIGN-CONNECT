package com.web.app.service;

import java.io.File;
import java.nio.file.Path;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;

@Service
public class ParamService {
	@Autowired
	HttpServletRequest request;
	@Autowired
	ServletContext application;

	/**
	 * Đọc chuỗi giá trị của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public String getString(String name, String defaultValue) {
		String value = request.getParameter(name);
		if (value.isEmpty()) {
			return defaultValue;
		}
		return value;
	}

	/**
	 * Đọc số nguyên giá trị của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public int getInt(String name, int defaultValue) {
		String value = request.getParameter(name);
		if (value.isBlank()) {
			return defaultValue;
		}
		return Integer.valueOf(value);
	}

	/**
	 * Đọc số thực giá trị của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public double getDouble(String name, double defaultValue) {
		String value = request.getParameter(name);
		if (value.isBlank()) {
			return defaultValue;
		}
		return Double.valueOf(value);
	}

	/**
	 * Đọc giá trị boolean của tham số
	 * 
	 * @param name         tên tham số
	 * @param defaultValue giá trị mặc định
	 * @return giá trị tham số hoặc giá trị mặc định nếu không tồn tại
	 */
	public boolean getBoolean(String name, boolean defaultValue) {
		String value = request.getParameter(name);
		if (value == null) {
			return defaultValue;
		}
		return Boolean.valueOf(true);
	}

	/**
	 * Đọc giá trị thời gian của tham số
	 * 
	 * @param name    tên tham số
	 * @param pattern là định dạng thời gian
	 * @return giá trị tham số hoặc null nếu không tồn tại
	 * @throws RuntimeException lỗi sai định dạng
	 */
	public Date getDate(String name, String pattern) {
		String date = request.getParameter(name);
		if (!date.isBlank()) {
			SimpleDateFormat sdf = new SimpleDateFormat(pattern);
			Date value = null;
			try {
				value = sdf.parse(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return value;
		}
		return null;
	}

	/**
	 * Lưu file upload vào thư mục
	 * 
	 * @param file chứa file upload từ client
	 * @param path đường dẫn tính từ webroot
	 * @return đối tượng chứa file đã lưu hoặc null nếu không có file upload
	 * @throws RuntimeException lỗi lưu file
	 */
	public File save(MultipartFile multipartFile, String path) {
		try {
			if (!multipartFile.isEmpty()) {
				String pathApp = application.getRealPath("/");
				File file = new File(pathApp + path + "/" + multipartFile.getOriginalFilename());
				multipartFile.transferTo(Path.of(file.getAbsolutePath()));
				return file;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/*
	 * public File save(String dataBase64, String path, String name) { String[]
	 * strings = dataBase64.split(","); String extension; switch (strings[0]) { case
	 * "data:image/jpeg;base64": extension = "jpeg"; break; case
	 * "data:image/gif;base64": extension = "gif"; break; case
	 * "data:image/png;base64": extension = "png"; break; default: extension =
	 * "jpg"; break; } byte[] data =
	 * DatatypeConverter.parseBase64Binary(strings[1]); String pathApp =
	 * application.getRealPath("/"); File file = new File(pathApp + path + "/" +
	 * name + "." + extension); try (OutputStream outputStream = new
	 * BufferedOutputStream(new FileOutputStream(file))) { outputStream.write(data);
	 * } catch (IOException e) { e.printStackTrace(); } return file; }
	 */
}

package com.biz.ajax.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.biz.ajax.vo.ProductVO;

@Service
public class ProductService {

	String strFileName = "product.txt";
	

	public List<ProductVO> readP() {

		ClassPathResource rs = new ClassPathResource(strFileName);

		InputStreamReader is;
		BufferedReader buffer;

		try {
			is = new InputStreamReader(rs.getInputStream());
			buffer = new BufferedReader(is);
			
			List<ProductVO> pList = new ArrayList<ProductVO>();

			while (true) {

				String reader = buffer.readLine();
				if (reader == null)
					break;

				String[] strSp = reader.split(":");

				ProductVO vo = new ProductVO();

				vo.setP_code(strSp[0]);
				vo.setP_cname(strSp[1]);

				if (strSp[2].equals("1")) {
					vo.setP_vat("과세");
				} else {
					vo.setP_vat("면세");
				}

				vo.setP_iprice(Integer.valueOf(strSp[3]));
				vo.setP_oprice(Integer.valueOf(strSp[4]));

				pList.add(vo);

			}

			buffer.close();
			is.close();
			return pList;

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;

	}
}

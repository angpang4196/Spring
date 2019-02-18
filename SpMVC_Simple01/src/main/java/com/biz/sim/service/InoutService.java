package com.biz.sim.service;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import com.biz.sim.vo.InoutVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class InoutService {

	String fileName = "inout.txt";
	List<InoutVO> ioList = new ArrayList<InoutVO>();

	/*
	 * inout.txt 파일을 읽어서 각 라인을 split으로 분해한 후 항목별로 vo에 담고, 
	 * List<InoutVO>에 추가해서 상품매입매출 List를 생성
	 */
	public List<InoutVO> getInout() {

		// src/main/resources 폴더에 있는 fileName 정보를 가져와라
		ClassPathResource rs = new ClassPathResource(fileName);

		// FileReader 의 새로운 버전( 1.8 이상에서 파일이나 네트워크를 통해서 정보를 읽을 때 사용하는 class )
		InputStreamReader is;
		BufferedReader buffer;

		try {
			is = new InputStreamReader(rs.getInputStream());
			buffer = new BufferedReader(is);

			while (true) {
				String reader = buffer.readLine();

				if (reader == null)
					break;

				String[] strSp = reader.split(":");

				InoutVO vo = new InoutVO();

				vo.setIo_date(strSp[0]);
				vo.setIo_time(strSp[1] + "시 " + strSp[2] + "분 " + strSp[3] + "초");
				vo.setIo_cname(strSp[4]);
				vo.setIo_check(strSp[5]);
				vo.setIo_price(Integer.valueOf(strSp[6]));
				vo.setIo_su(Integer.valueOf(strSp[7]));
				
				log.debug(vo.toString());
				
				ioList.add(vo);
			}

			buffer.close();
			is.close();

			return ioList;

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;

	}

}

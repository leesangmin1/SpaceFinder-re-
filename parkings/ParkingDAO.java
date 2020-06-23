package com.shopping.persistence;

import java.util.List;

import com.shopping.domain.ParkingVO;

public interface ParkingDAO {

		public void ParkingModify(ParkingVO vo) throws Exception;
		
		public List<ParkingVO> showLocateList() throws Exception;
}

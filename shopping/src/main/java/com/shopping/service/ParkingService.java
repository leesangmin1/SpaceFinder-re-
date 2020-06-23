package com.shopping.service;

import java.util.List;

import com.shopping.domain.ParkingVO;

public interface ParkingService {
	
	public void ParkingModify(ParkingVO vo) throws Exception;
	
	public List<ParkingVO> showLocateList() throws Exception;
}
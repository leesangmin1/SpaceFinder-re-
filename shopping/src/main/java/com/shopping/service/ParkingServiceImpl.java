package com.shopping.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.shopping.domain.ParkingVO;
import com.shopping.persistence.ParkingDAO;

@Service
public class ParkingServiceImpl implements ParkingService{

	@Inject
	private ParkingDAO dao;
	
	@Override
	public void ParkingModify(ParkingVO vo) throws Exception {
		dao.ParkingModify(vo);
	}

	@Override
	public List<ParkingVO> showLocateList() throws Exception {
		return dao.showLocateList();
	}
}
package com.shopping.service;

import java.util.List;

<<<<<<< HEAD
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.shopping.domain.ParkingVO;
import com.shopping.persistence.ParkingDAO;

@Service
public class ParkingServiceImpl implements ParkingService{

	@Inject
=======
import com.shopping.domain.ParkingVO;
import com.shopping.persistence.ParkingDAO;

public class ParkingServiceImpl implements ParkingService{

>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c
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

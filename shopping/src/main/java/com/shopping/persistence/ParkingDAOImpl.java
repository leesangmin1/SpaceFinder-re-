package com.shopping.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
<<<<<<< HEAD
import org.springframework.stereotype.Repository;

import com.shopping.domain.ParkingVO;

@Repository
=======

import com.shopping.domain.ParkingVO;

>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c
public class ParkingDAOImpl implements ParkingDAO {
	
	@Inject
	private SqlSession sql;
	
<<<<<<< HEAD
	private static String namespace = "com.shopping.mappers.parkingMapper";
=======
	private static String namespace = "com.shopping.mappers.pakingMapper";
>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c

	@Override
	public void ParkingModify(ParkingVO vo) throws Exception {
		sql.update(namespace + ".ParkingModify", vo);
	}

	@Override
	public List<ParkingVO> showLocateList() throws Exception {
		return sql.selectList(namespace + ".showLocateList");
	}

}

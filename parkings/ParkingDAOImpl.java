package com.shopping.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.shopping.domain.ParkingVO;

public class ParkingDAOImpl implements ParkingDAO {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.shopping.mappers.pakingMapper";

	@Override
	public void ParkingModify(ParkingVO vo) throws Exception {
		sql.update(namespace + ".ParkingModify", vo);
	}

	@Override
	public List<ParkingVO> showLocateList() throws Exception {
		return sql.selectList(namespace + ".showLocateList");
	}

}

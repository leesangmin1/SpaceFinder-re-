package com.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.ResponseBody;
=======
>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c

import com.shopping.domain.ParkingVO;
import com.shopping.service.ParkingService;

@Controller
@RequestMapping("/parking/*")
public class ParkingController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
<<<<<<< HEAD
	ParkingService service;

	@ResponseBody
=======
	ParkingService parkingService;

>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public Map<String, String> selectLocate() throws Exception {
		logger.info("show");
		
<<<<<<< HEAD
		List<ParkingVO> list = service.showLocateList();
		Map<String, String> map = new HashMap<String, String>();
		
		for (int i=0; i<5; i++) {
			map.put(list.get(i).getlocate(), list.get(i).getIsUse());
		}
		
		return map;
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyLocate(ParkingVO vo, HttpServletRequest request) throws Exception {
=======
		List<ParkingVO> list = parkingService.showLocateList();
		Map<String, String> map = new HashMap<String, String>();
		
		for (int i=0; i<5; i++) {
			map.put(list.get(i).getCheck(), list.get(i).getCheck());
		}
		return map;
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyLocate(ParkingVO vo, HttpServletRequest request) throws Exception {
>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c
		logger.info("modify parking");
		
		String locate =request.getParameter("locate");
		String isUse =request.getParameter("isUse");
		
<<<<<<< HEAD
		vo.setIsUse(isUse);
		vo.setlocate(locate);
		
		service.ParkingModify(vo);
		
		return "home";
=======
		vo.setCheck(isUse);
		vo.setlocate(locate);
		
		parkingService.ParkingModify(vo);
>>>>>>> 434614a8508ad7801bb6f9547ad2333907be0b6c
	}
}

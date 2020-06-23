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
import org.springframework.web.bind.annotation.ResponseBody;

import com.shopping.domain.ParkingVO;
import com.shopping.service.ParkingService;

@Controller
@RequestMapping("/parking/*")
public class ParkingController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
	ParkingService service;

	@ResponseBody
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public Map<String, String> selectLocate() throws Exception {
		logger.info("show");
		
		List<ParkingVO> list = service.showLocateList();
		Map<String, String> map = new HashMap<String, String>();
		
		for (int i=0; i<5; i++) {
			map.put(list.get(i).getlocate(), list.get(i).getIsUse());
		}
		
		return map;
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyLocate(ParkingVO vo, HttpServletRequest request) throws Exception {
		logger.info("modify parking");
		
		String locate =request.getParameter("locate");
		String isUse =request.getParameter("isUse");
		
		vo.setIsUse(isUse);
		vo.setlocate(locate);
		
		service.ParkingModify(vo);
		
		return "home";
	}
}
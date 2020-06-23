package com.shopping.controller;

import java.io.File;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.shopping.domain.GoodPVO;
import com.shopping.domain.GpCategoryVO;
import com.shopping.service.GpService;
import com.shopping.utils.MultiFiles;
import com.shopping.utils.UploadFileUtils;

@Controller
@RequestMapping("/placeClub/*")
public class PlaceClubController {
	
	private static final Logger logger = LoggerFactory.getLogger(PlaceClubController.class);
	
	
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
		// 클럽 인덱스
		@RequestMapping(value = "/clubIndex", method = RequestMethod.GET)
		public String home(Locale locale, Model model) { 
			logger.info("get index", locale);
			return "placeClub/clubIndex";
		}
		
		// 클럽 인덱스
		@RequestMapping(value = "/clubIndex", method = RequestMethod.POST)
		public String postClubIndex(HttpServletRequest req) throws Exception {


			return "redirect:/placeClub/clubIndex";
		}
		
		//클럽 검색
		
		//클럽 리스트
		
		// 카테고리 리스트
		@RequestMapping(value = "/clubReg", method = RequestMethod.GET)
		public void getClubRegister(Model model) throws Exception {
			logger.info("get gp category");

//			List<GpCategoryVO> catelist = gpService.cateList();

//			model.addAttribute("catelist", catelist);
		}
		
		//클럽 만들기
		@RequestMapping(value = "clubReg", method = RequestMethod.POST)
		public String postClubRegister(GoodPVO vo, MultiFiles multiFiles, HttpServletRequest req) throws Exception {

			String imgUploadPath = uploadPath + File.separator + "imgUpload";
			String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
			String fileName = null;
			
			int i=0;
			for (MultipartFile file : multiFiles.getGP_image()) {
				if (file != null) {
					fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(),
							ymdPath);
				} else {
					fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
				}
				switch(i) {
				case 0:
					vo.setGP_image1(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
					vo.setGP_ThumbImg1(
							File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
					break;
				case 1:
					vo.setGP_image2(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
					vo.setGP_ThumbImg2(
							File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
					break;
				case 2:
					vo.setGP_image3(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
					vo.setGP_ThumbImg3(
							File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
					break;
				case 3:
					vo.setGP_image4(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
					vo.setGP_ThumbImg4(
							File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
					break;
				}
				i++;
			}

			String runtime = "평일 : " + req.getParameter("weekday_on_time") + " ~ " + req.getParameter("weekday_close_time")
					+ "/" + "주말(휴일) : " + req.getParameter("weekend_on_time") + " ~ "
					+ req.getParameter("weekend_close_time");
			vo.setGP_Runtime(runtime);


			return "redirect:/placeClub/clubReg";
		}
		

}

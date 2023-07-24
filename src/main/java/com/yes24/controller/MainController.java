package com.yes24.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yes24.dao.TransferBoardDAO;
import com.yes24.service.ShowService;
import com.yes24.service.TransferBoardService;
import com.yes24.vo.ShowVO;
import com.yes24.vo.TransferBoardVO;

@Controller
public class MainController {

	@Autowired
	private ShowService showService;
	@Autowired
	private TransferBoardService transferBoardService;

	// ------------------- 메인페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) {
		System.out.println("main()");

		// 나중에 개봉예정작으로 수정해야함5
		List<ShowVO> showList = showService.getShowList(1);

		model.addAttribute("showList", showList);

		return "main/main";

	}

	// ------------------- 카테고리별 페이지
	@RequestMapping(value = "/category/{no}", method = RequestMethod.GET)
	public String category(@PathVariable("no") int no, Model model) {
		System.out.println("category()");

		List<ShowVO> showList = showService.getShowList(no);

		model.addAttribute("showList", showList);

		return "main/category";

	}

	// ------------------- 양도게시판
	@RequestMapping(value = "/transferBoardForm", method = RequestMethod.GET)
	public String transferBoardForm(Model model) {
		System.out.println("transferBoardForm()");

		List<TransferBoardVO> transferBoardList = transferBoardService.getTransferboardList();

		System.out.println(transferBoardList);

		model.addAttribute("transferBoardList", transferBoardList);

		return "main/transferBoard";
	}

}

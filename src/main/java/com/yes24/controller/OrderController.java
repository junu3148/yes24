package com.yes24.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yes24.service.ShowService;
import com.yes24.service.ShowingService;
import com.yes24.vo.ShowingVO;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private ShowService showService;
	@Autowired
	private ShowingService showingService;

	@RequestMapping(value = "/orderForm/{no}", method = RequestMethod.GET)
	public String orderForm(@PathVariable("no") int no , Model model) {
		System.out.println("orderForm()");
		
		Map<String, Object> map = showService.getShow(no);

		model.addAttribute("show", map.get("showVO"));
		model.addAttribute("concertHall", map.get("concertHallVO"));
		System.out.println(map.get("concertHallVO"));

		return "show/ticketing1";
	}
	
	@RequestMapping(value = "/orderForm2/{no}", method = RequestMethod.GET)
	public String orderForm2(@PathVariable("no") int no , Model model) {
		System.out.println("orderForm2()");
		System.out.println(no);
	    
		Map<String, Object> map = showingService.getShowingDateList(no);
	       
		model.addAttribute("showingList", map.get("showingList"));
		model.addAttribute("show", map.get("show"));
		System.out.println(map.get("showVO"));

		return "show/ticketing2";
	}
	
	@RequestMapping(value = "/orderForm3/{no}", method = RequestMethod.GET)
	public String orderForm3(@PathVariable("no") int no , Model model) {
		System.out.println("orderForm3()");
		
		Map<String, Object> map = showService.getShow(no);

		model.addAttribute("show", map.get("showVO"));
		model.addAttribute("concertHall", map.get("concertHallVO"));
		System.out.println(map.get("concertHallVO"));

		return "show/ticketing3";
	}
	
	

}

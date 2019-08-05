package co.grandcircus.HotelSearch;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.HotelSearch.dao.HotelSearchDao;
import co.grandcircus.HotelSearch.entities.Hotel;

@Controller
public class HotelSearchController {

	@Autowired
	HotelSearchDao dao;
	
	@RequestMapping("/")
	public ModelAndView index() {
		List<Hotel> hotels = dao.findAll();
		Set<String> hotelSet = new HashSet<>();
		for( Hotel each : hotels) {
			hotelSet.add(each.getCity());	
		}
		return new ModelAndView("index", "cities", hotelSet);
	}
	
	@RequestMapping("/selection")
	public ModelAndView selection(
			@RequestParam("city") String cityName,
			@RequestParam("maxPrice") int maxPrice) {
		List<Hotel> cityHotels = dao.findAllByCityOrderByPricePerNight(cityName);
		List<Hotel> toRemove = new ArrayList<>();
		
		for (Hotel each : cityHotels) {
			if (each.getPricePerNight() > maxPrice) {
				toRemove.add(each);
			}
		}
		cityHotels.removeAll(toRemove);
		System.out.println(cityHotels);
		ModelAndView mv = new ModelAndView("selection");
		mv.addObject("hotels", cityHotels);
		mv.addObject("city", cityName);
		return mv;
	}
}
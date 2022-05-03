package com.cbsbankui.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.cbsbankui.model.Vendor;
import com.cbsbankui.utility.CredentialsUtility;
import com.google.gson.Gson;

@Controller
public class VendorController {

	private RestTemplate restTemplate = new RestTemplate();

	@RequestMapping("/vendor")
	public String showVendor(Model model) {

		// Call Vendor Stats API

		HttpEntity<String> entity = new HttpEntity<>(CredentialsUtility.getHeaders());
		ResponseEntity<Map> response = restTemplate.exchange("http://localhost:8088/vendor/stats", HttpMethod.GET,
				entity, Map.class);
		Map<String, Integer> dataMap = response.getBody();
		Gson gsonObj = new Gson();
		Map<Object, Object> map = null;
		List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

		for (String key : dataMap.keySet()) {
			map = new HashMap<Object, Object>();
			int value = dataMap.get(key);
			map.put("label", key);
			map.put("y", value);
			list.add(map);
		}

		String dataPoints = gsonObj.toJson(list);
		model.addAttribute("dataPoints", dataPoints);

		return "vendor";
	}

	@RequestMapping("/add-vendor")
	public String addVendor() {
		return "add-vendor";
	}

	@RequestMapping("/process-add-vendor")
	public String processAddVendor(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("contact") String contact, @RequestParam("address") String address,
			@RequestParam("city") String city, @RequestParam("spec") String spec, Model model) {
		Vendor vendor = new Vendor();
		vendor.setName(name);
		vendor.setEmail(email);
		vendor.setContact(contact);
		vendor.setAddress(address);
		vendor.setCity(city);
		vendor.setSpecs(spec);

		restTemplate.postForObject("http://localhost:8088/vendor/add", vendor, Vendor.class);
		model.addAttribute("msg", "Vendor added to the system...");

		return "add-vendor";
	}

	@RequestMapping("/vendor-list")
	public String showVendorList(Model model) {
		// Call the API to fetch all vendor info

		HttpEntity<String> entity = new HttpEntity<>(CredentialsUtility.getHeaders());
		ResponseEntity<List> response = restTemplate.exchange("http://localhost:8088/vendor", HttpMethod.GET, entity,
				List.class);

		List<Vendor> list = response.getBody();
		model.addAttribute("list", list);

		return "vendor-list";
	}

}

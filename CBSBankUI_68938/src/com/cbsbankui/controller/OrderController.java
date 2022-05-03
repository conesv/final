package com.cbsbankui.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.cbsbankui.model.Order;
import com.cbsbankui.model.Project;
import com.cbsbankui.model.Vendor;
import com.cbsbankui.utility.CredentialsUtility;

@Controller
public class OrderController {

	private RestTemplate restTemplate = new RestTemplate();

	@RequestMapping("/order")
	public String showOrder() {
		return "order";
	}

	@RequestMapping("/add-order")
	public String addOrder(Model model) {
		
		HttpEntity<String> entity = new HttpEntity<>(CredentialsUtility.getHeaders());
		ResponseEntity<List> response1 = restTemplate.exchange("http://localhost:8088/project", HttpMethod.GET, entity,
				List.class);
		List<Project> projectList = response1.getBody();

		ResponseEntity<List> response = restTemplate.exchange("http://localhost:8088/vendor", HttpMethod.GET, entity,
				List.class);
		List<Vendor> list = response.getBody();
		
		model.addAttribute("list", list);
		model.addAttribute("projectList", projectList);

		return "add-order";
	}

	@RequestMapping("/place-new-order")
	public String placeNewOrder(@RequestParam("projectId") Long projectId, @RequestParam("vendorId") Long vendorId,
			@RequestParam("orderDetails") String orderDetails,
			@RequestParam("expectedDateOffFulfillment") String expectedDateOffFulfillment,
			@RequestParam("amount") Double amount, Model model) {

		Order order = new Order();
		order.setAmount(amount);
		order.setExpectedDateOffFulfillment(expectedDateOffFulfillment);
		order.setOrderDetails(orderDetails);

		restTemplate.postForObject("http://localhost:8088/order/"+vendorId+"/"+projectId, order, Order.class);
		model.addAttribute("msg", "Order placed Successfully");
		return "add-order";
	}

	@RequestMapping("/pending-order-list")
	public String showPendingOrders(Model model) {
		// Call the API and fetch pending orders
		HttpEntity<String> entity = new HttpEntity<>(CredentialsUtility.getHeaders());
		ResponseEntity<List> response = restTemplate.exchange("http://localhost:8088/order/pending", HttpMethod.GET,
				entity, List.class);
		List<Order> list = response.getBody();
		model.addAttribute("list", list);
		return "order-list";

	}

	@RequestMapping("/completed-order-list")
	public String showCompletedOrders(Model model) {
		// Call the API and fetch pending orders
		HttpEntity<String> entity = new HttpEntity<>(CredentialsUtility.getHeaders());
		ResponseEntity<List> response = restTemplate.exchange("http://localhost:8088/order/completed", HttpMethod.GET,
				entity, List.class);
		List<Order> list = response.getBody();
		model.addAttribute("list", list);
		return "order-list";

	}

	@RequestMapping("/order-received")
	public String updateOrderStatus(@RequestParam("id") Long id, Model model) {
		HttpEntity<String> entity = new HttpEntity<>(CredentialsUtility.getHeaders());
		ResponseEntity<Order> response = restTemplate.exchange("http://localhost:8088/order/status/"+id,
				HttpMethod.PUT, entity, Order.class);

		ResponseEntity<List> response1 = restTemplate.exchange("http://localhost:8088/order/pending", HttpMethod.GET,
				entity, List.class);
		List<Order> list = response1.getBody();
		model.addAttribute("list", list);
		return "order-list";

	}
}

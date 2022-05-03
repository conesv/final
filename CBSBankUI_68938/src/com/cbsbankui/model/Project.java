package com.cbsbankui.model;

public class Project {

	private Long id;

	private String name;

	private String projectDetails;

	private double amountReceivable;

	private String startDate;

	private String endDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProjectDetails() {
		return projectDetails;
	}

	public void setProjectDetails(String projectDetails) {
		this.projectDetails = projectDetails;
	}

	public double getAmountReceivable() {
		return amountReceivable;
	}

	public void setAmountReceivable(double amountReceivable) {
		this.amountReceivable = amountReceivable;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
}
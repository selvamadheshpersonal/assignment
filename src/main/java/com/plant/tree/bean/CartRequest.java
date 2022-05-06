package com.plant.tree.bean;

public class CartRequest {

	private int selectedPlantId;
	private String userEmail;
	private String quantity;

	public int getSelectedPlantId() {
		return selectedPlantId;
	}

	public void setSelectedPlantId(int selectedPlantId) {
		this.selectedPlantId = selectedPlantId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

}

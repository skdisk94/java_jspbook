package jspbook.ch06;

public class CartDTO {
	private String productName;
	private int quantity;
	
	public CartDTO() {}

	public CartDTO(String productName, int quantity) {
		this.productName = productName;
		this.quantity = quantity;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int productQuantity) {
		this.quantity = productQuantity;
	}

	@Override
	public String toString() {
		return productName + " " + quantity + "°³";
	}
}

package com.plant.tree.service;



import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Cart;
import com.plant.tree.domain.Plant;

public interface CartService {

	ResponseDetails storeCartItems(Plant plant,String useEmail, String quantity);
	Iterable<Cart> getCartItem();
}

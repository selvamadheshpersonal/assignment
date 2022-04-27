package com.plant.tree.service;

import com.plant.tree.bean.AddToCartRequest;
import com.plant.tree.bean.ResponseDetails;

public interface CartService {

	ResponseDetails storeCartItems(AddToCartRequest plant);
}

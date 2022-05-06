package com.plant.tree.service;

import com.plant.tree.bean.PaymentRequest;
import com.plant.tree.bean.ResponseDetails;

public interface PaymentService {

	ResponseDetails payment(PaymentRequest paymentRequest, String userEmail);
}

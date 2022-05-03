package com.cbs.banking.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cbs.banking.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long>{

}

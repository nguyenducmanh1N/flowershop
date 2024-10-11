package com.example.cnweb_nhom5.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.cnweb_nhom5.domain.Voucher;

public interface VoucherRepository extends JpaRepository<Voucher, Long> {
    
    Voucher findByCode(String code);
}

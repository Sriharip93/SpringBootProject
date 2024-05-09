package com.srihari.Ecart.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.srihari.Ecart.entity.SudoAdmin;

@Repository
public interface SudoAdminRepositary  extends JpaRepository<SudoAdmin, String> {

}

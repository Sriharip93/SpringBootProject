package com.srihari.Ecart.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.srihari.Ecart.entity.SudoAdminROLE;


@Repository
public interface SudoAdminROLErepositary  extends JpaRepository<SudoAdminROLE, Integer>{

}

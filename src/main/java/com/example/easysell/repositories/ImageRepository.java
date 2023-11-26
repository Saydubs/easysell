package com.example.easysell.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.easysell.models.Image;

public interface ImageRepository extends JpaRepository<Image, Long> {

}

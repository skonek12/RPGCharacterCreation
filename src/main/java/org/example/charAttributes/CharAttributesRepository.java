package org.example.charAttributes;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharAttributesRepository extends JpaRepository<CharAttributes, Long> {
}
package org.example.charClass;

import org.example.charAttributes.CharAttributes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharClassRepository extends JpaRepository<CharClass, Long> {
}

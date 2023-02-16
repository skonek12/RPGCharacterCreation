package org.example.perks;


        import org.springframework.data.jpa.repository.JpaRepository;
        import org.springframework.stereotype.Repository;

@Repository
public interface PerksRepository extends JpaRepository<Perks, Long> {

}
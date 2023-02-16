package org.example.charSkills;


        import org.example.charClass.CharClass;
        import org.springframework.data.jpa.repository.JpaRepository;
        import org.springframework.stereotype.Repository;

@Repository
public interface CharSkillsRepository extends JpaRepository<CharSkills, Long> {
}
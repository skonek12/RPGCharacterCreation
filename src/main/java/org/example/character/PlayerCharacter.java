package org.example.character;

import org.example.charAttributes.CharAttributes;
import org.example.charClass.CharClass;
import org.example.charSkills.CharSkills;
import org.example.perks.Perks;
import org.example.user.User;
import org.example.race.Race;

import javax.persistence.*;

@Entity
@Table(name = "characters")
public class PlayerCharacter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long charId;
    private String charName;
    private String gender;
    private String charDescription;
    @OneToOne
    @JoinColumn(name = "charClassId")
    private CharClass charClass;
    @OneToOne
    @JoinColumn(name = "charRaceId")
    private Race race;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "charAttributeId")
    private CharAttributes charAttributes;
    @OneToOne
    @JoinColumn(name = "perkId")
    private Perks perks;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "charSkillId")
    private CharSkills charskills;
    @ManyToOne
    @JoinColumn(name = "userId")
    private User user;

    public Long getCharId() {
        return charId;
    }

    public void setCharId(Long charId) {
        this.charId = charId;
    }

    public String getCharName() {
        return charName;
    }

    public void setCharName(String charName) {
        this.charName = charName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCharDescription() {
        return charDescription;
    }

    public void setCharDescription(String charDescription) {
        this.charDescription = charDescription;
    }

    public CharClass getCharClass() {
        return charClass;
    }

    public void setCharClass(CharClass charClass) {
        this.charClass = charClass;
    }

    public Race getRace() {
        return race;
    }

    public void setRace(Race race) {
        this.race = race;
    }

    public CharAttributes getCharAttributes() {
        return charAttributes;
    }

    public void setCharAttributes(CharAttributes charAttributes) {
        this.charAttributes = charAttributes;
    }

    public Perks getPerks() {
        return perks;
    }

    public void setPerks(Perks perks) {
        this.perks = perks;
    }

    public CharSkills getCharskills() {
        return charskills;
    }

    public void setCharskills(CharSkills charskills) {
        this.charskills = charskills;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}


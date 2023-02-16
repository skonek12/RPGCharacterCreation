package org.example.charSkills;

import javax.persistence.*;

@Entity
@Table(name="charSkills")
public class CharSkills {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long charSkillId;
    private int handToHand;
    private int oneHanded;
    private int twoHanded;
    private int shield;
    private int block;
    private int dodge;
    private int sling;
    private int bow;
    private int crossbow;
    private int throwThings;
    private int divineMagic;
    private int arcaneMagic;
    private int primordialMagic;
    private int occultMagic;
    private int stealing;
    private int traps;
    private int acrobatics;
    private int persuasion;
    private int intimidation;
    private int mercantile;
}

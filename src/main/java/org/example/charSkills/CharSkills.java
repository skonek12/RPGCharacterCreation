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

    public Long getCharSkillId() {
        return charSkillId;
    }

    public void setCharSkillId(Long charSkillId) {
        this.charSkillId = charSkillId;
    }

    public int getHandToHand() {
        return handToHand;
    }

    public void setHandToHand(int handToHand) {
        this.handToHand = handToHand;
    }

    public int getOneHanded() {
        return oneHanded;
    }

    public void setOneHanded(int oneHanded) {
        this.oneHanded = oneHanded;
    }

    public int getTwoHanded() {
        return twoHanded;
    }

    public void setTwoHanded(int twoHanded) {
        this.twoHanded = twoHanded;
    }

    public int getShield() {
        return shield;
    }

    public void setShield(int shield) {
        this.shield = shield;
    }

    public int getBlock() {
        return block;
    }

    public void setBlock(int block) {
        this.block = block;
    }

    public int getDodge() {
        return dodge;
    }

    public void setDodge(int dodge) {
        this.dodge = dodge;
    }

    public int getSling() {
        return sling;
    }

    public void setSling(int sling) {
        this.sling = sling;
    }

    public int getBow() {
        return bow;
    }

    public void setBow(int bow) {
        this.bow = bow;
    }

    public int getCrossbow() {
        return crossbow;
    }

    public void setCrossbow(int crossbow) {
        this.crossbow = crossbow;
    }

    public int getThrowThings() {
        return throwThings;
    }

    public void setThrowThings(int throwThings) {
        this.throwThings = throwThings;
    }

    public int getDivineMagic() {
        return divineMagic;
    }

    public void setDivineMagic(int divineMagic) {
        this.divineMagic = divineMagic;
    }

    public int getArcaneMagic() {
        return arcaneMagic;
    }

    public void setArcaneMagic(int arcaneMagic) {
        this.arcaneMagic = arcaneMagic;
    }

    public int getPrimordialMagic() {
        return primordialMagic;
    }

    public void setPrimordialMagic(int primordialMagic) {
        this.primordialMagic = primordialMagic;
    }

    public int getOccultMagic() {
        return occultMagic;
    }

    public void setOccultMagic(int occultMagic) {
        this.occultMagic = occultMagic;
    }

    public int getStealing() {
        return stealing;
    }

    public void setStealing(int stealing) {
        this.stealing = stealing;
    }

    public int getTraps() {
        return traps;
    }

    public void setTraps(int traps) {
        this.traps = traps;
    }

    public int getAcrobatics() {
        return acrobatics;
    }

    public void setAcrobatics(int acrobatics) {
        this.acrobatics = acrobatics;
    }

    public int getPersuasion() {
        return persuasion;
    }

    public void setPersuasion(int persuasion) {
        this.persuasion = persuasion;
    }

    public int getIntimidation() {
        return intimidation;
    }

    public void setIntimidation(int intimidation) {
        this.intimidation = intimidation;
    }

    public int getMercantile() {
        return mercantile;
    }

    public void setMercantile(int mercantile) {
        this.mercantile = mercantile;
    }
}

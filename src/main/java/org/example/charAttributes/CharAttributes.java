package org.example.charAttributes;

import javax.persistence.*;

@Entity
@Table(name="charAttributes")
public class CharAttributes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long charAttributeId;
    private int agilityValue;
    private String agilityAffinity;
    private int phisiqueValue;
    private String phisiqueAffinity;
    private int perceptionValue;
    private String perceptionAffinity;
    private int personalityValue;
    private String personalityAffinity;
    private int mentalityValue;
    private String mentalityAffinity;
    private int luckValue;
    private String luckAffinity;

    public Long getCharAttributeId() {
        return charAttributeId;
    }

    public void setCharAttributeId(Long charAttributeId) {
        this.charAttributeId = charAttributeId;
    }

    public int getAgilityValue() {
        return agilityValue;
    }

    public void setAgilityValue(int agilityValue) {
        this.agilityValue = agilityValue;
    }

    public String getAgilityAffinity() {
        return agilityAffinity;
    }

    public void setAgilityAffinity(String agilityAffinity) {
        this.agilityAffinity = agilityAffinity;
    }

    public int getPhisiqueValue() {
        return phisiqueValue;
    }

    public void setPhisiqueValue(int phisiqueValue) {
        this.phisiqueValue = phisiqueValue;
    }

    public String getPhisiqueAffinity() {
        return phisiqueAffinity;
    }

    public void setPhisiqueAffinity(String phisiqueAffinity) {
        this.phisiqueAffinity = phisiqueAffinity;
    }

    public int getPerceptionValue() {
        return perceptionValue;
    }

    public void setPerceptionValue(int perceptionValue) {
        this.perceptionValue = perceptionValue;
    }

    public String getPerceptionAffinity() {
        return perceptionAffinity;
    }

    public void setPerceptionAffinity(String perceptionAffinity) {
        this.perceptionAffinity = perceptionAffinity;
    }

    public int getPersonalityValue() {
        return personalityValue;
    }

    public void setPersonalityValue(int personalityValue) {
        this.personalityValue = personalityValue;
    }

    public String getPersonalityAffinity() {
        return personalityAffinity;
    }

    public void setPersonalityAffinity(String personalityAffinity) {
        this.personalityAffinity = personalityAffinity;
    }

    public int getMentalityValue() {
        return mentalityValue;
    }

    public void setMentalityValue(int mentalityValue) {
        this.mentalityValue = mentalityValue;
    }

    public String getMentalityAffinity() {
        return mentalityAffinity;
    }

    public void setMentalityAffinity(String mentalityAffinity) {
        this.mentalityAffinity = mentalityAffinity;
    }

    public int getLuckValue() {
        return luckValue;
    }

    public void setLuckValue(int luckValue) {
        this.luckValue = luckValue;
    }

    public String getLuckAffinity() {
        return luckAffinity;
    }

    public void setLuckAffinity(String luckAffinity) {
        this.luckAffinity = luckAffinity;
    }
}

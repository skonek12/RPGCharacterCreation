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
}

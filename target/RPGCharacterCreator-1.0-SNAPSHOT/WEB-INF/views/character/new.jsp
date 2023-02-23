<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new character</title>
    <link rel="stylesheet" href="../../../style.css"/>
    <script type="text/javascript" src="../../../script.js"></script>
</head>
<body>
<form:form method="post" action="/character/new" modelAttribute="playerCharacter">
    <table>
        <tr>
            <td>
                <a href="/character/list">RETURN</a>
            </td>
            <td></td>
            <td>
                <input type="submit" value="CREATE">
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <th>Character Name</th>
            <th>Gender</th>
        </tr>
        <tr>
            <td><form:input path="charName"/></td>
            <td>
                <form:radiobutton path="gender" value="M" label="Male"/>
                <form:radiobutton path="gender" value="F" label="Female"/>
            </td>
        </tr>
        <tr>
            <td><form:errors path="charName" cssClass="error"/></td>
            <td><form:errors path="gender" cssClass="error"/></td>
        </tr>
    </table>

    <table>
        <tr>
            <th>Attribute</th>
            <th>Value</th>
            <th>Affinity</th>
        </tr>

        <tr>
            <td>
                <label for="agility">Agility</label>
            </td>
            <td>
                <form:input class = "charAttribute" id="agility" path="charAttributes.agilityValue" value="1" readonly="true"/>
                <form:errors path="charAttributes.agilityValue" cssClass="error"/>
            </td>
            <td>
                <form:input class="atrAffinity" id="agilityAffinity" path="charAttributes.agilityAffinity" readonly="true"/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="agility">Phisique</label>
            </td>
            <td>
                <form:input class = "charAttribute" id="agility" path="charAttributes.phisiqueValue" value="1" readonly="true"/>
                <form:errors path="charAttributes.phisiqueValue" cssClass="error"/>
            </td>
            <td>
                <form:input class="atrAffinity" id="agilityAffinity" path="charAttributes.phisiqueAffinity" readonly="true"/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="agility">Perception</label>
            </td>
            <td>
                <form:input class = "charAttribute" id="agility" path="charAttributes.perceptionValue" value="1" readonly="true"/>
                <form:errors path="charAttributes.perceptionValue" cssClass="error"/>
            </td>
            <td>
                <form:input class="atrAffinity" id="agilityAffinity" path="charAttributes.perceptionAffinity" readonly="true"/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="agility">Personality</label>
            </td>
            <td>
                <form:input class = "charAttribute" id="agility" path="charAttributes.personalityValue" value="1" readonly="true"/>
                <form:errors path="charAttributes.personalityValue" cssClass="error"/>
            </td>
            <td>
                <form:input class="atrAffinity" id="agilityAffinity" path="charAttributes.personalityAffinity" readonly="true"/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="agility">Mentality</label>
            </td>
            <td>
                <form:input class = "charAttribute" id="agility" path="charAttributes.mentalityValue" value="1" readonly="true"/>
                <form:errors path="charAttributes.mentalityValue" cssClass="error"/>
            </td>
            <td>
                <form:input class="atrAffinity" id="agilityAffinity" path="charAttributes.mentalityAffinity" readonly="true"/>
            </td>
        </tr>

        <tr>
            <td>
                <label for="agility">Luck</label>
            </td>
            <td>
                <form:input class = "charAttribute" id="agility" path="charAttributes.luckValue" value="1" readonly="true"/>
                <form:errors path="charAttributes.luckValue" cssClass="error"/>
            </td>
            <td>
                <form:input class="atrAffinity" id="agilityAffinity" path="charAttributes.luckAffinity" readonly="true"/>
            </td>
        </tr>
        <tr>
            <td>
                <button type = "button" id="rerollButton" onclick="return false">REROLL ATTRIBUTES</button>
            </td>
        </tr>
    </table>

    <table>
        <tr>
            <td>
                <form:label path="race">Race</form:label>
                <form:select id="charRaceChoice" itemValue="charRaceId" itemLabel="raceName" path="race"
                             items="${races}"/>
            </td>
            <td>
                <form:label path="charClass">Class</form:label>
                <form:select id="charClassChoice" itemValue="charClassId" itemLabel="className" path="charClass"
                             items="${classes}"/>
                <form:errors path="charClass" cssClass="error"/>
            </td>
            <td>
                <form:label path="perks">Perk</form:label>
                <form:select id="charPerkChoice" itemValue="perkId" itemLabel="perkName" path="perks" items="${perks}"/>
                <form:errors path="perks" cssClass="error"/>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <th>
                <form:label path="charDescription">Description</form:label>
            </th>
        </tr>
        <tr>
            <td>
                <form:textarea path="charDescription"/>
                <form:errors path="charDescription" cssClass="error"/>
            </td>
        </tr>
    </table>


    <table>
        <tr>
            <th>Skill</th>
            <th>Base Value</th>
            <th>Race Bonus</th>
            <th>Class Bonus</th>
            <th>Perk Bonus</th>
            <th>Value</th>
        </tr>
        <tr>
            <td><label for="acrobatics">Acrobatics</label></td>
            <td><input class="baseValue acrobatics" name="acrobatics" id="acrobaticsBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus acrobatics" name="acrobatics" id="acrobaticsRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus acrobatics" name="acrobatics" id="acrobaticsClassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus acrobatics" name="acrobatics" id="acrobaticsPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue acrobatics" id="acrobatics" path="charskills.acrobatics" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="arcaneMagic">Arcane Magic</label></td>
            <td><input class="baseValue arcaneMagic" name="arcaneMagic" id="arcaneMagicBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus arcaneMagic" name="arcaneMagic" id="arcaneMagicRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus arcaneMagic" name="arcaneMagic" id="arcaneMagicClassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus arcaneMagic" name="arcaneMagic" id="arcaneMagicPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue arcaneMagic" id="arcaneMagic" path="charskills.arcaneMagic" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="block">Block</label></td>
            <td><input class="baseValue block" name="block" id="blockBaseValue" value="4" disabled="true"/></td>
            <td><input class="raceBonus block" name="block" id="blockRaceBonus" value="0" disabled="true"/></td>
            <td><input class="classBonus block" name="block" id="blockClassBonus" value="0" disabled="true"/></td>
            <td><input class="perkBonus block" name="block" id="blockPerkBonus" value="0" disabled="true"/></td>
            <td><form:input class="endValue block" id="block" path="charskills.block" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="bow">Bow</label></td>
            <td><input class="baseValue bow" name="bow" id="bowBaseValue" value="4" disabled="true"/></td>
            <td><input class="raceBonus bow" name="bow" id="bowRaceBonus" value="0" disabled="true"/></td>
            <td><input class="classBonus bow" name="bow" id="bowClassBonus" value="0" disabled="true"/></td>
            <td><input class="perkBonus bow" name="bow" id="bowPerkBonus" value="0" disabled="true"/></td>
            <td><form:input class="endValue bow" id="bow" path="charskills.bow" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="crossbow">Crossbow</label></td>
            <td><input class="baseValue crossbow" name="crossbow" id="crossbowBaseValue" value="4" disabled="true"/>
            </td>
            <td><input class="raceBonus crossbow" name="crossbow" id="crossbowRaceBonus" value="0" disabled="true"/>
            </td>
            <td><input class="classBonus crossbow" name="crossbow" id="crossbowClassBonus" value="0" disabled="true"/>
            </td>
            <td><input class="perkBonus crossbow" name="crossbow" id="crossbowPerkBonus" value="0" disabled="true"/>
            </td>
            <td><form:input class="endValue crossbow" id="crossbow" path="charskills.crossbow" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="divineMagic">Divine Magic</label></td>
            <td><input class="baseValue divineMagic" name="divineMagic" id="divineMagicBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus divineMagic" name="divineMagic" id="divineMagicRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus divineMagic" name="divineMagic" id="divineMagicClassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus divineMagic" name="divineMagic" id="divineMagicPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue divineMagic" id="divineMagic" path="charskills.divineMagic" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="dodge">Dodge</label></td>
            <td><input class="baseValue dodge" name="dodge" id="dodgeBaseValue" value="4" disabled="true"/></td>
            <td><input class="raceBonus dodge" name="dodge" id="dodgeRaceBonus" value="0" disabled="true"/></td>
            <td><input class="classBonus dodge" name="dodge" id="dodgeClassBonus" value="0" disabled="true"/></td>
            <td><input class="perkBonus dodge" name="dodge" id="dodgePerkBonus" value="0" disabled="true"/></td>
            <td><form:input class="endValue dodge" id="dodge" path="charskills.dodge" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="handToHand">Hand to Hand</label></td>
            <td><input class="baseValue handToHand" name="handToHand" id="handToHandBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus handToHand" name="handToHand" id="handToHandRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus handToHand" name="handToHand" id="handToHandClassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus handToHand" name="handToHand" id="handToHandPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue handToHand" id="handToHand" path="charskills.handToHand" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="intimidation">Intimidation</label></td>
            <td><input class="baseValue intimidation" name="intimidation" id="intimidationBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus intimidation" name="intimidation" id="intimidationRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus intimidation" name="intimidation" id="intimidationClassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus intimidation" name="intimidation" id="intimidationPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue intimidation" id="intimidation" path="charskills.intimidation" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="mercantile">Mercantile</label></td>
            <td><input class="baseValue mercantile" name="mercantile" id="mercantileBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus mercantile" name="mercantile" id="mercantileRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus mercantile" name="mercantile" id="mercantileClassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus mercantile" name="mercantile" id="mercantilePerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue mercantile" id="mercantile" path="charskills.mercantile" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="occultMagic">Occult Magic</label></td>
            <td><input class="baseValue occultMagic" name="occultMagic" id="occultMagicBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus occultMagic" name="occultMagic" id="occultMagicRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus occultMagic" name="occultMagic" id="occultMagicCassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus occultMagic" name="occultMagic" id="occultMagicPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue occultMagic" id="occultMagic" path="charskills.occultMagic" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="oneHanded">One Handed Weapons</label></td>
            <td><input class="baseValue oneHanded" name="oneHanded" id="oneHandedBaseValue" value="4" disabled="true"/>
            </td>
            <td><input class="raceBonus oneHanded" name="oneHanded" id="oneHandedRaceBonus" value="0" disabled="true"/>
            </td>
            <td><input class="classBonus oneHanded" name="oneHanded" id="oneHandedCassBonus" value="0" disabled="true"/>
            </td>
            <td><input class="perkBonus oneHanded" name="oneHanded" id="oneHandedPerkBonus" value="0" disabled="true"/>
            </td>
            <td><form:input class="endValue oneHanded" id="oneHanded" path="charskills.oneHanded" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="persuasion">Persuasion</label></td>
            <td><input class="baseValue persuasion" name="persuasion" id="persuasionBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus persuasion" name="persuasion" id="persuasionRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus persuasion" name="persuasion" id="persuasionCassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus persuasion" name="persuasion" id="persuasionPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue persuasion" id="persuasion" path="charskills.persuasion" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="primordialMagic">Primal Magic</label></td>
            <td><input class="baseValue primordialMagic" name="primordialMagic" id="primordialMagicBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus primordialMagic" name="primordialMagic" id="primordialMagicRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus primordialMagic" name="primordialMagic" id="primordialMagicCassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus primordialMagic" name="primordialMagic" id="primordialMagicPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue primordialMagic" id="primordialMagic" path="charskills.primordialMagic"
                            value="" disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="shield">Shield</label></td>
            <td><input class="baseValue shield" name="shield" id="shieldBaseValue" value="4" disabled="true"/></td>
            <td><input class="raceBonus shield" name="shield" id="shieldRaceBonus" value="0" disabled="true"/></td>
            <td><input class="classBonus shield" name="shield" id="shieldCassBonus" value="0" disabled="true"/></td>
            <td><input class="perkBonus shield" name="shield" id="shieldPerkBonus" value="0" disabled="true"/></td>
            <td><form:input class="endValue shield" id="shield" path="charskills.shield" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="sling">Sling</label></td>
            <td><input class="baseValue sling" name="sling" id="slingBaseValue" value="4" disabled="true"/></td>
            <td><input class="raceBonus sling" name="sling" id="slingRaceBonus" value="0" disabled="true"/></td>
            <td><input class="classBonus sling" name="sling" id="slingCassBonus" value="0" disabled="true"/></td>
            <td><input class="perkBonus sling" name="sling" id="slingPerkBonus" value="0" disabled="true"/></td>
            <td><form:input class="endValue sling" id="sling" path="charskills.sling" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="stealing">Stealing</label></td>
            <td><input class="baseValue stealing" name="stealing" id="stealingBaseValue" value="4" disabled="true"/>
            </td>
            <td><input class="raceBonus stealing" name="stealing" id="stealingRaceBonus" value="0" disabled="true"/>
            </td>
            <td><input class="classBonus stealing" name="stealing" id="stealingCassBonus" value="0" disabled="true"/>
            </td>
            <td><input class="perkBonus stealing" name="stealing" id="stealingPerkBonus" value="0" disabled="true"/>
            </td>
            <td><form:input class="endValue stealing" id="stealing" path="charskills.stealing" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="throwThings">Throw</label></td>
            <td><input class="baseValue throwThings" name="throwThings" id="throwThingsBaseValue" value="4"
                       disabled="true"/></td>
            <td><input class="raceBonus throwThings" name="throwThings" id="throwThingsRaceBonus" value="0"
                       disabled="true"/></td>
            <td><input class="classBonus throwThings" name="throwThings" id="throwThingsCassBonus" value="0"
                       disabled="true"/></td>
            <td><input class="perkBonus throwThings" name="throwThings" id="throwThingsPerkBonus" value="0"
                       disabled="true"/></td>
            <td><form:input class="endValue throwThings" id="throwThings" path="charskills.throwThings" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="traps">Traps</label></td>
            <td><input class="baseValue traps" name="traps" id="trapsBaseValue" value="4" disabled="true"/></td>
            <td><input class="raceBonus traps" name="traps" id="trapsRaceBonus" value="0" disabled="true"/></td>
            <td><input class="classBonus traps" name="traps" id="trapsCassBonus" value="0" disabled="true"/></td>
            <td><input class="perkBonus traps" name="traps" id="trapsPerkBonus" value="0" disabled="true"/></td>
            <td><form:input class="endValue traps" id="traps" path="charskills.traps" value="" disabled="false"
                            readonly="true"/></td>
        </tr>
        <tr>
            <td><label for="twoHanded">Two Handed Weapons</label></td>
            <td><input class="baseValue twoHanded" name="twoHanded" id="twoHandedBaseValue" value="4" disabled="true"/>
            </td>
            <td><input class="raceBonus twoHanded" name="twoHanded" id="twoHandedRaceBonus" value="0" disabled="true"/>
            </td>
            <td><input class="classBonus twoHanded" name="twoHanded" id="twoHandedCassBonus" value="0" disabled="true"/>
            </td>
            <td><input class="perkBonus twoHanded" name="twoHanded" id="twoHandedPerkBonus" value="0" disabled="true"/>
            </td>
            <td><form:input class="endValue twoHanded" id="twoHanded" path="charskills.twoHanded" value=""
                            disabled="false" readonly="true"/></td>
        </tr>
    </table>
</form:form>
<script>
    var racesJsonFile = ${racesJson};
    var classesJsonFile = ${classJson};
    var perksJsonFile = ${perksJson};
</script>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new character</title>
    <link rel="stylesheet" href="../../../style.css" />
    <script type = "text/javascript" src ="../../../script.js"></script>
</head>
<body>
<form:form method="post" action="/character/new" modelAttribute="playerCharacter">
        <p>
            <form:label path="charName">Name</form:label>
            <form:input path="charName"/>
            <form:errors path="charName" cssClass="error"/>
        </p>
    <p>
        <form:label path="gender">Gender</form:label>
        <form:radiobutton path="gender" value = "M" label = "Male"/>
        <form:radiobutton path="gender" value = "F" label = "Female"/>
        <form:errors path="gender" cssClass="error"/>
    </p>

<%--    Atrybutes--%>
    <p>
        <form:label path="${playerCharacter.charAttributes}">Character Attributes</form:label>
    </p>
    <p>
        <label for="agility">Agility</label>
        <form:input id = "agility" path="charAttributes.agilityValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.agilityAffinity"/>
    </p>
    <p>
        <label for="agility">Phisique</label>
        <form:input id = "agility" path="charAttributes.phisiqueValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.phisiqueAffinity"/>
    </p>
    <p>
        <label for="agility">Perception</label>
        <form:input id = "agility" path="charAttributes.perceptionValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.perceptionAffinity"/>
    </p>
    <p>
        <label for="agility">Personality</label>
        <form:input id = "agility" path="charAttributes.personalityValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.personalityAffinity"/>
    </p>
    <p>
        <label for="agility">Mentality</label>
        <form:input id = "agility" path="charAttributes.mentalityValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.mentalityAffinity"/>
    </p>
    <p>
        <label for="agility">Luck</label>
        <form:input id = "agility" path="charAttributes.luckValue"/>
        <label for="agilityAffinity">Affinity</label>
        <form:input id = "agilityAffinity" path="charAttributes.luckAffinity"/>
    </p>


    <p>
        <form:label path="race">Race</form:label>
        <form:select itemValue="charRaceId" itemLabel="raceName" path="race" items="${races}" />
<%--        <form:errors path="race" cssClass="error"/>--%>
    </p>
    <p>
        <form:label path="charClass">Class</form:label>
        <form:select itemValue="charClassId" itemLabel="className" path="charClass" items="${classes}" />
        <form:errors path="charClass" cssClass="error"/>
    </p>
    <p>
        <form:label path="perks">Perk</form:label>
        <form:select itemValue="perkId" itemLabel="perkName" path="perks" items="${perks}"/>
        <form:errors path="perks" cssClass="error"/>
    </p>
        <p>
            <form:label path="charDescription">Description</form:label>
            <form:textarea path="charDescription"/>
            <form:errors path="charDescription" cssClass="error"/>
        </p>

<%--    skills--%>

    <p>
    <p>
        <form:label path="${playerCharacter.charskills}">Character Skills</form:label>
    </p>
    <p>
        <label for="acrobatics">Acrobatics</label>
        <form:input id = "acrobatics" path="charskills.acrobatics" value="4" disabled="true"/>

        <form:input id = "acrobatics" path="race.acrobatics" value="" disabled="true"/>

    </p>
    <p>
        <label for="arcaneMagic">Arcane Magic</label>
        <form:input id = "arcaneMagic" path="charskills.arcaneMagic" value="4"/>
    </p>
    <p>
    <label for="block">Block</label>
    <form:input id = "block" path="charskills.block" value="4"/>
    </p>
    <p>
    <label for="bow">Bow</label>
    <form:input id = "bow" path="charskills.bow" value="4"/>
    </p>
    <p>
    <label for="crossbow">Crossbow</label>
    <form:input id = "crossbow" path="charskills.crossbow" value="4"/>
    </p>
    <p>
    <label for="divineMagic">DivineMagic</label>
    <form:input id = "divineMagic" path="charskills.divineMagic" value="4"/>
    </p>
    <p>
    <label for="dodge">Dodge</label>
    <form:input id = "dodge" path="charskills.dodge" value="4"/>
    </p>
    <p>
    <label for="handToHand">Hand To Hand</label>
    <form:input id = "handToHand" path="charskills.handToHand" value="4"/>
    </p>
    <p>
    <label for="intimidation">Intimidation</label>
    <form:input id = "intimidation" path="charskills.intimidation" value="4"/>
    </p>
    <p>
        <label for="mercantile">Mercantile</label>
        <form:input id = "mercantile" path="charskills.mercantile" value="4"/>
    </p>
    <p>
        <label for="occultMagic">Intimidation</label>
        <form:input id = "occultMagic" path="charskills.occultMagic" value="4"/>
    </p>
    <p>
        <label for="oneHanded">One handed weapons</label>
        <form:input id = "oneHanded" path="charskills.oneHanded" value="4"/>
    </p>
    <p>
        <label for="persuasion">Persuasion</label>
        <form:input id = "persuasion" path="charskills.persuasion" value="4"/>
    </p>
    <p>
        <label for="primordialMagic">Primordial Magic</label>
        <form:input id = "primordialMagic" path="charskills.primordialMagic" value="4"/>
    </p>
    <p>
        <label for="shield">Shield</label>
        <form:input id = "shield" path="charskills.shield" value="4"/>
    </p>
    <p>
        <label for="sling">Sling/label>
        <form:input id = "sling" path="charskills.sling" value="4"/>
    </p>
    <p>
        <label for="stealing">stealing</label>
        <form:input id = "stealing" path="charskills.stealing" value="4"/>
    </p>
    <p>
        <label for="throw">Throw</label>
        <form:input id = "throw" path="charskills.throwThings" value="4"/>
    </p>
    <p>
        <label for="traps">Traps</label>
        <form:input id = "traps" path="charskills.traps" value="4"/>
    </p>
    <p>
        <label for="twoHanded">Two handed weapon</label>
        <form:input id = "twoHanded" path="charskills.twoHanded" value="4"/>
    </p>



    </p>

<%--    ________    --%>

    <p>
        <a href="/character/list">Cancel</a>
        <input type="submit" value="Add">
    </p>
</form:form>
<script>
     var myvar = ${racesJson};
</script>
</body>
</html>

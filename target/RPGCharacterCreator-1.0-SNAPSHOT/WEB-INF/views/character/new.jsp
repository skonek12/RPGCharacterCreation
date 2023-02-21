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
        <form:select id = "charClassChoice" itemValue="charClassId" itemLabel="className" path="charClass" items="${classes}" />
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
        <td>        <label for="acrobatics">Acrobatics</label></td>
        <td>        <input class = "baseValue acrobatics" name = "acrobatics"  id = "acrobaticsBaseValue" value="4" disabled="true"/></td>
        <td>        <input class = "raceBonus acrobatics" name = "acrobatics"  id = "acrobaticsRaceBonus" value="0" disabled="true"/></td>
        <td>        <input class = "classBonus acrobatics"name = "acrobatics"  id = "acrobaticsClassBonus" value="0" disabled="true"/></td>
        <td>        <input class = "perkBonus acrobatics" name = "acrobatics"  id = "acrobaticsPerkBonus" value="0" disabled="true"/></td>
        <td>        <form:input class = "endValue" id = "acrobatics" path="charskills.acrobatics" value="7" disabled="true"/></td>
    </tr>
    <tr>
        <td>        <label for="arcaneMagic">Arcane Magic</label></td>
        <td>        <input class = "baseValue arcaneMagic" name = "arcaneMagic" id = "arcaneMagicBaseValue" value="4" disabled="true"/></td>
        <td>        <input class = "raceBonus arcaneMagic" name = "arcaneMagic" id = "arcaneMagicRaceBonus" value="0" disabled="true"/></td>
        <td>        <input class = "classBonus arcaneMagic" name = "arcaneMagic" id = "arcaneMagicClassBonus" value="0" disabled="true"/></td>
        <td>        <input class = "perkBonus arcaneMagic" name = "arcaneMagic" id = "arcaneMagicPerkBonus" value="0" disabled="true"/></td>
        <td>        <form:input class = "endValue" id = "arcaneMagic" path="charskills.arcaneMagic" value="8" disabled="true"/></td>
    </tr>
    <tr>
        <td>        <label for="block">Block</label></td>
        <td>        <input class = "baseValue block" name = "block" id = "blockBaseValue" value="4" disabled="true"/></td>
        <td>        <input class = "raceBonus block" name = "block" id = "blockRaceBonus" value="0" disabled="true"/></td>
        <td>        <input class = "classBonus block" name = "block" id = "blockClassBonus" value="0" disabled="true"/></td>
        <td>        <input class = "perkBonus block" name = "block" id = "blockPerkBonus" value="0" disabled="true"/></td>
        <td>        <form:input class = "endValue" id = "block" path="charskills.block" value="8" disabled="true"/></td>
    </tr>

</table>
    </p>



    </p>

<%--    ________    --%>

    <p>
        <a href="/character/list">Cancel</a>
        <input type="submit" value="Add">
    </p>
</form:form>
<script>
     var racesJsonFile = ${racesJson};
     var classesJsonFile = ${classJson};
     var perksJsonFile = ${perksJson};
</script>
</body>
</html>

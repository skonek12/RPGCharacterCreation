<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit character</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css" />
</head>
<body>
<form:form method="post" action="/character/edit" modelAttribute="playerCharacter">
    <p>
        <form:label path="playerCharacter.charName">Name</form:label>
        <form:input path="charName" value ="${charName}" />
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
        <form:errors path="race" cssClass="error"/>
    </p>
    <p>
        <form:label path="charClass">Class</form:label>
        <form:select itemValue="charClassId" itemLabel="className" path="charClass" items="${classes}" />
        <form:errors path="charClass" cssClass="error"/>
    </p>
    <p>
        <form:label path="perks">Perk</form:label>
        <form:select itemValue="perkId" itemLabel="perkName" path="perks" items="${perks}" />
        <form:errors path="perks" cssClass="error"/>
    </p>
    <p>
        <form:label path="charDescription">Description</form:label>
        <form:textarea path="charDescription"/>
        <form:errors path="charDescription" cssClass="error"/>
    </p>
    <p>
        <a href="/character/list">Cancel</a>
        <input type="submit" value="Add">
    </p>
</form:form>
</body>
</html>
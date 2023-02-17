<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Book list</title>
</head>
<body>
<table>
  <thead>
  <tr>

    <th>Id</th>
    <th>Name</th>
    <th>Gender</th>
    <th>Race</th>
    <th>Class</th>
    <th>Perk</th>
    <th>Description</th>

    <th>Agility</th>
    <th>Phisique</th>
    <th>Perception</th>
    <th>Personality</th>
    <th>Mentality</th>
    <th>Luck</th>


  </tr>
  </thead>
  <c:forEach items="${playerCharacters}" var="playerCharacter">
    <tr>
      <td>${playerCharacter.charId}</td>
      <td><c:out value="${playerCharacter.charName}"/></td>
      <td><c:out value="${playerCharacter.gender}"/></td>
      <td><c:out value="${playerCharacter.race.raceName}"/></td>
      <td><c:out value="${playerCharacter.charClass.className}"/></td>
      <td><c:out value="${playerCharacter.perks.perkName}"/></td>
      <td><c:out value="${playerCharacter.charDescription}"/></td>

      <td><c:out value="${playerCharacter.charAttributes.agilityValue}"/></td>
      <td><c:out value="${playerCharacter.charAttributes.phisiqueValue}"/></td>
      <td><c:out value="${playerCharacter.charAttributes.perceptionValue}"/></td>
      <td><c:out value="${playerCharacter.charAttributes.personalityValue}"/></td>
      <td><c:out value="${playerCharacter.charAttributes.mentalityValue}"/></td>
      <td><c:out value="${playerCharacter.charAttributes.luckValue}"/></td>

<%--      <td>--%>
<%--        <c:forEach items="${book.authors}" var="author">--%>
<%--          <c:out value="${author.name}"/>--%>
<%--        </c:forEach>--%>
<%--      </td>--%>
<%--      <td><c:out value="${book.category.name}"/></td>--%>
      <td>
        <a href="/character/edit/${playerCharacter.charId}">Edit</a>
        <a href="/character/delete/${playerCharacter.charId}">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>
<a href="/character/new">Create new character</a>
</body>
</html>
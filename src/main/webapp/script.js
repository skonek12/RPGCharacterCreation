document.addEventListener("DOMContentLoaded", function () {

    console.log(racesJsonFile);
    console.log(racesJsonFile[1].charRaceId);
    console.log(racesJsonFile[1].raceName);

    console.log(classesJsonFile);
    console.log(classesJsonFile[1].charClassId);
    console.log(classesJsonFile[1].className);

    console.log(perksJsonFile);
    console.log(perksJsonFile[1].perkId);
    console.log(perksJsonFile[1].perkName);

// modyfikacja skilli


    const acrobaticsBaseValue = document.getElementById("acrobaticsBaseValue");
    const acrobaticsRaceBonus = document.getElementById("acrobaticsRaceBonus");
    const acrobaticsClassBonus = document.getElementById("acrobaticsClassBonus");
    const acrobaticsPerkBonus = document.getElementById("acrobaticsPerkBonus");
    const acrobaticsInputValue = document.getElementById("acrobatics");

    const charClassChoice = document.getElementById("charClassChoice");
    console.log(charClassChoice.value);

    acrobaticsRaceBonus.setAttribute("value", racesJsonFile[2].acrobatics)
    acrobaticsClassBonus.setAttribute("value", classesJsonFile[2].acrobatics)

    const acrobaticsSum = parseInt(acrobaticsBaseValue.value)
        + parseInt(acrobaticsRaceBonus.value)
        + parseInt(acrobaticsClassBonus.value)
        + parseInt(acrobaticsPerkBonus.value);
    acrobaticsInputValue.setAttribute("value", acrobaticsSum);

    function setSkillValuesFromJson() {
        for (var i = 1; i <= classesJsonFile.length; i++) {
            if (parseInt(charClassChoice.value) === parseInt(classesJsonFile[i].charClassId)) {
                // acrobaticsRaceBonus.setAttribute("value",racesJsonFile[i].acrobatics)
                acrobaticsClassBonus.setAttribute("value", classesJsonFile[i].acrobatics)
                // acrobaticsPerkBonus.setAttribute("value",perksJsonFile[i].acrobatics)
                const acrobaticsSum = parseInt(acrobaticsBaseValue.value)
                    + parseInt(acrobaticsRaceBonus.value)
                    + parseInt(acrobaticsClassBonus.value)
                    + parseInt(acrobaticsPerkBonus.value);
                acrobaticsInputValue.setAttribute("value", acrobaticsSum);
                console.log(charClassChoice.value);
                break;
            }
        }
    }

    charClassChoice.addEventListener("change", function () {
        setSkillValuesFromJson(classesJsonFile);
    })


})




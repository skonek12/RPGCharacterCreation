document.addEventListener("DOMContentLoaded", function () {
    //
    // console.log(racesJsonFile);
    // console.log(racesJsonFile[1].charRaceId);
    // console.log(racesJsonFile[1].raceName);
    //
    // console.log(classesJsonFile);
    // console.log(classesJsonFile[1].charClassId);
    // console.log(classesJsonFile[1].className);
    //
    // console.log(perksJsonFile);
    // console.log(perksJsonFile[1].perkId);
    // console.log(perksJsonFile[1].perkName);


    // const allSkillClassBonuses = document.getElementsByClassName("classBonus");
    // console.log(allSkillClassBonuses);
    const allSkillClassBonuses = document.querySelectorAll(".classBonus");
    console.log(allSkillClassBonuses);

    // let attributeName = allSkillClassBonuses[1].getAttribute("name");
    // console.log("attribute name"+attributeName)
// modyfikacja skilli


    const acrobaticsBaseValue = document.getElementById("acrobaticsBaseValue");
    const acrobaticsRaceBonus = document.getElementById("acrobaticsRaceBonus");
    const acrobaticsClassBonus = document.getElementById("acrobaticsClassBonus");
    const acrobaticsPerkBonus = document.getElementById("acrobaticsPerkBonus");
    const acrobaticsInputValue = document.getElementById("acrobatics");

    const charClassChoice = document.getElementById("charClassChoice");
    let charRaceChoice = document.getElementById("charRaceChoice");
    // console.log(charClassChoice.value);

    // acrobaticsRaceBonus.setAttribute("value", racesJsonFile[2].acrobatics)
    // acrobaticsClassBonus.setAttribute("value", classesJsonFile[2].acrobatics)

    const acrobaticsSum = parseInt(acrobaticsBaseValue.value)
        + parseInt(acrobaticsRaceBonus.value)
        + parseInt(acrobaticsClassBonus.value)
        + parseInt(acrobaticsPerkBonus.value);
    acrobaticsInputValue.setAttribute("value", acrobaticsSum);

    // function setSkillValuesFromJson() {
    //     for (var i = 1; i <= classesJsonFile.length; i++) {
    //         if (parseInt(charClassChoice.value) === parseInt(classesJsonFile[i].charClassId)) {
    //             // acrobaticsRaceBonus.setAttribute("value",racesJsonFile[i].acrobatics)
    //             acrobaticsClassBonus.setAttribute("value", classesJsonFile[i].acrobatics)
    //             // acrobaticsPerkBonus.setAttribute("value",perksJsonFile[i].acrobatics)
    //             const acrobaticsSum = parseInt(acrobaticsBaseValue.value)
    //                 + parseInt(acrobaticsRaceBonus.value)
    //                 + parseInt(acrobaticsClassBonus.value)
    //                 + parseInt(acrobaticsPerkBonus.value);
    //             acrobaticsInputValue.setAttribute("value", acrobaticsSum);
    //             console.log(charClassChoice.value);
    //             break;
    //         }
    //     }
    // }
    function setAllClassBonuses() {
        let charClassChoice = document.getElementById("charClassChoice");
        let allSkillClassBonuses = document.querySelectorAll(".classBonus");
        for (let j = 0; j < allSkillClassBonuses.length; j++) {
            let attributeName = allSkillClassBonuses[j].getAttribute("name");
            for (let i = 0; i < classesJsonFile.length; i++) {
                if (parseInt(charClassChoice.value) === parseInt(classesJsonFile[i].charClassId)) {
                    allSkillClassBonuses[j].setAttribute("value", classesJsonFile[i][attributeName])
                    break;
                }
            }
        }
    }
    function setAllRaceBonuses() {
        let charRaceChoice = document.getElementById("charRaceChoice");
        let allSkillRaceBonuses = document.querySelectorAll(".raceBonus");
        for (let j = 0; j < allSkillRaceBonuses.length; j++) {
            let attributeName = allSkillRaceBonuses[j].getAttribute("name");
            for (let i = 0; i < racesJsonFile.length; i++) {
                if (parseInt(charRaceChoice.value) === parseInt(racesJsonFile[i].charRaceId)) {
                    allSkillRaceBonuses[j].setAttribute("value", racesJsonFile[i][attributeName])
                    break;
                }
            }
        }
    }
    // function setAllClassBonuses() {
    //     for (var i = 1; i <= classesJsonFile.length; i++) {
    //         if (parseInt(charClassChoice.value) === parseInt(classesJsonFile[i].charClassId)) {
    //             acrobaticsClassBonus.setAttribute("value", classesJsonFile[i].acrobatics)
    //             break;
    //         }
    //     }
    // }
    function setEndValues() {
        for (let i = 1; i <= classesJsonFile.length; i++) {
                let acrobaticsSum = parseInt(acrobaticsBaseValue.value)
                    + parseInt(acrobaticsRaceBonus.value)
                    + parseInt(acrobaticsClassBonus.value)
                    + parseInt(acrobaticsPerkBonus.value);
                acrobaticsInputValue.setAttribute("value", acrobaticsSum);
                break;
        }
    }






    charClassChoice.addEventListener("change", function () {
        // setSkillValuesFromJson(classesJsonFile);

        setAllClassBonuses();
        setEndValues()
    })

    charRaceChoice.addEventListener("change",function (){
        setAllRaceBonuses();
        setEndValues();
    })
})




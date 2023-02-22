document.addEventListener("DOMContentLoaded", function () {

    // const charClassChoice = document.getElementById("charClassChoice");
    // let charRaceChoice = document.getElementById("charRaceChoice");
    // let charPerkChoice = document.getElementById("charPerkChoice");


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

    function setAllPerkBonuses() {
        let charPerkChoice = document.getElementById("charPerkChoice");
        let allSkillPerkBonuses = document.querySelectorAll(".perkBonus");

        for (let j = 0; j < allSkillPerkBonuses.length; j++) {
            let attributeName = allSkillPerkBonuses[j].getAttribute("name");
            for (let i = 0; i < perksJsonFile.length; i++) {
                if (parseInt(charPerkChoice.value) === parseInt(perksJsonFile[i].perkId)) {
                    allSkillPerkBonuses[j].setAttribute("value", perksJsonFile[i][attributeName])
                    break;
                }
            }
        }
    }
    function setEndValues() {
        let listOfPerkElements = [
            document.querySelectorAll(".acrobatics"),
            document.querySelectorAll(".arcaneMagic"),
            document.querySelectorAll(".block"),
            document.querySelectorAll(".bow"),
            document.querySelectorAll(".crossbow"),
            document.querySelectorAll(".divineMagic"),
            document.querySelectorAll(".dodge"),
            document.querySelectorAll(".handToHand"),
            document.querySelectorAll(".intimidation"),
            document.querySelectorAll(".mercantile"),
            document.querySelectorAll(".occultMagic"),
            document.querySelectorAll(".oneHanded"),
            document.querySelectorAll(".persuasion"),
            document.querySelectorAll(".primordialMagic"),
            document.querySelectorAll(".shield"),
            document.querySelectorAll(".sling"),
            document.querySelectorAll(".stealing"),
            document.querySelectorAll(".throwThings"),
            document.querySelectorAll(".traps"),
            document.querySelectorAll(".twoHanded"),
        ]
        for (let i = 0; i < listOfPerkElements.length; i++) {
            console.log(listOfPerkElements[i]);
            let valueToPass = listOfPerkElements[i][4];
            let sum = parseInt(listOfPerkElements[i][0].value) + parseInt(listOfPerkElements[i][1].value)
                + parseInt(listOfPerkElements[i][2].value) + parseInt(listOfPerkElements[i][3].value)

            valueToPass.setAttribute("value",sum);
        }
    }
    charPerkChoice.addEventListener("change", function () {
        setAllPerkBonuses()
        setEndValues()
    })
    charClassChoice.addEventListener("change", function () {
        setAllClassBonuses();
        setEndValues()
    })

    charRaceChoice.addEventListener("change", function () {
        setAllRaceBonuses();
        setEndValues();
    })
})




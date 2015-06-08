---
---

window.onload = () ->
    document.getElementById("age").innerHTML = age()

age = () ->
    today = new Date
    birthday = new Date '1988-02-26'
    diff = today.getTime() - birthday.getTime()
    Math.floor diff / (1000 * 60 * 60 * 24 * 365.25)

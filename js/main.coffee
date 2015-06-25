---
---

window.onload = () ->
    #document.getElementById("age").innerHTML = age()
    unless is_avenir_available()
        for el in document.getElementsByClassName "exp-title"
            el.style.fontWeight = "600"

age = () ->
    today = new Date
    birthday = new Date '1988-02-26'
    diff = today.getTime() - birthday.getTime()
    Math.floor diff / (1000 * 60 * 60 * 24 * 365.25)

is_avenir_available = () ->
    el = document.getElementById("site-title")
    # Assume Avenir is installed only if this is a Mac
    navigator.appVersion.indexOf("Mac") != 0

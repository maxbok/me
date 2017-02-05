window.onload = function() {
    document.getElementById('age').innerHTML = age();
    if (!isAvenirAvailable()) {
        let titles = document.getElementsByClassName('exp-title');
        for (let i = 0, length = titles.length; i < length; i++) {
            let title = titles[i];
            title.style.fontWeight = '600';
        }
    }
}

age = function() {
    let today = new Date();
    let birthday = new Date('1988-02-26');
    let diff = today.getTime() - birthday.getTime();
    return Math.floor(diff / (1000 * 60 * 60 * 24 * 365.25));
}

isAvenirAvailable = function() {
    let title = document.getElementById('site-title');
    // Assume Avenir is installed only if this is a Mac
    return navigator.appVersion.indexOf('Mac') != 0;
}

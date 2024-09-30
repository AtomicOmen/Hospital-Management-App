// birthday
window.onload = function() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; // Ο μήνας ξεκινά από το 0
    var yyyy = today.getFullYear();

    if (dd < 10) {
        dd = '0' + dd;
    }

    if (mm < 10) {
        mm = '0' + mm;
    }

    today = yyyy + '-' + mm + '-' + dd;

    document.getElementById('birthday').setAttribute('max', today);
};

function generateRandomNumber() {
    // Δημιουργία τυχαίου αριθμού 7 ψηφίων
    var randomNumber = Math.floor(1000000 + Math.random() * 9000000);

    // Εμφάνιση του αριθμού στη σελίδα
    document.getElementById("randomNumber").innerHTML = "ID: " + randomNumber;
}

function gRandomNumber() {
    // Δημιουργία τυχαίου 5ψήφιου αριθμού
    const randomNumber = Math.floor(10000 + Math.random() * 90000);

    // Εμφάνιση του αριθμού στο πεδίο με id "randomNum"
    document.getElementById("randomNum").innerText = "Doctor ID: " + randomNumber;
}

// smooth scroll nav 
document.addEventListener('DOMContentLoaded', function () {
    // Προσθέτουμε ακροατή γεγονότων σε όλα τα στοιχεία ανάκαμψης
    const scrollLinks = document.querySelectorAll('nav a');

    scrollLinks.forEach(function (link) {
        link.addEventListener('click', function (e) {
            e.preventDefault();

            const targetId = this.getAttribute('href').substring(1);
            const targetElement = document.getElementById(targetId);

            if (targetElement) {
                window.scrollTo({
                    top: targetElement.offsetTop,
                    behavior: 'smooth'
                });
            }
        });
    });
});

// footer no scroll
const footer = document.querySelector('footer');

window.onscroll = function () {
    const isScrolledToBottom = window.innerHeight + window.scrollY >= document.body.offsetHeight;

    if (isScrolledToBottom) {
        footer.classList.add('show-footer');
    } else {
        footer.classList.remove('show-footer');
    }
};


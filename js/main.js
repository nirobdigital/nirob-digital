/* =====================================
   MUH Nirob - Portfolio Main JS
   ===================================== */

document.addEventListener("DOMContentLoaded", function () {
    console.log("MUH Nirob Portfolio Loaded Successfully");

    /* ============================
       Smooth Scroll for Anchor Links
    ============================ */
    const links = document.querySelectorAll("a[href^='#']");
    links.forEach(link => {
        link.addEventListener("click", function (e) {
            e.preventDefault();
            const targetId = this.getAttribute("href");
            const targetElement = document.querySelector(targetId);

            if (targetElement) {
                targetElement.scrollIntoView({
                    behavior: "smooth"
                });
            }
        });
    });

    /* ============================
       Dynamic Year in Footer
    ============================ */
    const footer = document.querySelector("footer p");
    if (footer) {
        const year = new Date().getFullYear();
        footer.innerHTML = `© ${year} MUH Nirob. All rights reserved.`;
    }

    /* ============================
       Simple Button Click Tracking
    ============================ */
    const buttons = document.querySelectorAll(".btn");
    buttons.forEach(btn => {
        btn.addEventListener("click", () => {
            console.log("Button clicked:", btn.textContent.trim());
        });
    });
});

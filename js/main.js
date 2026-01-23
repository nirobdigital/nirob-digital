// ===== Smooth Scroll for anchor links =====
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if(target) {
            target.scrollIntoView({
                behavior: 'smooth'
            });
        }
    });
});

// ===== Mobile Menu Toggle =====
const nav = document.querySelector('nav#main-nav');
const toggleBtn = document.createElement('button');
toggleBtn.innerText = 'Menu';
toggleBtn.id = 'menu-toggle';
toggleBtn.style.cssText = 'position:absolute; right:20px; top:15px; padding:8px 12px; background:#ff6f61; color:#fff; border:none; border-radius:6px; cursor:pointer; display:none;';
nav.appendChild(toggleBtn);

toggleBtn.addEventListener('click', () => {
    const ul = nav.querySelector('ul');
    if(ul.style.display === 'flex' || ul.style.display === '') {
        ul.style.display = 'block';
        ul.style.flexDirection = 'column';
    } else {
        ul.style.display = 'flex';
        ul.style.flexDirection = 'row';
    }
});

// Show toggle button on small screens
const handleResize = () => {
    if(window.innerWidth <= 768){
        toggleBtn.style.display = 'block';
        nav.querySelector('ul').style.display = 'none';
    } else {
        toggleBtn.style.display = 'none';
        nav.querySelector('ul').style.display = 'flex';
        nav.querySelector('ul').style.flexDirection = 'row';
    }
};

window.addEventListener('resize', handleResize);
window.addEventListener('load', handleResize);

// ===== Scroll Reveal Animation for Sections =====
const sections = document.querySelectorAll('section');
const revealSection = () => {
    const triggerBottom = window.innerHeight * 0.85;
    sections.forEach(section => {
        const sectionTop = section.getBoundingClientRect().top;
        if(sectionTop < triggerBottom){
            section.style.opacity = 1;
            section.style.transform = 'translateY(0)';
            section.style.transition = 'all 0.8s ease-out';
        } else {
            section.style.opacity = 0;
            section.style.transform = 'translateY(40px)';
        }
    });
};

window.addEventListener('scroll', revealSection);
window.addEventListener('load', revealSection);

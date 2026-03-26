#!/bin/bash

# ============================================
# NIROB DIGITAL – COMPLETE PORTFOLIO GENERATOR
# ============================================
# This script creates a complete portfolio website
# with all necessary files for GitHub Pages
# ============================================

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${GREEN}🚀 NIROB DIGITAL – Portfolio Generator${NC}"
echo -e "${BLUE}========================================${NC}"

# Check current directory
if [[ ! $(pwd) == *"nirob-digital"* ]]; then
    echo -e "${RED}❌ Please run this script inside nirob-digital directory${NC}"
    exit 1
fi

echo -e "${YELLOW}📁 Current directory: $(pwd)${NC}"

# ============================================
# 1. CREATE DIRECTORY STRUCTURE
# ============================================
echo -e "\n${GREEN}📁 Creating directory structure...${NC}"

mkdir -p assets/css
mkdir -p assets/js
mkdir -p assets/images
mkdir -p assets/fonts
mkdir -p pages

echo -e "${GREEN}✅ Directories created${NC}"

# ============================================
# 2. CREATE MAIN INDEX.HTML
# ============================================
echo -e "\n${GREEN}📝 Creating index.html...${NC}"

cat > index.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Nirob Digital – Smart Digital Income Platform. Web3, AI, Cybersecurity, Digital Marketing solutions for global audience.">
    <meta name="keywords" content="Nirob Digital, Web3, AI, Cryptocurrency, Cybersecurity, Digital Marketing, Podcast Tools">
    <meta name="author" content="Nirob Digital">
    <meta name="robots" content="index, follow">
    
    <!-- Open Graph / Social Media -->
    <meta property="og:title" content="Nirob Digital – Smart Digital Income Platform">
    <meta property="og:description" content="Complete digital solutions for Web3, AI, Cybersecurity, and Digital Marketing.">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://nirobdigital.com">
    <meta property="og:image" content="https://nirobdigital.com/assets/images/og-image.jpg">
    
    <title>Nirob Digital – Smart Digital Income Platform</title>
    
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="container">
            <div class="nav-brand">
                <a href="index.html">
                    <span class="brand-text">Nirob<span class="highlight">Digital</span></span>
                </a>
            </div>
            <div class="nav-menu">
                <ul>
                    <li><a href="index.html" class="active">Home</a></li>
                    <li><a href="pages/services.html">Services</a></li>
                    <li><a href="pages/products.html">Products</a></li>
                    <li><a href="pages/blog.html">Blog</a></li>
                    <li><a href="pages/contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="nav-toggle">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <h1 class="hero-title">
                    Smart Digital Income <br>
                    <span class="gradient-text">Platform</span>
                </h1>
                <p class="hero-description">
                    Empowering creators, developers, and entrepreneurs with cutting-edge tools in 
                    Web3, AI, Cybersecurity, and Digital Marketing. Join the future of digital economy.
                </p>
                <div class="hero-buttons">
                    <a href="pages/products.html" class="btn btn-primary">
                        <i class="fas fa-store"></i> Explore Products
                    </a>
                    <a href="pages/services.html" class="btn btn-secondary">
                        <i class="fas fa-briefcase"></i> Our Services
                    </a>
                </div>
                <div class="hero-stats">
                    <div class="stat">
                        <span class="stat-number">6400+</span>
                        <span class="stat-label">Jobs Created</span>
                    </div>
                    <div class="stat">
                        <span class="stat-number">500+</span>
                        <span class="stat-label">Digital Products</span>
                    </div>
                    <div class="stat">
                        <span class="stat-number">50+</span>
                        <span class="stat-label">Global Partners</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Services Section -->
    <section class="services">
        <div class="container">
            <div class="section-header">
                <h2>What We Offer</h2>
                <p>Complete digital solutions for modern professionals</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-brain"></i>
                    </div>
                    <h3>AI & ChatGPT</h3>
                    <p>Premium prompts, automation scripts, and AI tools for content creators and developers.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-coins"></i>
                    </div>
                    <h3>Crypto & Web3</h3>
                    <p>Trading bots, smart contracts, blockchain development resources.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-podcast"></i>
                    </div>
                    <h3>Podcast & Audio</h3>
                    <p>Artwork templates, show notes, editing presets, equipment guides.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <h3>Cybersecurity</h3>
                    <p>VPN guides, security checklists, penetration testing tools.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-chart-line"></i>
                    </div>
                    <h3>Digital Marketing</h3>
                    <p>SEO tools, social media kits, email templates, affiliate resources.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-store"></i>
                    </div>
                    <h3>Marketplace</h3>
                    <p>Seller memberships, classified ads, bidding system, promotion services.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Stats Section -->
    <section class="stats-section">
        <div class="container">
            <div class="stats-grid">
                <div class="stat-item">
                    <i class="fas fa-download"></i>
                    <div class="stat-number" data-target="5000">0</div>
                    <div class="stat-label">Products Downloaded</div>
                </div>
                <div class="stat-item">
                    <i class="fas fa-users"></i>
                    <div class="stat-number" data-target="10000">0</div>
                    <div class="stat-label">Active Users</div>
                </div>
                <div class="stat-item">
                    <i class="fas fa-globe"></i>
                    <div class="stat-number" data-target="150">0</div>
                    <div class="stat-label">Countries Served</div>
                </div>
                <div class="stat-item">
                    <i class="fas fa-star"></i>
                    <div class="stat-number" data-target="98">0</div>
                    <div class="stat-label">Satisfaction Rate</div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Call to Action -->
    <section class="cta">
        <div class="container">
            <h2>Ready to Start Your Digital Journey?</h2>
            <p>Join thousands of professionals who trust Nirob Digital for their digital income.</p>
            <a href="pages/contact.html" class="btn btn-primary">Get Started Today</a>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Nirob Digital</h3>
                    <p>Smart Digital Income Platform. Empowering creators and entrepreneurs worldwide.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-github"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-section">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="pages/services.html">Services</a></li>
                        <li><a href="pages/products.html">Products</a></li>
                        <li><a href="pages/blog.html">Blog</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#">Affiliate Program</a></li>
                        <li><a href="#">Become a Seller</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Contact</h4>
                    <ul>
                        <li><i class="fas fa-envelope"></i> careers@nirobdigital.com</li>
                        <li><i class="fas fa-phone"></i> +880 1234 567890</li>
                        <li><i class="fas fa-map-marker-alt"></i> Dhaka, Bangladesh</li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2026 Nirob Digital. All rights reserved. | Vision: 6400+ Jobs by 2030</p>
            </div>
        </div>
    </footer>
    
    <!-- Custom JS -->
    <script src="assets/js/main.js"></script>
</body>
</html>
HTMLEOF

echo -e "${GREEN}✅ index.html created${NC}"

# ============================================
# 3. CREATE CSS FILE
# ============================================
echo -e "\n${GREEN}🎨 Creating CSS file...${NC}"

cat > assets/css/style.css << 'CSSEOF'
/* ============================================
   NIROB DIGITAL – MAIN STYLESHEET
   ============================================ */

:root {
    --primary: #10B981;
    --primary-dark: #059669;
    --secondary: #3B82F6;
    --dark: #0F172A;
    --darker: #020617;
    --light: #F1F5F9;
    --gray: #94A3B8;
    --dark-gray: #1E293B;
    --border: #334155;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
    background: var(--dark);
    color: var(--light);
    line-height: 1.6;
    overflow-x: hidden;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 2rem;
}

/* ============================================
   Navigation
   ============================================ */
.navbar {
    position: fixed;
    top: 0;
    width: 100%;
    background: rgba(15, 23, 42, 0.95);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid var(--border);
    z-index: 1000;
    padding: 1rem 0;
}

.navbar .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.brand-text {
    font-size: 1.5rem;
    font-weight: 700;
    color: var(--light);
}

.brand-text .highlight {
    color: var(--primary);
}

.nav-menu ul {
    display: flex;
    gap: 2rem;
    list-style: none;
}

.nav-menu a {
    color: var(--gray);
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s;
}

.nav-menu a:hover,
.nav-menu a.active {
    color: var(--primary);
}

.nav-toggle {
    display: none;
    font-size: 1.5rem;
    cursor: pointer;
}

/* ============================================
   Hero Section
   ============================================ */
.hero {
    min-height: 100vh;
    display: flex;
    align-items: center;
    padding: 8rem 0 4rem;
    background: linear-gradient(135deg, var(--dark) 0%, var(--darker) 100%);
}

.hero-content {
    text-align: center;
    max-width: 800px;
    margin: 0 auto;
}

.hero-title {
    font-size: 3.5rem;
    font-weight: 800;
    line-height: 1.2;
    margin-bottom: 1.5rem;
}

.gradient-text {
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

.hero-description {
    font-size: 1.2rem;
    color: var(--gray);
    margin-bottom: 2rem;
}

.hero-buttons {
    display: flex;
    gap: 1rem;
    justify-content: center;
    margin-bottom: 3rem;
}

.btn {
    display: inline-flex;
    align-items: center;
    gap: 0.5rem;
    padding: 0.75rem 1.5rem;
    border-radius: 0.5rem;
    font-weight: 600;
    text-decoration: none;
    transition: all 0.3s;
}

.btn-primary {
    background: var(--primary);
    color: var(--dark);
}

.btn-primary:hover {
    background: var(--primary-dark);
    transform: translateY(-2px);
}

.btn-secondary {
    background: transparent;
    border: 2px solid var(--primary);
    color: var(--primary);
}

.btn-secondary:hover {
    background: var(--primary);
    color: var(--dark);
    transform: translateY(-2px);
}

.hero-stats {
    display: flex;
    justify-content: center;
    gap: 3rem;
    flex-wrap: wrap;
}

.stat {
    text-align: center;
}

.stat-number {
    display: block;
    font-size: 2rem;
    font-weight: 800;
    color: var(--primary);
}

.stat-label {
    color: var(--gray);
    font-size: 0.9rem;
}

/* ============================================
   Services Section
   ============================================ */
.services {
    padding: 5rem 0;
    background: var(--darker);
}

.section-header {
    text-align: center;
    margin-bottom: 3rem;
}

.section-header h2 {
    font-size: 2.5rem;
    margin-bottom: 0.5rem;
}

.section-header p {
    color: var(--gray);
}

.services-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    gap: 2rem;
}

.service-card {
    background: var(--dark-gray);
    padding: 2rem;
    border-radius: 1rem;
    border: 1px solid var(--border);
    transition: all 0.3s;
    text-align: center;
}

.service-card:hover {
    transform: translateY(-5px);
    border-color: var(--primary);
}

.service-icon {
    font-size: 2.5rem;
    color: var(--primary);
    margin-bottom: 1rem;
}

.service-card h3 {
    margin-bottom: 0.5rem;
}

.service-card p {
    color: var(--gray);
}

/* ============================================
   Stats Section
   ============================================ */
.stats-section {
    padding: 5rem 0;
    background: linear-gradient(135deg, var(--primary-dark), var(--secondary));
}

.stats-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 2rem;
    text-align: center;
}

.stat-item i {
    font-size: 2.5rem;
    margin-bottom: 1rem;
}

.stat-item .stat-number {
    font-size: 2.5rem;
    font-weight: 800;
    color: white;
}

.stat-item .stat-label {
    color: rgba(255, 255, 255, 0.8);
}

/* ============================================
   CTA Section
   ============================================ */
.cta {
    padding: 5rem 0;
    text-align: center;
    background: var(--dark);
}

.cta h2 {
    font-size: 2rem;
    margin-bottom: 1rem;
}

.cta p {
    color: var(--gray);
    margin-bottom: 2rem;
}

/* ============================================
   Footer
   ============================================ */
.footer {
    background: var(--darker);
    padding: 3rem 0 1rem;
    border-top: 1px solid var(--border);
}

.footer-content {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
    margin-bottom: 2rem;
}

.footer-section h3,
.footer-section h4 {
    margin-bottom: 1rem;
}

.footer-section p {
    color: var(--gray);
    margin-bottom: 1rem;
}

.footer-section ul {
    list-style: none;
}

.footer-section li {
    margin-bottom: 0.5rem;
    color: var(--gray);
}

.footer-section a {
    color: var(--gray);
    text-decoration: none;
    transition: color 0.3s;
}

.footer-section a:hover {
    color: var(--primary);
}

.social-links {
    display: flex;
    gap: 1rem;
}

.social-links a {
    display: inline-flex;
    width: 36px;
    height: 36px;
    align-items: center;
    justify-content: center;
    background: var(--dark-gray);
    border-radius: 50%;
    transition: all 0.3s;
}

.social-links a:hover {
    background: var(--primary);
    transform: translateY(-2px);
}

.footer-bottom {
    text-align: center;
    padding-top: 2rem;
    border-top: 1px solid var(--border);
    color: var(--gray);
    font-size: 0.9rem;
}

/* ============================================
   Responsive Design
   ============================================ */
@media (max-width: 768px) {
    .container {
        padding: 0 1rem;
    }
    
    .hero-title {
        font-size: 2rem;
    }
    
    .nav-menu {
        display: none;
    }
    
    .nav-toggle {
        display: block;
    }
    
    .hero-buttons {
        flex-direction: column;
    }
    
    .services-grid {
        grid-template-columns: 1fr;
    }
    
    .stats-grid {
        grid-template-columns: 1fr 1fr;
    }
}
CSSEOF

echo -e "${GREEN}✅ CSS file created${NC}"

# ============================================
# 4. CREATE JAVASCRIPT FILE
# ============================================
echo -e "\n${GREEN}📜 Creating JavaScript file...${NC}"

cat > assets/js/main.js << 'JSEOF'
// ============================================
// NIROB DIGITAL – MAIN JAVASCRIPT
// ============================================

// Mobile Navigation Toggle
document.addEventListener('DOMContentLoaded', function() {
    const navToggle = document.querySelector('.nav-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    if (navToggle) {
        navToggle.addEventListener('click', function() {
            navMenu.classList.toggle('active');
        });
    }
    
    // Animate numbers on scroll
    const statNumbers = document.querySelectorAll('.stat-number[data-target]');
    
    const animateNumbers = () => {
        statNumbers.forEach(stat => {
            const target = parseInt(stat.getAttribute('data-target'));
            const current = parseInt(stat.innerText);
            const increment = target / 50;
            
            if (current < target) {
                let newValue = Math.min(current + Math.ceil(increment), target);
                stat.innerText = newValue;
            }
        });
    };
    
    // Intersection Observer for stats
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateNumbers();
                observer.unobserve(entry.target);
            }
        });
    });
    
    const statsSection = document.querySelector('.stats-section');
    if (statsSection) {
        observer.observe(statsSection);
    }
    
    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({ behavior: 'smooth' });
            }
        });
    });
    
    // Add active class to current nav item
    const currentLocation = window.location.pathname;
    const navLinks = document.querySelectorAll('.nav-menu a');
    
    navLinks.forEach(link => {
        if (link.getAttribute('href') === currentLocation.split('/').pop()) {
            link.classList.add('active');
        }
    });
});

// Console welcome message
console.log('%c🚀 Welcome to Nirob Digital!', 'color: #10B981; font-size: 16px; font-weight: bold;');
console.log('%cSmart Digital Income Platform | 6400+ Jobs Vision by 2030', 'color: #3B82F6; font-size: 12px;');
JSEOF

echo -e "${GREEN}✅ JavaScript file created${NC}"

# ============================================
# 5. CREATE ADDITIONAL PAGES
# ============================================
echo -e "\n${GREEN}📄 Creating additional pages...${NC}"

# Services Page
cat > pages/services.html << 'SERVICESEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services – Nirob Digital</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <div class="nav-brand">
                <a href="../index.html"><span class="brand-text">Nirob<span class="highlight">Digital</span></span></a>
            </div>
            <div class="nav-menu">
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="services.html" class="active">Services</a></li>
                    <li><a href="products.html">Products</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="nav-toggle"><i class="fas fa-bars"></i></div>
        </div>
    </nav>
    
    <div style="padding: 8rem 0 4rem;">
        <div class="container">
            <div class="section-header">
                <h1>Our Services</h1>
                <p>Comprehensive digital solutions for your success</p>
            </div>
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-brain"></i></div>
                    <h3>AI & ChatGPT Services</h3>
                    <p>Custom prompt engineering, AI automation, content generation, and chatbot development.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-coins"></i></div>
                    <h3>Crypto & Web3 Consulting</h3>
                    <p>Blockchain development, smart contract audit, DeFi strategies, and NFT consulting.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-podcast"></i></div>
                    <h3>Podcast Production</h3>
                    <p>Full podcast production, editing, show notes, artwork, and distribution.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-shield-alt"></i></div>
                    <h3>Cybersecurity Assessment</h3>
                    <p>Vulnerability assessment, penetration testing, security audits, and compliance.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-chart-line"></i></div>
                    <h3>Digital Marketing</h3>
                    <p>SEO optimization, social media management, email marketing, and PPC campaigns.</p>
                </div>
                <div class="service-card">
                    <div class="service-icon"><i class="fas fa-code"></i></div>
                    <h3>Web Development</h3>
                    <p>WordPress development, e-commerce solutions, custom themes, and plugin development.</p>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <div class="container">
            <div class="footer-bottom"><p>&copy; 2026 Nirob Digital. All rights reserved.</p></div>
        </div>
    </footer>
    <script src="../assets/js/main.js"></script>
</body>
</html>
SERVICESEOF

# Products Page
cat > pages/products.html << 'PRODUCTSEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products – Nirob Digital</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        .product-card {
            background: var(--dark-gray);
            padding: 1.5rem;
            border-radius: 1rem;
            border: 1px solid var(--border);
            transition: all 0.3s;
        }
        .product-card:hover {
            transform: translateY(-5px);
            border-color: var(--primary);
        }
        .product-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary);
            margin: 1rem 0;
        }
        .btn-small {
            padding: 0.5rem 1rem;
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <div class="nav-brand">
                <a href="../index.html"><span class="brand-text">Nirob<span class="highlight">Digital</span></span></a>
            </div>
            <div class="nav-menu">
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="products.html" class="active">Products</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="nav-toggle"><i class="fas fa-bars"></i></div>
        </div>
    </nav>
    
    <div style="padding: 8rem 0 4rem;">
        <div class="container">
            <div class="section-header">
                <h1>Digital Products</h1>
                <p>Premium tools and resources for your digital journey</p>
            </div>
            <div class="products-grid">
                <div class="product-card">
                    <i class="fas fa-magic" style="font-size: 2rem; color: var(--primary);"></i>
                    <h3>ChatGPT Prompts Mega Pack</h3>
                    <p>5000+ premium prompts for marketing, coding, content creation, and business.</p>
                    <div class="product-price">$47</div>
                    <a href="#" class="btn btn-primary btn-small">Buy Now</a>
                </div>
                <div class="product-card">
                    <i class="fas fa-chart-line" style="font-size: 2rem; color: var(--primary);"></i>
                    <h3>Crypto Trading Bot</h3>
                    <p>Automated trading bot for Binance, Bybit, and OKX. 24/7 trading.</p>
                    <div class="product-price">$99</div>
                    <a href="#" class="btn btn-primary btn-small">Buy Now</a>
                </div>
                <div class="product-card">
                    <i class="fas fa-paint-brush" style="font-size: 2rem; color: var(--primary);"></i>
                    <h3>Podcast Artwork Templates</h3>
                    <p>100 customizable cover art templates for your podcast brand.</p>
                    <div class="product-price">$39</div>
                    <a href="#" class="btn btn-primary btn-small">Buy Now</a>
                </div>
                <div class="product-card">
                    <i class="fas fa-shield-alt" style="font-size: 2rem; color: var(--primary);"></i>
                    <h3>Cybersecurity Checklist</h3>
                    <p>Complete security checklist for businesses and individuals.</p>
                    <div class="product-price">$29</div>
                    <a href="#" class="btn btn-primary btn-small">Buy Now</a>
                </div>
                <div class="product-card">
                    <i class="fas fa-code" style="font-size: 2rem; color: var(--primary);"></i>
                    <h3>Web3 Developer Toolkit</h3>
                    <p>Smart contract templates, Solidity guides, and blockchain resources.</p>
                    <div class="product-price">$79</div>
                    <a href="#" class="btn btn-primary btn-small">Buy Now</a>
                </div>
                <div class="product-card">
                    <i class="fas fa-envelope" style="font-size: 2rem; color: var(--primary);"></i>
                    <h3>Email Marketing Templates</h3>
                    <p>500+ professional email templates for campaigns and newsletters.</p>
                    <div class="product-price">$29</div>
                    <a href="#" class="btn btn-primary btn-small">Buy Now</a>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <div class="container">
            <div class="footer-bottom"><p>&copy; 2026 Nirob Digital. All rights reserved.</p></div>
        </div>
    </footer>
    <script src="../assets/js/main.js"></script>
</body>
</html>
PRODUCTSEOF

# Contact Page
cat > pages/contact.html << 'CONTACTEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact – Nirob Digital</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 3rem;
            margin-top: 2rem;
        }
        .contact-info {
            background: var(--dark-gray);
            padding: 2rem;
            border-radius: 1rem;
            border: 1px solid var(--border);
        }
        .contact-detail {
            display: flex;
            align-items: center;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }
        .contact-detail i {
            width: 40px;
            height: 40px;
            background: var(--primary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--dark);
        }
        .contact-form {
            background: var(--dark-gray);
            padding: 2rem;
            border-radius: 1rem;
            border: 1px solid var(--border);
        }
        .form-group {
            margin-bottom: 1rem;
        }
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 0.75rem;
            background: var(--dark);
            border: 1px solid var(--border);
            border-radius: 0.5rem;
            color: var(--light);
            font-family: inherit;
        }
        .form-group textarea {
            resize: vertical;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <div class="nav-brand">
                <a href="../index.html"><span class="brand-text">Nirob<span class="highlight">Digital</span></span></a>
            </div>
            <div class="nav-menu">
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="products.html">Products</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html" class="active">Contact</a></li>
                </ul>
            </div>
            <div class="nav-toggle"><i class="fas fa-bars"></i></div>
        </div>
    </nav>
    
    <div style="padding: 8rem 0 4rem;">
        <div class="container">
            <div class="section-header">
                <h1>Get In Touch</h1>
                <p>We'd love to hear from you. Let's build something great together.</p>
            </div>
            <div class="contact-grid">
                <div class="contact-info">
                    <h3>Contact Information</h3>
                    <div class="contact-detail">
                        <i class="fas fa-envelope"></i>
                        <div><strong>Email</strong><br>careers@nirobdigital.com</div>
                    </div>
                    <div class="contact-detail">
                        <i class="fas fa-phone"></i>
                        <div><strong>Phone</strong><br>+880 1234 567890</div>
                    </div>
                    <div class="contact-detail">
                        <i class="fas fa-map-marker-alt"></i>
                        <div><strong>Location</strong><br>Dhaka, Bangladesh</div>
                    </div>
                    <div class="contact-detail">
                        <i class="fab fa-twitter"></i>
                        <div><strong>Twitter</strong><br>@NirobDigital</div>
                    </div>
                    <div class="contact-detail">
                        <i class="fab fa-github"></i>
                        <div><strong>GitHub</strong><br>github.com/nirobdigital</div>
                    </div>
                </div>
                <div class="contact-form">
                    <h3>Send a Message</h3>
                    <form action="#" method="POST">
                        <div class="form-group">
                            <input type="text" placeholder="Your Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" placeholder="Your Email" required>
                        </div>
                        <div class="form-group">
                            <input type="text" placeholder="Subject">
                        </div>
                        <div class="form-group">
                            <textarea rows="5" placeholder="Your Message"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <div class="container">
            <div class="footer-bottom"><p>&copy; 2026 Nirob Digital. All rights reserved.</p></div>
        </div>
    </footer>
    <script src="../assets/js/main.js"></script>
</body>
</html>
CONTACTEOF

# Blog Page
cat > pages/blog.html << 'BLOGFILEEOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blog – Nirob Digital</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style>
        .blog-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }
        .blog-card {
            background: var(--dark-gray);
            border-radius: 1rem;
            border: 1px solid var(--border);
            overflow: hidden;
            transition: all 0.3s;
        }
        .blog-card:hover {
            transform: translateY(-5px);
            border-color: var(--primary);
        }
        .blog-content {
            padding: 1.5rem;
        }
        .blog-date {
            color: var(--primary);
            font-size: 0.85rem;
            margin-bottom: 0.5rem;
        }
        .blog-title {
            font-size: 1.25rem;
            margin-bottom: 0.75rem;
        }
        .blog-excerpt {
            color: var(--gray);
            margin-bottom: 1rem;
        }
        .read-more {
            color: var(--primary);
            text-decoration: none;
            font-weight: 500;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="container">
            <div class="nav-brand">
                <a href="../index.html"><span class="brand-text">Nirob<span class="highlight">Digital</span></span></a>
            </div>
            <div class="nav-menu">
                <ul>
                    <li><a href="../index.html">Home</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="products.html">Products</a></li>
                    <li><a href="blog.html" class="active">Blog</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="nav-toggle"><i class="fas fa-bars"></i></div>
        </div>
    </nav>
    
    <div style="padding: 8rem 0 4rem;">
        <div class="container">
            <div class="section-header">
                <h1>Latest Insights</h1>
                <p>Articles, tutorials, and guides for digital professionals</p>
            </div>
            <div class="blog-grid">
                <div class="blog-card">
                    <div class="blog-content">
                        <div class="blog-date">March 25, 2026</div>
                        <h3 class="blog-title">How to Start a Podcast in 2026: Complete Guide</h3>
                        <p class="blog-excerpt">Learn everything you need to launch a successful podcast this year.</p>
                        <a href="#" class="read-more">Read More →</a>
                    </div>
                </div>
                <div class="blog-card">
                    <div class="blog-content">
                        <div class="blog-date">March 20, 2026</div>
                        <h3 class="blog-title">Bitcoin Price Prediction 2026: Expert Analysis</h3>
                        <p class="blog-excerpt">What to expect from Bitcoin this year after the halving.</p>
                        <a href="#" class="read-more">Read More →</a>
                    </div>
                </div>
                <div class="blog-card">
                    <div class="blog-content">
                        <div class="blog-date">March 15, 2026</div>
                        <h3 class="blog-title">500+ ChatGPT Prompts for Content Creators</h3>
                        <p class="blog-excerpt">Boost your productivity with these proven AI prompts.</p>
                        <a href="#" class="read-more">Read More →</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <div class="container">
            <div class="footer-bottom"><p>&copy; 2026 Nirob Digital. All rights reserved.</p></div>
        </div>
    </footer>
    <script src="../assets/js/main.js"></script>
</body>
</html>
BLOGFILEEOF

# README.md update
cat > README.md << 'README'
# 🌐 Nirob Digital

**Smart Digital Income Platform**

Nirob Digital is a complete e-commerce solution and digital income platform empowering creators, developers, and entrepreneurs with cutting-edge tools in Web3, AI, Cybersecurity, and Digital Marketing.

## 🎯 Vision
Create **6,400+ jobs globally** by 2030.

## 🚀 Services
- 🤖 AI & ChatGPT – Prompts, automation, tools
- 💰 Crypto & Web3 – Trading bots, smart contracts
- 🎙️ Podcast & Audio – Templates, editing, equipment
- 🔒 Cybersecurity – VPN guides, security checklists
- 📈 Digital Marketing – SEO, social media, email
- 🛒 Marketplace – Seller memberships, classified ads

## 📂 Project Structure


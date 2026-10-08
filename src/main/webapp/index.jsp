```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Modern E-Commerce</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Playfair+Display:wght@700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root{
    --bg:#f6f7fb;
    --white:#ffffff;

    --dark:#101426;
    --dark-2:#181d35;

    --primary:#6c63ff;
    --primary-dark:#5148e5;
    --primary-light:#eeedff;

    --orange:#ff7657;
    --orange-dark:#ed5c3e;

    --green:#22b573;
    --yellow:#ffc857;

    --text:#171a2b;
    --muted:#74798c;
    --light:#a6aabd;

    --border:#e9eaf1;

    --radius:22px;
    --radius-sm:14px;

    --shadow:0 10px 40px rgba(25,30,60,.07);
    --shadow-hover:0 20px 60px rgba(25,30,60,.13);

    --transition:.3s ease;

    --container:1280px;
}


/* =========================================================
   RESET
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:'Inter',sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.5;
    overflow-x:hidden;
}

a{
    text-decoration:none;
    color:inherit;
}

button,
input{
    font-family:inherit;
}

button{
    border:0;
    cursor:pointer;
}

img{
    max-width:100%;
    display:block;
}

.container{
    width:100%;
    max-width:var(--container);
    margin:auto;
    padding:0 25px;
}


/* =========================================================
   SCROLLBAR
========================================================= */

::-webkit-scrollbar{
    width:8px;
}

::-webkit-scrollbar-track{
    background:#f0f1f6;
}

::-webkit-scrollbar-thumb{
    background:linear-gradient(var(--primary),var(--orange));
    border-radius:20px;
}


/* =========================================================
   HEADER
========================================================= */

header{
    position:sticky;
    top:0;
    z-index:999;

    background:rgba(255,255,255,.82);
    backdrop-filter:blur(20px);
    -webkit-backdrop-filter:blur(20px);

    border-bottom:1px solid rgba(20,25,50,.06);
}

.header-inner{
    min-height:76px;

    display:flex;
    align-items:center;
    justify-content:space-between;

    gap:25px;
}


/* LOGO */

.brand{
    display:flex;
    align-items:center;
    gap:10px;

    font-size:23px;
    font-weight:900;

    letter-spacing:-.8px;
}

.brand i{
    width:42px;
    height:42px;

    display:grid;
    place-items:center;

    border-radius:13px;

    color:#fff;

    background:linear-gradient(135deg,var(--primary),#9b72ff);

    box-shadow:0 8px 25px rgba(108,99,255,.25);
}

.brand .accent{
    color:var(--primary);
}


/* NAV */

.main-nav ul{
    list-style:none;

    display:flex;
    align-items:center;

    gap:4px;
}

.main-nav a{
    display:flex;
    align-items:center;
    gap:7px;

    padding:10px 14px;

    border-radius:12px;

    font-size:14px;
    font-weight:600;

    color:var(--muted);

    transition:var(--transition);
}

.main-nav a:hover,
.main-nav a.active{
    background:var(--primary-light);
    color:var(--primary);
}


/* HEADER RIGHT */

.header-right{
    display:flex;
    align-items:center;
    gap:10px;
}


/* SEARCH */

.search-wrap{
    width:250px;

    display:flex;
    align-items:center;

    padding:0 15px;

    background:#f2f3f8;

    border:2px solid transparent;

    border-radius:50px;

    transition:var(--transition);
}

.search-wrap:focus-within{
    background:#fff;
    border-color:var(--primary);

    box-shadow:0 0 0 5px rgba(108,99,255,.08);
}

.search-wrap input{
    width:100%;

    border:0;
    outline:0;

    background:transparent;

    padding:11px 8px;

    font-size:13px;
}

.search-wrap button{
    background:none;
    color:var(--muted);
}

.search-wrap button:hover{
    color:var(--primary);
}


/* ICON BUTTON */

.icon-btn{
    width:43px;
    height:43px;

    display:grid;
    place-items:center;

    border-radius:50%;

    background:#f3f4f8;

    color:var(--muted);

    transition:var(--transition);

    position:relative;
}

.icon-btn:hover{
    background:var(--primary);
    color:white;

    transform:translateY(-2px);
}

.cart-wrap{
    position:relative;
}

.cart-count{
    position:absolute;

    right:-3px;
    top:-4px;

    width:19px;
    height:19px;

    display:grid;
    place-items:center;

    border-radius:50%;

    background:var(--orange);
    color:#fff;

    font-size:10px;
    font-weight:800;

    border:2px solid #fff;
}


/* MOBILE */

.mobile-toggle{
    display:none;

    width:42px;
    height:42px;

    border-radius:12px;

    background:var(--primary-light);
    color:var(--primary);

    font-size:18px;
}


/* =========================================================
   HERO
========================================================= */

.hero{
    position:relative;

    margin:24px auto 0;

    max-width:1280px;
    min-height:540px;

    overflow:hidden;

    border-radius:30px;

    background:
        radial-gradient(circle at 80% 20%,rgba(108,99,255,.5),transparent 35%),
        linear-gradient(135deg,#101426,#20264a);

    display:flex;
    align-items:center;
}

.hero::before{
    content:"";

    position:absolute;
    width:550px;
    height:550px;

    right:-180px;
    top:-180px;

    background:linear-gradient(
        135deg,
        rgba(255,118,87,.4),
        rgba(108,99,255,.1)
    );

    border-radius:50%;

    filter:blur(5px);
}

.hero::after{
    content:"";

    position:absolute;

    width:350px;
    height:350px;

    left:-170px;
    bottom:-170px;

    border-radius:50%;

    background:rgba(108,99,255,.25);

    filter:blur(20px);
}

.hero-content{
    position:relative;
    z-index:2;

    padding:75px;
}

.hero-badge{
    display:inline-flex;
    align-items:center;
    gap:8px;

    padding:8px 15px;

    border-radius:50px;

    background:rgba(255,255,255,.1);

    border:1px solid rgba(255,255,255,.15);

    color:#fff;

    font-size:12px;
    font-weight:700;

    margin-bottom:20px;
}

.hero-badge i{
    color:#ffc857;
}

.hero h1{
    font-family:'Playfair Display',serif;

    color:#fff;

    font-size:60px;

    line-height:1.08;

    letter-spacing:-1.5px;

    max-width:650px;

    margin-bottom:20px;
}

.hero h1 span{
    color:#a89fff;
}

.hero p{
    max-width:570px;

    color:rgba(255,255,255,.72);

    font-size:16px;

    line-height:1.8;

    margin-bottom:30px;
}

.hero-actions{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}


/* HERO BUTTONS */

.btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;

    gap:8px;

    padding:13px 23px;

    border-radius:13px;

    font-size:14px;
    font-weight:700;

    transition:var(--transition);
}

.btn-primary{
    color:#fff;

    background:linear-gradient(
        135deg,
        var(--primary),
        #887cff
    );

    box-shadow:0 12px 30px rgba(108,99,255,.3);
}

.btn-primary:hover{
    transform:translateY(-3px);

    box-shadow:0 18px 35px rgba(108,99,255,.4);
}

.btn-white{
    color:#fff;

    background:rgba(255,255,255,.1);

    border:1px solid rgba(255,255,255,.2);
}

.btn-white:hover{
    background:#fff;
    color:var(--dark);
}


/* HERO STATS */

.hero-stats{
    display:flex;
    gap:35px;

    margin-top:40px;
}

.hero-stat strong{
    display:block;

    color:#fff;

    font-size:22px;
}

.hero-stat span{
    color:rgba(255,255,255,.55);

    font-size:12px;
}


/* =========================================================
   SECTIONS
========================================================= */

.section{
    padding:75px 0;
}

.section-heading{
    display:flex;
    align-items:flex-end;
    justify-content:space-between;

    gap:20px;

    margin-bottom:30px;
}

.section-heading h2{
    font-size:30px;
    letter-spacing:-.8px;
}

.section-heading p{
    color:var(--muted);

    margin-top:5px;

    font-size:14px;
}

.view-all{
    display:flex;
    align-items:center;
    gap:7px;

    color:var(--primary);

    font-size:13px;
    font-weight:700;

    transition:var(--transition);
}

.view-all:hover{
    gap:12px;
}


/* =========================================================
   CATEGORIES
========================================================= */

.categories-grid{
    display:grid;

    grid-template-columns:repeat(6,1fr);

    gap:16px;
}

.cat-card{
    position:relative;

    padding:25px 15px;

    background:#fff;

    border:1px solid var(--border);

    border-radius:20px;

    text-align:center;

    cursor:pointer;

    transition:var(--transition);

    overflow:hidden;
}

.cat-card::after{
    content:"";

    position:absolute;

    width:80px;
    height:80px;

    border-radius:50%;

    background:var(--primary-light);

    right:-30px;
    top:-30px;

    transition:var(--transition);
}

.cat-card:hover{
    transform:translateY(-8px);

    border-color:#dcd9ff;

    box-shadow:var(--shadow-hover);
}

.cat-card:hover::after{
    transform:scale(2);
}

.cat-icon{
    position:relative;
    z-index:2;

    width:58px;
    height:58px;

    display:grid;
    place-items:center;

    margin:0 auto 15px;

    border-radius:18px;

    background:var(--primary-light);

    color:var(--primary);

    font-size:23px;

    transition:var(--transition);
}

.cat-card:hover .cat-icon{
    background:var(--primary);
    color:#fff;

    transform:rotate(-5deg) scale(1.05);
}

.cat-card h4{
    position:relative;
    z-index:2;

    font-size:14px;
}

.cat-card span{
    position:relative;
    z-index:2;

    display:block;

    color:var(--muted);

    font-size:12px;

    margin-top:4px;
}


/* =========================================================
   PRODUCTS
========================================================= */

.products-grid{
    display:grid;

    grid-template-columns:repeat(4,1fr);

    gap:22px;
}

.product-card{
    background:#fff;

    border:1px solid var(--border);

    border-radius:22px;

    overflow:hidden;

    transition:var(--transition);

    position:relative;
}

.product-card:hover{
    transform:translateY(-8px);

    box-shadow:var(--shadow-hover);

    border-color:#ddd9ff;
}

.product-img{
    position:relative;

    aspect-ratio:1/1;

    overflow:hidden;

    background:#f0f1f6;
}

.product-img img{
    width:100%;
    height:100%;

    object-fit:cover;

    transition:.5s ease;
}

.product-card:hover .product-img img{
    transform:scale(1.07);
}


/* PRODUCT BADGE */

.product-badge{
    position:absolute;

    left:13px;
    top:13px;

    padding:6px 11px;

    border-radius:50px;

    color:#fff;

    background:var(--primary);

    font-size:10px;
    font-weight:800;

    z-index:2;
}

.product-badge.sale{
    background:var(--orange);
}


/* WISHLIST */

.wish-btn{
    position:absolute;

    right:13px;
    top:13px;

    width:37px;
    height:37px;

    display:grid;
    place-items:center;

    border-radius:50%;

    background:rgba(255,255,255,.9);

    color:var(--muted);

    backdrop-filter:blur(8px);

    transition:var(--transition);

    z-index:3;
}

.wish-btn:hover{
    background:var(--orange);
    color:#fff;

    transform:scale(1.1);
}


/* QUICK VIEW */

.quick-view{
    position:absolute;

    left:50%;
    bottom:12px;

    transform:translate(-50%,20px);

    opacity:0;

    padding:8px 15px;

    border-radius:30px;

    background:#fff;

    color:var(--dark);

    font-size:11px;
    font-weight:700;

    box-shadow:0 8px 20px rgba(0,0,0,.12);

    transition:var(--transition);
}

.product-card:hover .quick-view{
    transform:translate(-50%,0);
    opacity:1;
}


/* PRODUCT BODY */

.product-body{
    padding:18px;
}

.product-category{
    color:var(--primary);

    font-size:10px;

    font-weight:800;

    text-transform:uppercase;

    letter-spacing:1px;
}

.product-title{
    font-size:15px;

    margin:6px 0;

    line-height:1.35;

    min-height:40px;
}

.rating{
    display:flex;
    align-items:center;

    gap:5px;

    color:#f5a623;

    font-size:12px;

    margin:8px 0;
}

.rating span{
    color:var(--muted);
}


/* PRICE */

.price-row{
    display:flex;
    align-items:center;

    gap:9px;

    margin-top:8px;
}

.price{
    font-size:19px;

    font-weight:800;
}

.old-price{
    color:#a6aabd;

    text-decoration:line-through;

    font-size:12px;
}


/* PRODUCT FOOTER */

.product-footer{
    display:flex;

    gap:8px;

    margin-top:14px;
}

.add-btn{
    flex:1;

    padding:11px;

    border-radius:12px;

    background:var(--dark);

    color:#fff;

    font-size:12px;

    font-weight:700;

    transition:var(--transition);
}

.add-btn:hover{
    background:var(--primary);

    transform:translateY(-2px);
}

.add-btn.added{
    background:var(--green);
}


/* =========================================================
   FLASH DEAL
========================================================= */

.deal-card{
    display:grid;

    grid-template-columns:48% 52%;

    overflow:hidden;

    border-radius:28px;

    background:
        linear-gradient(
            135deg,
            #151a32,
            #282f5b
        );

    box-shadow:0 20px 60px rgba(20,25,60,.15);
}

.deal-image{
    min-height:430px;

    position:relative;
}

.deal-image::after{
    content:"";

    position:absolute;
    inset:0;

    background:linear-gradient(
        90deg,
        transparent,
        rgba(20,25,55,.4)
    );
}

.deal-image img{
    width:100%;
    height:100%;

    object-fit:cover;
}

.deal-content{
    padding:55px;

    display:flex;

    justify-content:center;

    flex-direction:column;
}

.deal-tag{
    display:inline-flex;

    align-items:center;

    gap:7px;

    align-self:flex-start;

    padding:7px 13px;

    background:rgba(255,200,87,.15);

    color:#ffd36d;

    border:1px solid rgba(255,200,87,.25);

    border-radius:50px;

    font-size:11px;

    font-weight:800;

    text-transform:uppercase;
}

.deal-content h3{
    color:#fff;

    font-size:35px;

    margin:15px 0 8px;
}

.deal-desc{
    color:rgba(255,255,255,.65);

    font-size:14px;

    max-width:470px;

    line-height:1.7;
}

.deal-price{
    margin:20px 0 5px;

    color:#fff;

    font-size:35px;

    font-weight:900;
}

.deal-price span{
    color:rgba(255,255,255,.4);

    font-size:17px;

    font-weight:400;

    text-decoration:line-through;

    margin-left:8px;
}

.stock{
    color:rgba(255,255,255,.6);

    font-size:12px;
}

.stock strong{
    color:#ff9a83;
}


/* TIMER */

.timer{
    display:flex;

    gap:10px;

    margin:22px 0;
}

.timer-box{
    min-width:65px;

    padding:11px;

    border-radius:13px;

    background:rgba(255,255,255,.08);

    border:1px solid rgba(255,255,255,.08);

    text-align:center;
}

.timer-box strong{
    display:block;

    color:#fff;

    font-size:22px;
}

.timer-box span{
    color:rgba(255,255,255,.45);

    font-size:9px;

    text-transform:uppercase;
}


/* =========================================================
   TESTIMONIALS
========================================================= */

.testimonials{
    display:grid;

    grid-template-columns:repeat(3,1fr);

    gap:20px;
}

.testimonial{
    padding:27px;

    background:#fff;

    border:1px solid var(--border);

    border-radius:20px;

    transition:var(--transition);
}

.testimonial:hover{
    transform:translateY(-5px);

    box-shadow:var(--shadow);
}

.testimonial-stars{
    color:#ffc857;

    letter-spacing:2px;

    margin-bottom:15px;
}

.testimonial blockquote{
    color:#4e5265;

    font-size:14px;

    line-height:1.7;

    margin-bottom:20px;
}

.author{
    display:flex;
    align-items:center;

    gap:11px;
}

.author img{
    width:43px;
    height:43px;

    border-radius:50%;

    object-fit:cover;
}

.author strong{
    display:block;

    font-size:13px;
}

.author span{
    color:var(--muted);

    font-size:11px;
}


/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    position:relative;

    overflow:hidden;

    padding:55px;

    border-radius:28px;

    background:
        radial-gradient(
            circle at 90% 10%,
            rgba(255,118,87,.4),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #11152b,
            #252b54
        );

    display:flex;

    align-items:center;

    justify-content:space-between;

    gap:30px;
}

.newsletter h3{
    color:#fff;

    font-size:27px;
}

.newsletter p{
    color:rgba(255,255,255,.6);

    margin-top:5px;

    font-size:13px;
}

.newsletter-form{
    display:flex;

    gap:8px;

    width:480px;
}

.newsletter-form input{
    flex:1;

    min-width:0;

    border:1px solid rgba(255,255,255,.15);

    background:rgba(255,255,255,.08);

    color:#fff;

    outline:0;

    padding:14px 18px;

    border-radius:12px;
}

.newsletter-form input::placeholder{
    color:rgba(255,255,255,.45);
}

.newsletter-form .btn{
    white-space:nowrap;
}

.newsletter-msg{
    color:#8ff0c1;

    font-size:12px;

    margin-top:8px;
}


/* =========================================================
   FOOTER
========================================================= */

footer{
    margin-top:20px;

    padding:60px 0 25px;

    background:#101426;

    color:#fff;
}

.footer-grid{
    display:grid;

    grid-template-columns:2fr 1fr 1fr 1fr;

    gap:50px;

    padding-bottom:40px;
}

.footer-brand p{
    color:rgba(255,255,255,.5);

    font-size:13px;

    max-width:310px;

    line-height:1.7;

    margin-top:15px;
}

.footer-title{
    font-size:13px;

    margin-bottom:15px;
}

.footer-list{
    list-style:none;

    display:flex;

    flex-direction:column;

    gap:9px;
}

.footer-list a{
    color:rgba(255,255,255,.5);

    font-size:12px;

    transition:var(--transition);
}

.footer-list a:hover{
    color:#fff;

    padding-left:4px;
}

.socials{
    display:flex;

    gap:8px;

    margin-top:20px;
}

.socials a{
    width:36px;
    height:36px;

    display:grid;
    place-items:center;

    border-radius:10px;

    background:rgba(255,255,255,.07);

    color:rgba(255,255,255,.6);

    transition:var(--transition);
}

.socials a:hover{
    background:var(--primary);

    color:#fff;

    transform:translateY(-3px);
}

.footer-bottom{
    padding-top:20px;

    border-top:1px solid rgba(255,255,255,.08);

    color:rgba(255,255,255,.35);

    font-size:11px;

    text-align:center;
}


/* =========================================================
   MOBILE MENU
========================================================= */

#mobileMenu{
    display:none;

    padding:15px 0 20px;

    background:#fff;

    border-top:1px solid var(--border);
}

#mobileMenu ul{
    list-style:none;
}

#mobileMenu a{
    display:flex;

    align-items:center;

    gap:12px;

    padding:12px;

    border-radius:10px;

    color:var(--text);

    font-size:14px;
}

#mobileMenu a:hover{
    background:var(--primary-light);

    color:var(--primary);
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1150px){

    .main-nav{
        display:none;
    }

    .mobile-toggle{
        display:grid;
        place-items:center;
    }

    .header-inner{
        gap:12px;
    }

    .search-wrap{
        width:200px;
    }

    .categories-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .products-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .hero-content{
        padding:60px;
    }

    .hero h1{
        font-size:48px;
    }
}


@media(max-width:850px){

    .hero{
        margin:15px;
        min-height:470px;
    }

    .hero-content{
        padding:45px;
    }

    .hero h1{
        font-size:42px;
    }

    .deal-card{
        grid-template-columns:1fr;
    }

    .deal-image{
        min-height:300px;
    }

    .testimonials{
        grid-template-columns:1fr 1fr;
    }

    .newsletter{
        flex-direction:column;
        align-items:flex-start;
    }

    .newsletter-form{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}


@media(max-width:650px){

    .container{
        padding:0 16px;
    }

    .header-inner{
        min-height:65px;
    }

    .brand{
        font-size:18px;
    }

    .brand i{
        width:37px;
        height:37px;
    }

    .search-wrap{
        width:150px;
    }

    .search-wrap input{
        font-size:11px;
    }

    .header-right{
        gap:5px;
    }

    .icon-btn{
        width:38px;
        height:38px;
    }

    .hero{
        margin:10px;

        min-height:470px;

        border-radius:22px;
    }

    .hero-content{
        padding:30px 25px;
    }

    .hero h1{
        font-size:35px;
    }

    .hero p{
        font-size:13px;
    }

    .hero-stats{
        gap:20px;
    }

    .hero-stat strong{
        font-size:18px;
    }

    .section{
        padding:55px 0;
    }

    .section-heading h2{
        font-size:24px;
    }

    .categories-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .products-grid{
        grid-template-columns:repeat(2,1fr);

        gap:12px;
    }

    .product-body{
        padding:13px;
    }

    .product-title{
        font-size:13px;
    }

    .price{
        font-size:16px;
    }

    .deal-content{
        padding:30px 25px;
    }

    .deal-content h3{
        font-size:28px;
    }

    .testimonials{
        grid-template-columns:1fr;
    }

    .newsletter{
        padding:32px 25px;
    }

    .newsletter-form{
        flex-direction:column;
    }

    .footer-grid{
        grid-template-columns:1fr;
        gap:30px;
    }
}


@media(max-width:450px){

    .search-wrap{
        display:none;
    }

    .hero h1{
        font-size:30px;
    }

    .hero-stats{
        gap:15px;
    }

    .categories-grid{
        gap:9px;
    }

    .cat-card{
        padding:18px 8px;
    }

    .cat-icon{
        width:48px;
        height:48px;
    }

    .product-footer .add-btn{
        font-size:11px;
    }

    .timer-box{
        min-width:54px;
    }

    .timer-box strong{
        font-size:18px;
    }
}

</style>
</head>


<body>


<!-- =====================================================
     HEADER
===================================================== -->

<header>

<div class="container header-inner">

<div style="display:flex;align-items:center;gap:12px;">

<button class="mobile-toggle" id="mobileToggle">
<i class="fas fa-bars"></i>
</button>

<a href="#" class="brand">

<i class="fas fa-bag-shopping"></i>

<span>
Nexus<span class="accent">Shop</span>
</span>

</a>

</div>


<nav class="main-nav">

<ul>

<li>
<a href="#" class="active">
<i class="fas fa-house"></i>
Home
</a>
</li>

<li>
<a href="#categories">
<i class="fas fa-layer-group"></i>
Categories
</a>
</li>

<li>
<a href="#products">
<i class="fas fa-fire"></i>
Trending
</a>
</li>

<li>
<a href="#deals">
<i class="fas fa-bolt"></i>
Deals
</a>
</li>

<li>
<a href="#testimonials">
<i class="fas fa-star"></i>
Reviews
</a>
</li>

</ul>

</nav>


<div class="header-right">

<div class="search-wrap">

<input
type="search"
id="searchInput"
placeholder="Search products..."
>

<button id="searchBtn">
<i class="fas fa-search"></i>
</button>

</div>


<button class="icon-btn">

<i class="far fa-user"></i>

</button>


<button class="icon-btn">

<i class="far fa-heart"></i>

</button>


<div class="cart-wrap">

<button class="icon-btn" id="cartBtn">

<i class="fas fa-bag-shopping"></i>

</button>

<span class="cart-count" id="cartCount">
0
</span>

</div>

</div>

</div>


<div id="mobileMenu">

<div class="container">

<ul>

<li><a href="#"><i class="fas fa-house"></i> Home</a></li>

<li><a href="#categories"><i class="fas fa-layer-group"></i> Categories</a></li>

<li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>

<li><a href="#deals"><i class="fas fa-bolt"></i> Deals</a></li>

<li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>

</ul>

</div>

</div>

</header>



<!-- =====================================================
     MAIN
===================================================== -->

<main>


<!-- HERO -->

<section class="hero">

<div class="hero-content">

<div class="hero-badge">

<i class="fas fa-sparkles"></i>

New Collection 2026

</div>


<h1>

Upgrade Your

<span>Everyday.</span>

</h1>


<p>

Discover premium fashion, smart technology and
modern accessories — carefully selected for people
who expect more from their everyday essentials.

</p>


<div class="hero-actions">

<button class="btn btn-primary" id="shopNow">

Shop Collection

<i class="fas fa-arrow-right"></i>

</button>


<button class="btn btn-white" id="exploreDeals">

<i class="fas fa-bolt"></i>

Today's Deals

</button>

</div>


<div class="hero-stats">

<div class="hero-stat">

<strong>10K+</strong>

<span>Happy Customers</span>

</div>


<div class="hero-stat">

<strong>500+</strong>

<span>Premium Products</span>

</div>


<div class="hero-stat">

<strong>4.9/5</strong>

<span>Customer Rating</span>

</div>

</div>

</div>

</section>



<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="section" id="categories">

<div class="container">

<div class="section-heading">

<div>

<h2>Shop by Category</h2>

<p>Everything you need, all in one place.</p>

</div>

<a href="#" class="view-all">

View All

<i class="fas fa-arrow-right"></i>

</a>

</div>


<div class="categories-grid" id="categoriesGrid"></div>

</div>

</section>



<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="section" id="products">

<div class="container">

<div class="section-heading">

<div>

<h2>Trending Products</h2>

<p>Our most loved products right now.</p>

</div>

<a href="#" class="view-all">

Explore More

<i class="fas fa-arrow-right"></i>

</a>

</div>


<div class="products-grid" id="productsGrid"></div>

</div>

</section>



<!-- =====================================================
     FLASH DEAL
===================================================== -->

<section class="section" id="deals">

<div class="container">

<div class="section-heading">

<div>

<h2>⚡ Flash Deal</h2>

<p>Limited time. Limited stock.</p>

</div>

</div>


<div class="deal-card">

<div class="deal-image">

<img
src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
alt="MacBook Air"
>

</div>


<div class="deal-content">

<span class="deal-tag">

<i class="fas fa-bolt"></i>

Limited Offer

</span>


<h3>
MacBook Air M2
</h3>


<p class="deal-desc">

Thin, light and incredibly powerful.
Experience next-level performance with
the Apple M2 chip.

</p>


<div class="deal-price">

$999

<span>$1,199</span>

</div>


<div class="stock">

Only <strong>12 items</strong> left

</div>


<div class="timer">

<div class="timer-box">

<strong id="dealDays">0</strong>

<span>Days</span>

</div>


<div class="timer-box">

<strong id="dealHours">00</strong>

<span>Hours</span>

</div>


<div class="timer-box">

<strong id="dealMinutes">00</strong>

<span>Minutes</span>

</div>


<div class="timer-box">

<strong id="dealSeconds">00</strong>

<span>Seconds</span>

</div>

</div>


<button class="btn btn-primary" id="buyDeal">

<i class="fas fa-cart-plus"></i>

Add Deal to Cart

</button>

</div>

</div>

</div>

</section>



<!-- =====================================================
     TESTIMONIALS
===================================================== -->

<section class="section" id="testimonials">

<div class="container">

<div class="section-heading">

<div>

<h2>What Customers Say</h2>

<p>Loved by thousands of shoppers.</p>

</div>

</div>


<div class="testimonials" id="testimonialsList"></div>

</div>

</section>



<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="section">

<div class="container">

<div class="newsletter">

<div>

<h3>
Get 10% Off Your First Order
</h3>

<p>
Subscribe for exclusive offers and new arrivals.
</p>

</div>


<form class="newsletter-form" id="newsletterForm">

<input
type="email"
id="newsletterEmail"
placeholder="Enter your email"
required
>

<button class="btn btn-primary">

Subscribe

<i class="fas fa-paper-plane"></i>

</button>

</form>

<div
class="newsletter-msg"
id="newsletterMsg"
></div>

</div>

</div>

</section>


</main>



<!-- =====================================================
     FOOTER
===================================================== -->

<footer>

<div class="container">

<div class="footer-grid">


<div class="footer-brand">

<div class="brand">

<i class="fas fa-bag-shopping"></i>

<span>
Nexus<span class="accent">Shop</span>
</span>

</div>


<p>

Modern shopping for modern lifestyles.
Premium products, secure checkout and
a seamless shopping experience.

</p>


<div class="socials">

<a href="#">
<i class="fab fa-facebook-f"></i>
</a>

<a href="#">
<i class="fab fa-instagram"></i>
</a>

<a href="#">
<i class="fab fa-x-twitter"></i>
</a>

<a href="#">
<i class="fab fa-youtube"></i>
</a>

</div>

</div>


<div>

<h4 class="footer-title">
Company
</h4>

<ul class="footer-list">

<li><a href="#">About Us</a></li>

<li><a href="#">Careers</a></li>

<li><a href="#">Our Blog</a></li>

<li><a href="#">Press</a></li>

</ul>

</div>


<div>

<h4 class="footer-title">
Support
</h4>

<ul class="footer-list">

<li><a href="#">Help Center</a></li>

<li><a href="#">Shipping</a></li>

<li><a href="#">Returns</a></li>

<li><a href="#">Contact</a></li>

</ul>

</div>


<div>

<h4 class="footer-title">
Legal
</h4>

<ul class="footer-list">

<li><a href="#">Privacy Policy</a></li>

<li><a href="#">Terms</a></li>

<li><a href="#">Cookies</a></li>

</ul>

</div>


</div>


<div class="footer-bottom">

© <span id="year"></span> NexusShop.
All rights reserved.

</div>

</div>

</footer>



<script>

/* =========================================================
   DATA
========================================================= */

const CATEGORIES = [

{
id:'phones',
name:'Smartphones',
icon:'fa-mobile-screen-button',
count:24
},

{
id:'laptops',
name:'Laptops',
icon:'fa-laptop',
count:18
},

{
id:'clothing',
name:'Clothing',
icon:'fa-shirt',
count:42
},

{
id:'gadgets',
name:'Gadgets',
icon:'fa-headphones',
count:31
},

{
id:'footwear',
name:'Footwear',
icon:'fa-shoe-prints',
count:27
},

{
id:'accessories',
name:'Accessories',
icon:'fa-watch',
count:39
}

];


const PRODUCTS = [

{
id:1,
title:'iPhone 14 Pro Max',
price:1099,
oldPrice:1199,
rating:5,
reviews:128,
badge:'New',
img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',
category:'Smartphones'
},

{
id:2,
title:'MacBook Pro 14"',
price:1999,
rating:4,
reviews:86,
badge:'',
img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',
category:'Laptops'
},

{
id:3,
title:'Apple Watch Series 8',
price:349,
oldPrice:399,
rating:5,
reviews:214,
badge:'Sale',
img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',
category:'Accessories'
},

{
id:4,
title:'Nike Air Max 270',
price:150,
rating:4,
reviews:53,
badge:'',
img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',
category:'Footwear'
},

{
id:5,
title:'Sony A7 IV Camera',
price:2499,
rating:5,
reviews:42,
badge:'New',
img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',
category:'Gadgets'
},

{
id:6,
title:'Chanel No. 5',
price:120,
rating:5,
reviews:189,
badge:'',
img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',
category:'Accessories'
},

{
id:7,
title:'Travel Backpack',
price:79,
oldPrice:99,
rating:4,
reviews:67,
badge:'Sale',
img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',
category:'Accessories'
},

{
id:8,
title:'Sony WH-1000XM5',
price:399,
rating:5,
reviews:156,
badge:'',
img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',
category:'Gadgets'
}

];


const TESTIMONIALS = [

{
name:'Ava Martin',
role:'Verified Buyer',
avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80',
text:'Fast shipping and excellent support. The product exceeded my expectations!',
stars:5
},

{
name:'Michael Lee',
role:'Frequent Shopper',
avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80',
text:'Great selection and smooth checkout. I will definitely shop again.',
stars:4
},

{
name:'Sophia Chen',
role:'Designer',
avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80',
text:'Love the quality and packaging. Everything arrived in perfect condition.',
stars:5
}

];


/* =========================================================
   STATE
========================================================= */

let cartCount=0;


/* =========================================================
   ELEMENTS
========================================================= */

const categoriesGrid=
document.getElementById('categoriesGrid');

const productsGrid=
document.getElementById('productsGrid');

const testimonialsList=
document.getElementById('testimonialsList');

const cartCountEl=
document.getElementById('cartCount');

const searchInput=
document.getElementById('searchInput');

const searchBtn=
document.getElementById('searchBtn');


/* =========================================================
   ESCAPE HTML
========================================================= */

function escapeHtml(text){

return String(text).replace(/[&<>"']/g,function(char){

return {

'&':'&amp;',
'<':'&lt;',
'>':'&gt;',
'"':'&quot;',
"'":'&#39;'

}[char];

});

}


/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories(){

categoriesGrid.innerHTML='';

CATEGORIES.forEach(cat=>{

const card=document.createElement('div');

card.className='cat-card';

card.innerHTML=`

<div class="cat-icon">

<i class="fas ${cat.icon}"></i>

</div>

<h4>${cat.name}</h4>

<span>${cat.count} products</span>

`;

card.addEventListener('click',()=>{

searchInput.value=cat.name;

filterProducts(cat.name);

document
.getElementById('products')
.scrollIntoView({
behavior:'smooth'
});

});

categoriesGrid.appendChild(card);

});

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(list){

productsGrid.innerHTML='';

if(!list.length){

productsGrid.innerHTML=`

<div style="
grid-column:1/-1;
padding:60px;
text-align:center;
color:var(--muted);
">

<i class="fas fa-box-open"
style="font-size:40px;margin-bottom:15px">
</i>

<h3>No products found</h3>

<p>Try another search term.</p>

</div>

`;

return;

}


list.forEach(product=>{

const card=document.createElement('article');

card.className='product-card';


const badge=
product.badge
?
`<span class="product-badge ${product.badge==='Sale'?'sale':''}">
${product.badge}
</span>`
:'';


const oldPrice=
product.oldPrice
?
`<span class="old-price">
$${product.oldPrice.toLocaleString()}
</span>`
:'';


const stars=
'★'.repeat(product.rating)+
'☆'.repeat(5-product.rating);


card.innerHTML=`

<div class="product-img">

<img
src="${product.img}"
alt="${escapeHtml(product.title)}"
loading="lazy"
>

${badge}

<button
class="wish-btn"
aria-label="Wishlist"
>

<i class="far fa-heart"></i>

</button>

<button class="quick-view">

Quick View

</button>

</div>


<div class="product-body">

<div class="product-category">
${product.category}
</div>

<h3 class="product-title">
${escapeHtml(product.title)}
</h3>


<div class="rating">

${stars}

<span>
(${product.reviews})
</span>

</div>


<div class="price-row">

<span class="price">
$${product.price.toLocaleString()}
</span>

${oldPrice}

</div>


<div class="product-footer">

<button
class="add-btn"
data-id="${product.id}"
>

<i class="fas fa-cart-plus"></i>

Add to Cart

</button>

</div>

</div>

`;

productsGrid.appendChild(card);

});


/* ADD CART */

productsGrid
.querySelectorAll('.add-btn')
.forEach(button=>{

button.addEventListener('click',()=>{

const id=
Number(button.dataset.id);

addToCart(id,button);

});

});


/* WISHLIST */

productsGrid
.querySelectorAll('.wish-btn')
.forEach(button=>{

button.addEventListener('click',()=>{

const icon=
button.querySelector('i');

icon.classList.toggle('far');
icon.classList.toggle('fas');

button.style.color=
icon.classList.contains('fas')
?'var(--orange)'
:'';

});

});

}


/* =========================================================
   TESTIMONIALS
========================================================= */

function renderTestimonials(){

testimonialsList.innerHTML='';

TESTIMONIALS.forEach(t=>{

const card=document.createElement('div');

card.className='testimonial';

const stars=
'★'.repeat(t.stars)+
'☆'.repeat(5-t.stars);

card.innerHTML=`

<div class="testimonial-stars">
${stars}
</div>

<blockquote>

“${escapeHtml(t.text)}”

</blockquote>


<div class="author">

<img
src="${t.avatar}"
alt="${escapeHtml(t.name)}"
>

<div>

<strong>
${escapeHtml(t.name)}
</strong>

<span>
${escapeHtml(t.role)}
</span>

</div>

</div>

`;

testimonialsList.appendChild(card);

});

}


/* =========================================================
   CART
========================================================= */

function updateCart(){

cartCountEl.textContent=cartCount;

cartCountEl.style.transform='scale(1.4)';

setTimeout(()=>{

cartCountEl.style.transform='scale(1)';

},200);

}


function addToCart(id,button){

const product=
PRODUCTS.find(p=>p.id===id);

if(!product)return;

cartCount++;

updateCart();

const original=button.innerHTML;

button.innerHTML=
'<i class="fas fa-check"></i> Added';

button.classList.add('added');

setTimeout(()=>{

button.innerHTML=original;

button.classList.remove('added');

},1500);

}


/* =========================================================
   SEARCH
========================================================= */

function filterProducts(query){

const q=
String(query)
.trim()
.toLowerCase();

if(!q){

renderProducts(PRODUCTS);

return;

}

const filtered=
PRODUCTS.filter(product=>

product.title
.toLowerCase()
.includes(q)

||

product.category
.toLowerCase()
.includes(q)

);

renderProducts(filtered);

}


searchBtn.addEventListener('click',()=>{

filterProducts(searchInput.value);

});


searchInput.addEventListener('keydown',e=>{

if(e.key==='Enter'){

filterProducts(searchInput.value);

}

});


/* =========================================================
   MOBILE MENU
========================================================= */

const mobileToggle=
document.getElementById('mobileToggle');

const mobileMenu=
document.getElementById('mobileMenu');


mobileToggle.addEventListener('click',()=>{

const open=
mobileMenu.style.display==='block';

mobileMenu.style.display=
open?'none':'block';

mobileToggle.innerHTML=
open
?
'<i class="fas fa-bars"></i>'
:
'<i class="fas fa-xmark"></i>';

});


mobileMenu
.querySelectorAll('a')
.forEach(link=>{

link.addEventListener('click',()=>{

mobileMenu.style.display='none';

mobileToggle.innerHTML=
'<i class="fas fa-bars"></i>';

});

});


/* =========================================================
   HERO BUTTONS
========================================================= */

document
.getElementById('shopNow')
.addEventListener('click',()=>{

document
.getElementById('products')
.scrollIntoView({
behavior:'smooth'
});

});


document
.getElementById('exploreDeals')
.addEventListener('click',()=>{

document
.getElementById('deals')
.scrollIntoView({
behavior:'smooth'
});

});


/* =========================================================
   DEAL CART
========================================================= */

document
.getElementById('buyDeal')
.addEventListener('click',function(){

cartCount++;

updateCart();

const original=this.innerHTML;

this.innerHTML=
'<i class="fas fa-check"></i> Added!';

this.style.background='var(--green)';

setTimeout(()=>{

this.innerHTML=original;

this.style.background='';

},1500);

});


/* =========================================================
   DEAL TIMER
========================================================= */

const dealTarget=
new Date(
Date.now()+
(1*24+6)*60*60*1000
);


function updateTimer(){

const diff=
dealTarget-Date.now();

if(diff<=0)return;

const days=
Math.floor(
diff/(1000*60*60*24)
);

const hours=
Math.floor(
(diff/(1000*60*60))%24
);

const minutes=
Math.floor(
(diff/(1000*60))%60
);

const seconds=
Math.floor(
(diff/1000)%60
);


document.getElementById('dealDays')
.textContent=days;

document.getElementById('dealHours')
.textContent=String(hours).padStart(2,'0');

document.getElementById('dealMinutes')
.textContent=String(minutes).padStart(2,'0');

document.getElementById('dealSeconds')
.textContent=String(seconds).padStart(2,'0');

}

updateTimer();

setInterval(updateTimer,1000);


/* =========================================================
   NEWSLETTER
========================================================= */

document
.getElementById('newsletterForm')
.addEventListener('submit',e=>{

e.preventDefault();

const email=
document
.getElementById('newsletterEmail')
.value.trim();

const message=
document.getElementById('newsletterMsg');

if(!email.includes('@')){

message.style.color='#ff8d8d';

message.textContent=
'Please enter a valid email address.';

return;

}

message.style.color='#8ff0c1';

message.textContent=
'✓ Thanks for subscribing!';

document
.getElementById('newsletterEmail')
.value='';

});


/* =========================================================
   CART BUTTON
========================================================= */

document
.getElementById('cartBtn')
.addEventListener('click',()=>{

alert(
`🛒 Your cart has ${cartCount} item${cartCount!==1?'s':''}.`
);

});


/* =========================================================
   FOOTER YEAR
========================================================= */

document
.getElementById('year')
.textContent=
new Date().getFullYear();


/* =========================================================
   INIT
========================================================= */

renderCategories();

renderProducts(PRODUCTS);

renderTestimonials();

updateCart();


/* =========================================================
   RESIZE
========================================================= */

window.addEventListener('resize',()=>{

if(window.innerWidth>650){

mobileMenu.style.display='none';

mobileToggle.innerHTML=
'<i class="fas fa-bars"></i>';

}

});

</script>

</body>
</html>
```

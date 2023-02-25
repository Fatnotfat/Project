<%-- 
    Document   : mainPage
    Created on : Feb 8, 2023, 1:44:23 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SWP391</title>
        <link rel="stylesheet" href="style/mainPage.css">
        <link rel="stylesheet" href="style/base.css">
        <link rel="stylesheet" href="style/grid.css">
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Aboreto&family=Montserrat:ital,wght@0,400;1,500&family=Raleway:wght@700&family=Roboto+Condensed:wght@300;400&family=Rubik:wght@300&display=swap"
            rel="stylesheet">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Montserrat&family=Noto+Serif+JP:wght@600;700&family=Signika:wght@300&family=Ubuntu:wght@700&family=Unbounded:wght@600&family=Varela+Round&family=Work+Sans:ital,wght@1,600&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="myProjects/webProject/icofont/css/icofont.min.css">
        <link href='https://css.gg/facebook.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
              integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />


        <!-- animation libary -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
            />
    </head>

    <body>
        <div class="main">
            <header>
                <div class="grid wide">
                    <div class="grid__row">
                        <div class="grid__full-width">
                            <nav>
                                <div class="nav_left">
                                    <h2><a href="">LUXURY</a></h2>
                                </div>
                                <ul class="nav_center">
                                    <li>

                                        <div class="category__filter-include-type">
                                            <div class="filter-select">
                                                <p class="filter-select__label">
                                                    Categories
                                                </p>

                                                <ul class="filter-select__list">
                                                    <li class="filter-select__item">
                                                        <a href="listProduct.html" class="filter-select__link">Dây chuyền</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="SearchByFilterServlet?txtProductCateID=1" class="filter-select__link">Vòng tay</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Khuyen tai</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Dong ho</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Mat kinh</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                    <li class="filter-select__item">
                                                        <a href="" class="filter-select__link">Nhẫn</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                    </li>
                                    <li>
                                        <a href="#">
                                            About
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Shop
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            Contact
                                        </a>
                                    </li>
                                </ul>

                                <ul class="nav_right">
                                    <li>
                                        <div class="search__bar-container">
                                            <div class="search__box">
                                                <svg width="24" height="25" viewBox="0 0 24 25" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M11.5 21.5C16.7467 21.5 21 17.2467 21 12C21 6.75329 16.7467 2.5 11.5 2.5C6.25329 2.5 2 6.75329 2 12C2 17.2467 6.25329 21.5 11.5 21.5Z" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M22 22.5L20 20.5" stroke="#292D32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                                </svg>
                                                <form action="searchTextController" class="search__box-form">
                                                    <input type="text" class="search__box-form-input"
                                                           onmouseout="this.value = ''; this.blur();"
                                                           name="txtSearch" value="${param.txtSearch}"
                                                           >
                                                    <button type="search">Search</button>
                                                </form>
                                            </div>
                                        </div>

                                    </li>
                                    <li>
                                        <!-- cart shopping -->
                                        <div class="cart__shopping"> 
                                            <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M1.66663 1.66669H3.11663C4.01663 1.66669 4.72496 2.44169 4.64996 3.33335L3.95829 11.6333C3.84163 12.9917 4.91662 14.1583 6.28329 14.1583H15.1583C16.3583 14.1583 17.4083 13.175 17.5 11.9834L17.95 5.73336C18.05 4.35002 17 3.22502 15.6083 3.22502H4.84997"
                                                stroke="#292D32" stroke-width="1.5" stroke-miterlimit="10"
                                                stroke-linecap="round" stroke-linejoin="round" />
                                            <path
                                                d="M13.5417 18.3333C14.117 18.3333 14.5833 17.867 14.5833 17.2917C14.5833 16.7164 14.117 16.25 13.5417 16.25C12.9664 16.25 12.5 16.7164 12.5 17.2917C12.5 17.867 12.9664 18.3333 13.5417 18.3333Z"
                                                stroke="#292D32" stroke-width="1.5" stroke-miterlimit="10"
                                                stroke-linecap="round" stroke-linejoin="round" />
                                            <path
                                                d="M6.87504 18.3333C7.45034 18.3333 7.91671 17.867 7.91671 17.2917C7.91671 16.7164 7.45034 16.25 6.87504 16.25C6.29974 16.25 5.83337 16.7164 5.83337 17.2917C5.83337 17.867 6.29974 18.3333 6.87504 18.3333Z"
                                                stroke="#292D32" stroke-width="1.5" stroke-miterlimit="10"
                                                stroke-linecap="round" stroke-linejoin="round" />
                                            <path d="M7.5 6.66669H17.5" stroke="#292D32" stroke-width="1.5"
                                                  stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round" />
                                            </svg>

                                            <span class="cart__shopping-notice">
                                                1
                                            </span>

                                            <!-- No product in your's cart  bỏ class cart__shopping-list--no-cart nên nó ko hiện "Chưa có sản phẩm"  -->
                                            <div class="cart__shopping-list">
                                                <img src="assets/image/no-cart.png" alt="" class="cart__shopping-list--no-cart-img">
                                                <span class="cart__shopping-list--no-cart-message">
                                                    Chưa có sản phẩm trong giỏ hàng
                                                </span>

                                                <h4 class="cart__shopping-heading">Sản phẩm đã thêm vào giỏ hàng</h4>
                                                <!-- Product in your's cart  -->
                                                <ul class="cart__shopping-list-item">
                                                    <li class="cart__shopping-item">
                                                        <img src="assets/image/duck-light.jpg" alt="" class="cart__shopping-img">
                                                        <div class="cart__shopping-item-info">
                                                            <div class="cart__shopping-item-head">
                                                                <h5 class="cart__shopping-item-name">
                                                                    Chú vịt vui vẻ hehehehehehe
                                                                </h5>

                                                                <div class="cart__shoping-item-price-wrap">
                                                                    <span class="cart__shopping-item-price">1.000.000đ</span>
                                                                    <span class="cart__shopping-item-multiply">x</span>
                                                                    <span class="cart__shopping-item-quantity">10</span>
                                                                </div>

                                                            </div>

                                                            <div class="cart__shopping-item-body">
                                                                <span class="cart__shopping-item-description">
                                                                    Loại sản phẩm: vàng
                                                                </span>

                                                                <span class="cart__shopping-item-remove">
                                                                    Xóa
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </li>


                                                </ul>

                                                <button class="cart__shopping-view-cart btn__view-cart">
                                                    Xem giỏ hàng
                                                </button>
                                            </div>
                                        </div>

                                    </li>
                                    <li>
                                        <!-- User -->
                                        <div class="user__shopping">
                                            <!-- No account  -->
                                            <!-- <div class="user__shopping user__shopping--no-account ">
                                                <div class="user__shopping-icon">
                                                    <span class="material-symbols-outlined">
                                                        Account_circle
                                                    </span>
                                                </div>
                                                <ul class="user__shopping--no-account-list">
                                                    <li class="user__shopping--no-account-list-item">
                                                        <a href="" class="user__shopping--no-account-link">Đăng kí</a>
                                                    </li>
                                                    <li class="user__shopping--no-account-list-item">
                                                        <a href="" class="user__shopping--no-account-link">Đăng nhập</a>
                                                    </li>
                                                </ul>
                                            </div> -->

                                            <!-- Login success -->
                                            <div class="user__shopping user__shopping--login-success ">
                                                <div class="user__shopping-icon">
                                                    <span class="material-symbols-outlined">
                                                        Account_circle
                                                    </span>
                                                </div>
                                                <ul class="user__shopping--login-success-list">
                                                    <c:set var="user" value="${sessionScope.USER}"/>
                                                    <c:if test="${not empty user}">
                                                        <li class="user__shopping--login-success-list-item">
                                                            <a href="" class="user__shopping--login-success-link">${user.name}</a>
                                                        </li>
                                                        <li class="user__shopping--login-success-list-item">
                                                            <a href="logoutController" class="user__shopping--login-success-link">Log Out</a>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${empty user}">
                                                        <li class="user__shopping--login-success-list-item">
                                                            <a href="loginPage" class="user__shopping--login-success-link">Login</a>
                                                        </li>
                                                    </c:if>
                                                </ul>
                                            </div>

                                        </div>
                                    </li>
                                </ul>

                                <!-- Nav responsive -->
                                <div class="nav_bars-cart">
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M1.66663 1.66669H3.11663C4.01663 1.66669 4.72496 2.44169 4.64996 3.33335L3.95829 11.6333C3.84163 12.9917 4.91662 14.1583 6.28329 14.1583H15.1583C16.3583 14.1583 17.4083 13.175 17.5 11.9834L17.95 5.73336C18.05 4.35002 17 3.22502 15.6083 3.22502H4.84997"
                                        stroke="#292D32" stroke-width="1.5" stroke-miterlimit="10"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path
                                        d="M13.5417 18.3333C14.117 18.3333 14.5833 17.867 14.5833 17.2917C14.5833 16.7164 14.117 16.25 13.5417 16.25C12.9664 16.25 12.5 16.7164 12.5 17.2917C12.5 17.867 12.9664 18.3333 13.5417 18.3333Z"
                                        stroke="#292D32" stroke-width="1.5" stroke-miterlimit="10"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path
                                        d="M6.87504 18.3333C7.45034 18.3333 7.91671 17.867 7.91671 17.2917C7.91671 16.7164 7.45034 16.25 6.87504 16.25C6.29974 16.25 5.83337 16.7164 5.83337 17.2917C5.83337 17.867 6.29974 18.3333 6.87504 18.3333Z"
                                        stroke="#292D32" stroke-width="1.5" stroke-miterlimit="10"
                                        stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M7.5 6.66669H17.5" stroke="#292D32" stroke-width="1.5"
                                          stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </div>
                                <div class="nav_bars-brand">
                                    <h2>LUXURY</h2>
                                </div>
                                <div class="nav_bars-btn">
                                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                    <path d="M10 3.75H17.5" stroke="#292D32" stroke-width="1.5" stroke-linecap="round"
                                          stroke-linejoin="round" />
                                    <path d="M10 7.91669H17.5" stroke="#292D32" stroke-width="1.5"
                                          stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M2.5 12.0833H17.5" stroke="#292D32" stroke-width="1.5"
                                          stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M2.5 16.25H17.5" stroke="#292D32" stroke-width="1.5" stroke-linecap="round"
                                          stroke-linejoin="round" />
                                    </svg>

                                </div>

                            </nav>
                        </div>

                    </div>

                </div>
            </header>

            <div class="main_page">

                <div class="grid wide">
                    <div class="grid__row">
                        <div class="grid__full-width">

                            <div class="product">
                                <div class="product_firstline">
                                    <div class="first-ring">
                                        <img src="assets/image/Group.jpg" alt="cat">
                                        <h1 class="first-title">Jewelery tells a freat story</h1>
                                        <ul class="first-content">
                                            <li>
                                                <h2>
                                                    Gold
                                                </h2>
                                                <p>
                                                    Her previson acuteness had two why intention
                                                </p>
                                            </li>
                                            <li>
                                                <h2>
                                                    Sliver
                                                </h2>
                                                <p>
                                                    Her previson acuteness had two why intention
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="second-ring">
                                        <p class="second-title">Our Story</p>
                                        <p class="second-content">
                                            Lorem ipsum dolor sit amet consectetur. Sollicitudin morbi
                                            molestie at amet praesent tortor. Maecenas non tempus at
                                            consequat ac est varius. Tortor aliquet nulia consequat risus.
                                        </p>
                                        <img src="assets/image/2 1.jpg" alt="humuhumu">
                                    </div>
                                </div>

                                <div class="product_secondline">
                                    <img class="product_secondline-img" src="assets/image/Group (1).jpg" alt="">

                                    <div class="product-info">
                                        <div class="product-content-1">
                                            <h4>Gold Woven Chain Bracelet In Black</h4>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur.
                                                Sollicitudin morbi molestie at amet praesent tortor. Maecenas non tempus at
                                                consequat ac est
                                                varius. Tortor aliquet nulla consequat risus.
                                            </p>
                                        </div>

                                        <div class="product-size-1">
                                            <h4>Size</h4>
                                            <ul class="product-size-list">
                                                <li>
                                                    <input type="checkbox" id="check_1" name="check_1" value="check_1">
                                                    <label for="check_1">S</label>

                                                </li>
                                                <li>
                                                    <input type="checkbox" id="check_2" name="check_2" value="check_2">
                                                    <label for="check_2">M</label>

                                                </li>
                                                <li>
                                                    <input type="checkbox" id="check_3" name="check_3" value="check_3">
                                                    <label for="check_3">L</label>

                                                </li>
                                            </ul>

                                        </div>

                                        <form class="product-buy-1" action="#">
                                            <button>Add To Cart</button>
                                            <p>26.339.000 đ</p>
                                        </form>
                                    </div>

                                </div>

                                <div class="product_thirdline">

                                    <div class="product-info">
                                        <div class="product-content-2">
                                            <h4>Gold Black Coral Ring</h4>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur.
                                                Sollicitudin morbi molestie at amet praesent tortor. Maecenas non tempus at
                                                consequat ac est
                                                varius. Tortor aliquet nulla consequat risus.
                                            </p>
                                        </div>

                                        <div class="product-size-2">
                                            <h4>Size</h4>
                                            <ul class="product-size-list">
                                                <li>
                                                    <input type="checkbox" id="check_4" name="check_4" value="check_4">
                                                    <label for="check_4">S</label>

                                                </li>
                                                <li>
                                                    <input type="checkbox" id="check_5" name="check_5" value="check_5">
                                                    <label for="check_5">M</label>

                                                </li>
                                                <li>
                                                    <input type="checkbox" id="check_6" name="check_6" value="check_6">
                                                    <label for="check_6">L</label>

                                                </li>
                                            </ul>

                                        </div>

                                        <form class="product-buy-2" action="#">
                                            <button>Add To Cart</button>
                                            <p>13.339.000 đ</p>
                                        </form>
                                    </div>
                                    <img class="product_thirdline-img" src="assets/image/Vector.jpg" alt="">

                                </div>
                            </div>


                            <div class="outstanding">
                                <div class="frame">
                                    <img class="frame__first-img" src="assets/image/5 50.png" alt="">
                                    <div class="content">
                                        <h3 class="content__first-title ">
                                            Luxury-Shop’s Best
                                            Collections
                                        </h3>
                                        <div class="content-comfort">
                                            <h4 class="content-comfort-title">Comfort</h4>
                                            <p class="content-comfort-info">Lorem ipsum dolor sit amet
                                                consectetur.Sollicitudin morbi molestie at amet praesent tortor.Maecenas non
                                                tempus at consequat ac est varius. Tortor aliquet nulla consequat
                                                risus.consequatconsequat
                                            </p>
                                        </div>
                                    </div>
                                </div>

                                <div class="frame">
                                    <div class="content">
                                        <div class="content-gold">
                                            <h3 class="content__second-title">100% Gold</h3>
                                            <p class="content-gold-info">Lorem ipsum dolor sit amet consectetur.Sollicitudin
                                                morbi molestie at amet praesent tortor.Maecenas non tempus at consequat ac
                                                est varius. Tortor aliquet nulla consequat risus.consequatconsequat
                                            </p>
                                        </div>
                                    </div>
                                    <img class="frame__second-img" src="assets/image/6 1.png" alt="">
                                </div>

                                <div class="frame">
                                    <img class="frame__third-img" src="assets/image/7 1.png" alt="">
                                    <div class="content">
                                        <div class="content-trend">
                                            <h3 class="content__third-title">Trendy</h3>
                                            <p class="content-trend-info">Lorem ipsum dolor sit amet
                                                consectetur.Sollicitudin morbi molestie at amet praesent tortor.Maecenas non
                                                tempus at consequat ac est varius. Tortor aliquet nulla consequat
                                                risus.consequatconsequat
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="list_company">
                                <p><span>Trusted</span> by leading companies</p>
                                <img src="assets/image/BRANDS 1.png" alt="">
                            </div>


                            <div class="join_shop">
                                <h1>Join Luxury-Shop’s Family</h1>
                                <div class="join_group">
                                    <form class="join_form" action="#">
                                        <input type="email" placeholder="Enter your email">
                                        <button>Join Family</button>
                                    </form>
                                </div>
                            </div>


                            <div class="our_blog">
                                <h1>Our Blogs</h1>

                                <div class="our_blog-info">
                                    <div class="info">
                                        <img src="assets/image/8.png" alt="">
                                        <h2>For Beauty</h2>
                                        <p>Lorem ipsum dolor sit amet consectetur.Sollicitudin morbi molestie at amet
                                            praesent tortor.Maecenas non tempus at consequat ac
                                        </p>
                                    </div>

                                    <div class="info">
                                        <img src="assets/image/9.png" alt="">
                                        <h2>Product Quality</h2>
                                        <p>Lorem ipsum dolor sit amet consectetur.Sollicitudin morbi molestie at amet
                                            praesent tortor.Maecenas non tempus at consequat ac
                                        </p>
                                    </div>

                                    <div class="info">
                                        <img src="assets/image/10.png" alt="">
                                        <h2>For Comfort</h2>
                                        <p>Lorem ipsum dolor sit amet consectetur.Sollicitudin morbi molestie at amet
                                            praesent tortor.Maecenas non tempus at consequat ac
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>


            </div>



            <footer>
                <div class="grid wide">
                    <div class="grid__row">
                        <div class="grid__full-width">

                            <div class="footer_img">

                                <img src="assets/image/085d08df32a3613b9ae7aa77b0671cf5.jpg" alt="">

                                <img src="assets/image/51928e06b34442f9b768f9ebef5a0b1d.jpg" alt="">

                                <img src="assets/image/6d070b8f2391f0aaa0e3f16d7819182e.jpg" alt="">

                                <img src="assets/image/d2e6c5dbb612c6f3ff5db767efe1cc37.jpg" alt="">
                            </div>

                            <div class="footer_content">
                                <div class="footer_contact">
                                    <h2>LUXURY</h2>
                                    <p>+0801234567</p>
                                    <p>Địa chỉ: Quận___Thành Phố HCM </p>
                                    <ul>
                                        <li>
                                            <a href=""><i class="fab fa-facebook-square"></i></a>
                                        </li>
                                        <li>
                                            <a href=""><i class="fab fa-instagram"></i></a>
                                        </li>
                                        <li>
                                            <a href=""><i class="fab fa-twitter-square"></i></a>
                                        </li>
                                        <li>
                                            <a href=""><i class="fab fa-linkedin"></i></a>
                                        </li>
                                    </ul>
                                </div>

                                <div class="footer_about">
                                    <h3>About</h3>
                                    <ul>
                                        <li><a href="">Our company</a></li>
                                        <li><a href="">Our products</a></li>
                                        <li><a href="">Lastest Blogs</a></li>
                                        <li><a href="">Why us</a></li>
                                    </ul>
                                </div>

                                <div class="footer_support">
                                    <h3>Support</h3>
                                    <ul>
                                        <li><a href="">Term & conditions</a></li>
                                        <li><a href="">Privacy police</a></li>
                                        <li><a href="">Call support</a></li>
                                        <li><a href="">FAQ</a></li>
                                    </ul>
                                </div>

                                <div class="footer_subscribe">
                                    <h3>Subscribe Newsletter</h3>
                                    <p>New Customer Get OFF 50%...</p>
                                    <form class="footer_form" action="#">
                                        <input type="email" placeholder="Enter your email">
                                        <button>Send</button>
                                    </form>
                                </div>
                                <!-- Footer responsive -->
                                <div class="footer_mobile">
                                    <ul class="footer_list">
                                        <li>Help</li>
                                        <li>Hotline</li>
                                        <li>Instagram</li>
                                        <li>Shoppe</li>
                                        <li>Lazada</li>
                                        <li>Facebook</li>
                                        <li>License</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>
        </div>
    </body>

    <script src="js/mainPage.js"></script>

</html>
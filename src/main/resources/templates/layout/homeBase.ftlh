<!DOCTYPE html>
<html lang="en">
<head>
    <title>Twitter</title>
    <link rel="stylesheet" href="{% static 'css/style.min.css' %}">
    <#import "/src/main/resources/templates/layout/head.ftlh" as s>
    <@s.head/>
</head>
<body>
<#import "/src/main/resources/templates/layout/sprite.ftl" as m>
<@m.sprite/>

<main class="home">
    <div class="home__inner">
        <header class="header">
            <div class="header__inner">
                <a href="{% url 'home' %}" class="circle__small-bird">
                    <svg class="header__small-bird">
                        <use xlink:href="#small_bird"></use>
                    </svg>
                </a>
                <nav class="nav">
                    <a href="{% url 'home' %}" class="nav__link">
                        <svg class="home__home helper-color">
                            <use xlink:href="#home"></use>
                        </svg>
                        <div class="nav__link-name">
                            <span>Главная</span>
                        </div>
                    </a>
                    <a href="{% url 'profile' twitter_user.username id %}" class="nav__link">
                        <svg class="profile helper-color">
                            <use xlink:href="#profile"></use>
                        </svg>
                        <div class="nav__link-name">
                            <span>Профиль</span>
                        </div>
                    </a>

                </nav>
                {#                <a href="#" class="nav__link--tweet">Твитнуть</a>#}
                <a href="{% url 'logout' %}" class="nav__link--tweet">Выйти</a>
                <div class="home__small-profile">
                    <div class="home__profile-image">
                        <img src="{% static 'images/default_profile_reasonably_small.png' %}" class="home__img" alt="">
                    </div>
                    <div class="home__small-info">
                        <div class="small__profile-name">{{ twitter_user.username }}
                        </div>
                        <div class="small__profile-alies">@{{ twitter_user.user_id }}
                        </div>
                    </div>
                </div>
            </div>
        </header>
        {% block home_content %}
        {% endblock %}
        <div class="search__block"></div>
    </div>
</main>

</body>
</html>
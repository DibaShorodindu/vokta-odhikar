<!-- START SIDEBAR -->
<section class="section-dashboard--sidebar">
    <div class="logo-box">
        <a href="index.html">
            <img class="logo" src="{{asset("assets/images/logo.png")}}" alt="logo" />
        </a>
    </div>
    <ul class="menu">
        <li>
            <a href="/" class="menu-item {{($menu == "dashboard") ? "active" : ""}}">
                <i class="bi bi-speedometer2 pe-3"></i>
                ড্যাশবোর্ড
            </a>
        </li>
        <li>
            <a href="/all-case" class="menu-item {{($menu == "all-case") ? "active" : ""}}">
                <i class="bi bi-archive pe-3"></i>
                সমস্ত কেস দেখুন
            </a>
        </li>
        <li>
            <hr />
        </li>

        <li>
            <a href="/logout" class="menu-item">
                <i class="bi bi-box-arrow-right pe-3"></i>
                লগ আউট
            </a>
        </li>
    </ul>
</section>
<!-- END SIDEBAR -->
@extends('layout.app')
@section('body')
    <section class="section-login p-5">
        <div class="section-login--left">
            <div class="logo">
                <a href="login.html">
                    <img src="{{asset("/assets/images/logo.png")}}" alt="logo" />
                </a>
            </div>
        </div>
        <div class="section-login--right">
            <form action="/login" method="post">
                @csrf
                <div class="mb-5">
                    <h1>অ্যাডমিন লগইন</h1>
                </div>
                <div class="mb-5">
                    <input
                            type="email"
                            class="form-control u-box-shadow-1"
                            placeholder="Email"
                            required
                            name="email"
                    />
                </div>
                <div class="mb-5">
                    <input
                            type="password"
                            class="form-control u-box-shadow-1"
                            placeholder="Password"
                            required
                            name="password"
                    />
                </div>
                <div class="mb-3 form-inline">
                    <!-- <a>Forgot your password?</a> -->
                    <button type="submit" class="btn btn-text">লগ ইন</button>
                </div>
            </form>
        </div>
    </section>
@endsection
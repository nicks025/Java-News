<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Fake News Detection</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #1e3a8a, #2563eb);
            color: #fff;
        }

        /* NAVBAR */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 60px;
            background: rgba(0, 0, 0, 0.25);
        }

        header h2 {
            font-size: 26px;
        }

        .nav-right {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .nav-right a {
            color: #fff;
            text-decoration: none;
        }

        .btn {
            padding: 8px 18px;
            border-radius: 6px;
            border: none;
            cursor: pointer;
        }

        .login-btn {
            background: transparent;
            border: 1px solid #fff;
            color: #fff;
        }

        .signup-btn {
            background: #fff;
            color: #1e3a8a;
            font-weight: bold;
        }

        /* HERO */
        .hero {
            padding: 90px 60px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .hero-text {
            max-width: 600px;
        }

        .hero-text h1 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .hero-text p {
            font-size: 18px;
            line-height: 1.7;
            color: #e0e7ff;
            margin-bottom: 30px;
        }

        .hero-text button {
            padding: 14px 30px;
            background: #fff;
            color: #1e3a8a;
            border-radius: 6px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            font-weight: bold;
        }

        .hero-image {
            font-size: 160px;
        }

        /* STATS */
        .stats {
            background: #0f172a;
            padding: 60px;
            display: flex;
            justify-content: space-around;
            text-align: center;
        }

        .stat h2 {
            font-size: 36px;
            color: #60a5fa;
        }

        /* FEATURES */
        .features {
            background: #f8fafc;
            color: #1e293b;
            padding: 80px 60px;
            text-align: center;
        }

        .features h2 {
            margin-bottom: 50px;
            font-size: 34px;
        }

        .feature-box {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .feature {
            background: #fff;
            width: 300px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        }

        .feature h3 {
            color: #2563eb;
            margin-bottom: 12px;
        }

        /* DEMO */
        .demo {
            padding: 80px 60px;
            text-align: center;
        }

        .demo textarea {
            width: 60%;
            height: 120px;
            padding: 15px;
            border-radius: 8px;
            border: none;
            margin-bottom: 20px;
        }

        .demo button {
            padding: 12px 26px;
            border-radius: 6px;
            background: #fff;
            color: #1e3a8a;
            border: none;
            font-weight: bold;
            cursor: pointer;
        }

        /* TESTIMONIALS */
        .testimonials {
            background: #f1f5f9;
            color: #1e293b;
            padding: 80px 60px;
            text-align: center;
        }

        .testimonial-box {
            display: flex;
            justify-content: center;
            gap: 30px;
            flex-wrap: wrap;
        }

        .testimonial {
            width: 300px;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 6px 16px rgba(0,0,0,0.1);
        }

        /* FAQ */
        .faq {
            padding: 80px 60px;
        }

        .faq h2 {
            text-align: center;
            margin-bottom: 40px;
        }

        .faq-item {
            max-width: 700px;
            margin: 15px auto;
            background: rgba(255,255,255,0.15);
            padding: 20px;
            border-radius: 8px;
        }

        /* CTA */
        .cta {
            background: #2563eb;
            padding: 60px;
            text-align: center;
        }

        .cta button {
            margin-top: 20px;
            padding: 14px 30px;
            background: #fff;
            color: #1e3a8a;
            border-radius: 6px;
            border: none;
            font-weight: bold;
            cursor: pointer;
        }

        /* FOOTER */
        footer {
            background: #0f172a;
            padding: 20px;
            text-align: center;
            font-size: 14px;
            color: #cbd5f5;
        }
    </style>
</head>

<body>

<header>
    <h2>Fake News Detection</h2>
    <div class="nav-right">
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Detection</a>
        <a href="#">Contact</a>
        <a href="login.jsp"><button class="btn login-btn">Login</button></a>
        <a href="signup.jsp"><button class="btn signup-btn">Sign Up</button></a>
        <a href="profile.jsp"><button class="btn profile-btn">Profile</button></a>
    </div>
</header>

<section class="hero">
    <div class="hero-text">
        <h1>Detect Fake News with Confidence</h1>
        <p>
            An intelligent platform designed to help users identify misleading
            information quickly and accurately.
        </p>
        <a href="login.jsp"><button>Get Started</button></a>
    </div>
    <div class="hero-image"></div>
</section>

<section class="stats">
    <div class="stat"><h2>95%</h2><p>Accuracy Rate</p></div>
    <div class="stat"><h2>10K+</h2><p>Articles Analyzed</p></div>
    <div class="stat"><h2>5K+</h2><p>Active Users</p></div>
</section>

<section class="features">
    <h2>Key Features</h2>
    <div class="feature-box">
        <div class="feature"><h3>AI Analysis</h3><p>Detects misleading patterns.</p></div>
        <div class="feature"><h3>Fast Results</h3><p>Instant credibility output.</p></div>
        <div class="feature"><h3>Secure</h3><p>Safe and private usage.</p></div>
    </div>
</section>

<section class="demo">
    <h2>Try a Demo</h2>
    <textarea placeholder="Paste news content here..."></textarea><br>
    <button>Analyze News</button>
</section>

<section class="testimonials">
    <h2>What Users Say</h2>
    <div class="testimonial-box">
        <div class="testimonial">Very useful for research.</div>
        <div class="testimonial">Simple and accurate system.</div>
        <div class="testimonial">Perfect academic project.</div>
    </div>
</section>

<section class="faq">
    <h2>Frequently Asked Questions</h2>
    <div class="faq-item"><b>Is it free?</b><br>Yes, completely free.</div>
    <div class="faq-item"><b>Is login required?</b><br>Yes, for security.</div>
    <div class="faq-item"><b>Is data stored?</b><br>No personal data stored.</div>
</section>

<section class="cta">
    <h2>Start Detecting Fake News Today</h2>
    <a href="signup.jsp"><button>Create Free Account</button></a>
</section>

<footer>
    2025 Fake News Detection Project | All Rights Reserved
</footer>

</body>
</html>

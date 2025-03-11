<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="project.signup" %>

    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign-Up עם סרטון רקע</title>
        <link rel="stylesheet" href="/styles/style.css" />
    </head>

    <body>
        <!-- Header -->
        <header>
            <button class="menu-btn" onclick="openSidebar()">
                <img width="24" src="./assets/icons/hamburger.svg" alt="hamburger" />
            </button>

            <!-- Sidebar Menu -->
            <div id="sidebar" class="sidebar">
                <div class="sidebar-content">
                    <div>
                        <button href="javascript:void(0)" class="ts-btn-close" onclick="closeSidebar()">
                            <img width="24" src="./assets/icons/close.svg" alt="close" />
                        </button>
                        <a href="index.html">Home</a>
                        <!-- <a href="Signup.html">Sign Up</a> -->
                        <a href="about.html">About Us</a>
                        <a href="clientsection.html">Clients</a>
                        <a href="contact.html">Contact Us</a>
                    </div>
                    <div>
                        <a href="Signup.html" style="display: flex; gap: 20px;">
                            <div>
                                <svg width="18" height="20" viewBox="0 0 18 20" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                        d="M12.1667 4.99998C12.1667 7.30116 10.3012 9.16665 8 9.16665C5.69882 9.16665 3.83333 7.30116 3.83333 4.99998C3.83333 2.6988 5.69882 0.833313 8 0.833313C10.3012 0.833313 12.1667 2.6988 12.1667 4.99998ZM6.33333 10.8333C3.11168 10.8333 0.5 13.445 0.5 16.6666C0.5 18.0474 1.61929 19.1666 3 19.1666H9.17442C9.53458 19.1666 9.73917 18.7267 9.55267 18.4186C9.09608 17.6642 8.83333 16.7795 8.83333 15.8333C8.83333 14.1382 9.67683 12.6401 10.967 11.7359C11.2698 11.5237 11.244 11.0368 10.8823 10.9601C10.4902 10.8771 10.0835 10.8333 9.66667 10.8333H6.33333ZM13.8333 12.5C14.2936 12.5 14.6667 12.8731 14.6667 13.3333V15H16.3333C16.7936 15 17.1667 15.3731 17.1667 15.8333C17.1667 16.2936 16.7936 16.6666 16.3333 16.6666H14.6667V18.3333C14.6667 18.7935 14.2936 19.1666 13.8333 19.1666C13.3731 19.1666 13 18.7935 13 18.3333V16.6666H11.3333C10.8731 16.6666 10.5 16.2936 10.5 15.8333C10.5 15.3731 10.8731 15 11.3333 15H13V13.3333C13 12.8731 13.3731 12.5 13.8333 12.5Z"
                                        fill="#526581" />
                                </svg>

                            </div>
                            Create an account
                        </a>


                    </div>



                </div>
            </div>
            <a href="/"><img class="logo" src="assets/images/premium-villas-high-resolution-logo.png" alt="" /></a>


        </header>
        <!-- Hero Section with Video -->
        <section class="hero">
            <div class="video-container"></div>
            <video autoplay muted loop>
                <source src="/assets/video/compressedvideo.mp4" type="video/mp4" />

                Your browser does not support the video tag.
            </video>

            <div class="hero-content">

                <div class="form-header">
                    <h2>Create Your Acoount</h2>
                </div>
                <div class="form-container">
                    <form id="signupForm">
                        <div class="input-row mb-5">
                            <div class="input-group ">
                                <label for="full-name">Name</label>
                                <input type="text" id="full-name" placeholder="Full name" required>
                            </div>
                            <div class="input-group ">
                                <label for="email">Email</label>
                                <input type="email" id="email" placeholder="Email Address" required>
                            </div>
                        </div>

                        <div class="input-group mb-5">
                            <label for="password">Password</label>
                            <input type="password" id="password" placeholder="Password" required>
                        </div>

                        <div class="input-group mb-5">
                            <label for="confirm-password">Confirm Password</label>
                            <input type="password" id="confirm-password" placeholder="Confirm Password" required>
                        </div>

                        <button type="submit" class="buttonSubmit">Create Account</button>
                    </form>

                    <!-- Success Message Box -->
                    <div id="successMessage" class="success-message">
                        🎉 Your account has been successfully created!
                    </div>
                </div>
            </div>

            </div>
        </section>
        <script>
            document.getElementById("signupForm").addEventListener("submit", function (event) {
                event.preventDefault();

                // Validate passwords match
                const password = document.getElementById("password").value;
                const confirmPassword = document.getElementById("confirm-password").value;
                if (password !== confirmPassword) {
                    alert("Passwords do not match. Please try again.");
                    return;
                }

                // Show success message
                const successMessage = document.getElementById("successMessage");
                successMessage.style.display = "block";
                setTimeout(() => {
                    successMessage.style.opacity = "1";
                }, 100);

                // Clear form fields
                this.reset();

                // Hide message after 3 seconds
                setTimeout(() => {
                    successMessage.style.opacity = "0";
                    setTimeout(() => {
                        successMessage.style.display = "none";
                    }, 500);
                }, 3000);
            });
        </script>
        <script src="./script/app.js"></script>

    </body>

    </html>
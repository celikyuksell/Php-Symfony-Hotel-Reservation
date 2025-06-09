
# Php‑Symfony‑Hotel‑Reservation

A simple hotel reservation system built with PHP and the Symfony framework. This project is accompanied by a step‑by‑step YouTube tutorial series.

## 🎥 Video Tutorial Series

Follow along with my YouTube playlist containing the full development walkthrough:  
https://www.youtube.com/playlist?list=PLIUezwWmVtFVv6uuJFEAuwN8bEtIO6s19

## 🌟 Features

- 📁 User authentication and role management
- 🏨 Room listing, search, and selection
- 🧾 Booking form with date selection and validation
- 🗂️ Booking history and admin management
- ✉️ Email confirmations (via SwiftMailer/Symfony Mailer)
- 🛠️ Built with Symfony components: Doctrine ORM, Twig, Security, Forms

## 🛠️ Tech Stack

- PHP (compatible with Symfony 4.3)
- Symfony framework with Doctrine, Twig, Security, Forms
- MySQL / MariaDB (configurable via `.env`)
- PHPUnit for basic testing
- Optional: CKEditor (for admin description fields)

## 🚀 Get Started

1. Clone the repo:
   ```bash
   git clone https://github.com/celikyuksell/Php-Symfony-Hotel-Reservation.git
   ```
2. Navigate into it:
   ```bash
   cd Php-Symfony-Hotel-Reservation
   ```
3. Install dependencies:
   ```bash
   composer install
   ```
4. Configure your database in `.env` (update `DATABASE_URL`)
5. Run migrations:
   ```bash
   php bin/console doctrine:migrations:migrate
   ```
6. (Optional) Load fixtures:
   ```bash
   php bin/console doctrine:fixtures:load
   ```
7. Launch the server:
   ```bash
   symfony server:start
   ```
   or
   ```bash
   php bin/console server:start
   ```

## 👤 About the Author

Created by [Yuksel Celik](https://github.com/celikyuksell).  
Watch more projects on my [YouTube channel](https://www.youtube.com/c/yukselcelik).

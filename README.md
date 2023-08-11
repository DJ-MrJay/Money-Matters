<div align="center">
  <img src="app/assets/images/logo.png" alt="logo" width="200"  height="auto" />
  <br>
</div>

<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🔭 Project Presentation](#project-presentation)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Money Matters <a name="about-project"></a>

> This is a Ruby on Rails budgeting app for managing transactions by categories. It enables users to add and track expenses, categorize transactions, and view spending insights.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Client: <a href="https://www.javascript.com/">JavaScript</a></li>
- Server: <a href="https://rubyonrails.org/">Ruby on Rails</a></li>
- Database: <a href="https://www.postgresql.org/">PostgreSQL</a></li>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Authentication system to facilitate login and registration
- Listing of categories of expenses
- Listing of transactions for a specific category

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Project Presentation <a name="project-presentation"></a>
- [Video](https://www.loom.com/share/44dc3811a4374f98bc00a357d59fb2a8?sid=f7cc6213-3353-4310-8d71-b4954dcbc17a)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Live Demo <a name="live-demo"></a>
- [Money Matters](https://render.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need the following installed on your computer:
- Ruby v3+,
- Rails v7+
- PostgreSQL
- An IDE e.g. [Visual Studio Code](https://code.visualstudio.com/)
- A terminal e.g. [Git BASH](https://gitforwindows.org/)

### Setup

Clone this repository or download the Zip folder:

```
git clone https://github.com/DJ-MrJay/Money-Matters
```

- Navigate to the location of the folder you just cloned:

```
cd Money-Matters
```

### Install

Install all dependencies. Run:

```
bundle install
```
### Database Setup

- Navigate to `config/database.yml` and edit the username and password with your PostgreSQL credentials (line 21 and 22)

- Run the following command:
```
rails db:create db:migrate
```

### Usage

To run the App type the following command in your terminal:

```
rails server
```

### Run tests

- To check for linter errors, type the following command:

```
rubocop
```

- To run RSpec tests, type the following command:

```
rspec spec/<directory>/<file>
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👤 Author <a name="authors"></a>

👤 **Jonah Wambua**

- GitHub [link](https://github.com/DJ-MrJay)
- Twitter [link](https://twitter.com/jonah_wambua)
- LinkedIn [link](https://www.linkedin.com/in/jonah-wambua/)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Addition of more functions and features
- Improvement of the visual front-end

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome.

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) for the [original design](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) idea
- [Microverse Coding School](https://www.microverse.org) for a A+ curriculum
- Code reviewers, coding partners, morning and standup teams for the great insights
- Hat tip to anyone else whose code was used

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

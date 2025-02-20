#import "requirements.typ": *

#let env = parse_dotenv(read(".env"))

#let author = "Bryan Hoang"
#let email = "bryan@bryanhoang.dev"
#let github = "github.com/bryan-hoang"
#let linkedin = "linkedin.com/in/bryan-c-hoang"
#let location = "Kingston, ON"
#let personal-site = "bryanhoang.dev"
#let phone = link(strfmt("tel:{}", env.at("PHONE_NUMBER", default: "123-456-7890")))

// ai, education, security
#let target-sectors = env.at("TARGET_SECTORS", default: "software").split(",")

#show: resume.with(
  author: author,
  email: email,
  github: github,
  linkedin: linkedin,
  location: location,
  // personal-site: personal-site,
  phone: phone,
  font: "New Computer Modern",
)

== Work Experience

#work(
  title: "Software Developer II",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "May 2023", end-date: "Sept. 2024"),
)
#if target-sectors.contains("security") [
  - Administered the company's JIRA instance, provisioning new projects and implementing custom workflows.
  - Administered the company's Slack workspace, provisioning new channels and organizing channel names for consistency.
]
- Lead the development of a dashboard SPA (React) as the code owner, overseeing code reviews and architecture changes.
- Implemented E2E browser tests for the dashboard SPA, preventing regressions from reaching the development trunk.
- Improved the integration of the SPA with a OAuth 2.0 Ruby on Rails server.
- Improved the build times for various React web apps to be 100%-200% faster by switching to better tools (e.g., Vite).
- Fixed issues with GitLab CI pipelines to prevent days of developer time from being wasted by flaky pipeline failures.

#work(
  title: "Technical Lead",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "May 2022", end-date: "May 2023"),
)
- Coordinate with the CTO and software architects to maintain the Core development team's coding standards.
- Lead a tiger team that was formed to quickly finish the delivery of a new React SPA dashboard web app.
- Lead a team of developers to add i18n and branding support to the dashboard SPA in collaboration with a research team from Queen's University; concluded with a survey with 600+ participants.
- Managed a project to add TypeScript type definitions to a JS SDK in collaboration with a contractor.
- Mentored and managed internship students.
- Participated in a #link("https://www.h1solutions.ca/solutions")[Leader Development Workshop].

#work(
  title: "Software Developer I",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "May 2020", end-date: "Aug. 2021"),
)
- Developed and maintained a React SPA used by the business team in demos to clients and investors (https://dcp.work).
- Developed and maintained a Sphinx documentation website for the company's software tools (https://docs.dcp.dev).
- Added support for stored procedures to in-house ORM library, letting the team avoid repeating currency transaction code.
- Supported QA team by following and managing TestRail test procedures.

#work(
  title: "Software Developer Intern",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "June 2019", end-date: "Aug. 2019"),
)
- Did front-end development tasks for a dashboard web app that used vanilla HTML/JS/CSS.

== Projects

#project(
  name: "Advent of Code CLI",
  role: "Creator",
  url: "github.com/bryan-hoang/aoc-cli-node",
)
- A command-line application that helps automate common tasks when completing Advent of Code challenges.

#if target-sectors.contains("ai") [
  #project(
    name: [Twitter tweets $=>$ Cryptocurrency trends?],
    role: "Developer",
    url: "github.com/bryan-hoang/cmpe-351-data-analytics-group-project",
  )
  - A Data Analytics course group project investigating the relationship between tweet sentiment and cryptocurrency prices.
  - The model used for the predictions has a Long Short-Term Memory layer, implemented using Keras.
]

== Skills

- *Programming Languages*: JavaScript, Typescript, Python, HTML/CSS, Bash, Ruby, SQL, C\#, C, Java, MATLAB
- *Technologies*: UNIX, Git, Docker, Node.js, React, Playwright, NGINX, MySQL, GitLab CI, REST

== Education

#edu(
  institution: "Queen's University",
  location: "Kingston, ON",
  dates: dates-helper(start-date: "Sept. 2017", end-date: "May 2022"),
  degree: "Bachelor of Applied Science in Math and Computing; GPA: 3.85 (4.13/4.3)",
)

== Extracurricular Activities

#extracurriculars(
  activity: "Undergraduate Teaching Assistant",
  dates: [#dates-helper(start-date: "Sept. 2019", end-date: "Apr. 2020"), #dates-helper(start-date: "Sept. 2021", end-date: "Apr. 2022")],
)
- Facilitated the learning of 90+ students in weekly 1-hour tutorial sessions for first year calculus and linear algebra.

#extracurriculars(
  activity: "Student Executive Webmaster",
  dates: dates-helper(start-date: "Jan. 2021", end-date: "May 2022"),
)
- Responsible for the Apple Math Exec and Sci' 21 Exec Wordpress websites.

#if target-sectors.contains("security") [
  #box([
    #extracurriculars(
      activity: "Discord Server Administrator",
      dates: dates-helper(start-date: "Jan. 2021", end-date: "May 2021"),
    )
    - Created and managed a Discord server for hosting an online graduation celebration of 100+ students.
    - Automated the screening and verification of members to comply with University requirements.
  ])
]

#if target-sectors.contains("education") [
  #extracurriculars(
    activity: "Peer Tutor",
    dates: dates-helper(start-date: "May 2018", end-date: "Apr. 2020"),
  )
  - Guided the learning of undergraduate engineering students in C and MATLAB Programming, Calculus, and Linear Algebra through weekly 1 to 3 hour long individual and group tutoring sessions
  - Led 3-hour review workshops for 30+ students, improving their understanding of the course material being presented.
]

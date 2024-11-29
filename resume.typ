#import "@preview/babel:0.1.1": redact
#import "@preview/basic-resume:0.2.1": *
#import "@preview/oxifmt:0.2.1": strfmt
#import "@preview/tenv:0.1.1": parse_dotenv

#let env = parse_dotenv(read(".env"))

#let author = "Bryan Hoang"
#let email = "bryan@bryanhoang.dev"
#let github = "github.com/bryan-hoang"
#let linkedin = "linkedin.com/in/bryan-c-hoang"
#let location = "Kingston, ON"
// TODO: Make personal website.
#let personal-site = ""
#let phone = link(
  strfmt("tel:{}", env.at("PHONE_NUMBER", default: "123-456-7890")),
)

// ai, security
#let target-industries = env.at("TARGET_INDUSTRIES", default: "software").split(",")

#show: resume.with(
  author: author,
  email: email,
  github: github,
  linkedin: linkedin,
  location: location,
  personal-site: personal-site,
  phone: phone,
  font: "New Computer Modern",
)

== Work Experience

#work(
  title: "Software Developer II",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "May 2023", end-date: "Present"),
)
#if target-industries.contains("security") [
  - Administered the company's JIRA instance, provisioning new projects and implementing custom workflows.
  - Administered the company's Slack workspace, provisioning new channels and organizing channel names for consistency.
]
- Lead the development of a React SPA dashboard as the code owner, overseeing code reviews and architecture changes.
- Improve the integration of the SPA with a OAuth 2.0 Ruby on Rails server.
- Help fix issues with GitLab CI pipelines to prevent days of developer time from being wasted by flaky pipelines.
- Implemented preview environments for 3 websites on GitLab by hijacking the job artifacts built from CI.
- Improve the build times for various React web apps to be 100%-200% faster by switching to better tools (e.g., Vite).

#work(
  title: "Technical Lead",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "May 2022", end-date: "May 2023"),
)
- Coordinate with the CTO and software architects to maintain the Core development team's coding standards.
- Lead a tiger team to finish the delivery of a React SPA dashboard web app within weeks of the team forming.
- Lead a team of developers to add i18n and branding support to the dashboard SPA, in collaboration with a research team from Queen's University, that concluded with a survey with 600+ participants.
- Mentored and managed internship students.
// - Participated in a #link("https://www.h1solutions.ca/solutions")[Leader Development Workshop].

#work(
  title: "Software Developer I",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "May 2020", end-date: "Aug. 2021"),
)
- Developed and maintained a React SPA used by the business team in demos to clients and investors (https://dcp.work).
- Developed and maintained a Sphinx documentation website for the company's software tools (https://docs.dcp.dev).

#work(
  title: "Software Developer Intern",
  location: "Kingston, ON",
  company: link("https://distributive.network")[Distributive],
  dates: dates-helper(start-date: "June 2019", end-date: "Aug. 2019"),
)
- Full-stack development tasks in the Node.js ecosystem.

== Projects

#project(
  name: link("https://github.com/bryan-hoang/aoc-cli-node")[Advent of Code CLI],
  role: "Creator",
  dates: "Dec. 2024",
)
- A command-line application that helps automate common tasks when completing Advent of Code challenges.

#if target-industries.contains("ai") [
  #project(
    name: link("https://github.com/bryan-hoang/cmpe-351-data-analytics-group-project")[Predicting Value and Ranking Social Volatility of Cryptocurrency via Twitter],
    role: "Developer",
    dates: dates-helper(start-date: "Jan 2022", end-date: "Mar. 2022"),
  )
  - A Data Analytics course group project investigating the relationship between tweet sentiment and cryptocurrency prices.
]

== Skills

- *Programming Languages*: JavaScript, Typescript, Python, HTML/CSS, Bash, Ruby, SQL, C\#, C, Java, MATLAB
- *Technologies*: UNIX, Git, Docker, Node.js, React, NGINX, MySQL, GitLab CI, REST

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

#if target-industries.contains("security") [
  #box([
    #extracurriculars(
      activity: "Discord Server Administrator",
      dates: dates-helper(start-date: "Jan. 2021", end-date: "May 2021"),
    )
    - Created and managed a Discord server for hosting an online graduation celebration of 100+ students.
    - Automated the screening and verification of members to comply with University requirements.
  ])
]

#extracurriculars(
  activity: "Peer Tutor",
  dates: dates-helper(start-date: "May 2018", end-date: "Apr. 2020"),
)
- Guided the learning of undergraduate engineering students in C and MATLAB Programming, Calculus, and Linear Algebra through weekly 1 to 3 hour long individual and group tutoring sessions
- Led 3-hour review workshops for 30+ students, improving their understanding of the course material being presented.

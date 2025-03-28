#import "../requirements.typ": cvSection, cvEntry

#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)

#v(-10pt)

#cvSection("Work Experience")

#cvEntry(
  title: [Software Developer II],
  society: link("https://distributive.network")[Distributive],
  date: [May 2023 - Sep. 2024],
  location: [Kingston, ON],
  description: list(
    [Lead the development of a React SPA dashboard, overseeing code quality and architectural design],
    [Implemented E2E browser tests for the SPA dashboard, preventing regressions],
    [Improved the integration of the dashboard SPA with a OAuth 2.0 Ruby on Rails server],
    [Improved the build times for multiple web apps to be 100%-200% faster by switching to better tools (e.g., Vite)],
    [Fixed issues with GitLab CI pipelines, preventing days of developer time from being wasted by flaky pipelines],
    [Created custom Docker images used in GitLab CI pipelines to speed them up, improving the team's velocity],
  ),
)

#cvEntry(
  title: [Technical Lead],
  society: link("https://distributive.network")[Distributive],
  date: [May 2022 - May 2023],
  location: [Kingston, ON],
  description: list(
    [Coordinate with the CTO and software architects to maintain the Core development team's coding standards],
    [Managed and triaged issues on team's Kanban board to support agile development],
    [Lead a tiger team that was formed to quickly finish the delivery of a new React SPA dashboard],
    [Coordinated with engineering, design, and business teams to add i18n and branding support to the dashboard SPA in collaboration with a research team from Queen's University; concluded with a survey with 600+ users],
    [Managed a project to add TypeScript type definitions to a JS SDK with a remote contractor in a Europe],
    [Mentored and managed internship students],
    [Participated in a #link("https://www.h1solutions.ca/solutions")[Leader Development Workshop]],
  ),
)

#cvEntry(
  title: [Software Developer I],
  society: link("https://distributive.network")[Distributive],
  date: [May 2020 - Aug. 2021],
  location: [Kingston, ON],
  description: list(
    [Helped migrate monolith to even-driven microservices architecture],
    [Developed and maintained #link("https://dcp.work")[a React SPA] used by the business team in demos to clients and investors],
    [Developed and maintained #link("https://docs.dcp.dev")[a Sphinx documentation website] for the company's software tools],
    [Added stored procedure support to in-house relational database ORM library, avoiding bugs from repeating currency transaction code],
    [Supported QA team by following and managing TestRail test procedures],
  ),
)

#cvEntry(
  title: [Software Developer Intern],
  society: link("https://distributive.network")[Distributive],
  date: [Jun. 2019 - Aug. 2019],
  location: [Kingston, ON],
  description: list([Did front-end development tasks for a dashboard web app that used vanilla HTML/JS/CSS]),
)

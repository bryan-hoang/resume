#import "../requirements.typ": cv-section, cv-skill, h-bar

#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)

#cv-section("Skills")

#cv-skill(
  type: [Languages],
  info: [JavaScript, Typescript, Python, HTML/CSS, Bash, Ruby, SQL, Java, C\#, C, MATLAB],
)

#cv-skill(
  type: [Technologies],
  info: [UNIX, Git, Docker, Node.js, React, Playwright, NGINX, MySQL, GitLab CI/CD, GitHub Actions, REST, JIRA],
)

#cv-skill(
  type: [Personal Interests],
  info: [Dungeons & Dragons, Board games, Video games, Euchre],
)

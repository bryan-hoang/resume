#import "../requirements.typ": cvSection, cvSkill, hBar

#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)

#cvSection("Skills")

#cvSkill(
  type: [Languages],
  info: [JavaScript, Typescript, Python, HTML/CSS, Bash, Ruby, SQL, Java, C\#, C, MATLAB],
)

#cvSkill(
  type: [Technologies],
  info: [UNIX, Git, Docker, Node.js, React, Playwright, NGINX, MySQL, GitLab CI/CD, GitHub Actions, REST, JIRA],
)

#cvSkill(
  type: [Personal Interests],
  info: [Dungeons & Dragons, Board games, Video games, Euchre],
)

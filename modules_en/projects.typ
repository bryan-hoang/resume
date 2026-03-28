#import "../requirements.typ": cv-section, cv-entry

#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)

#cv-section("Projects")

#cv-entry(
  title: [Advent of Code CLI],
  society: link("https://github.com/bryan-hoang/aoc-cli-node")[aoc-cli-node],
  date: [Dec. 2024],
  location: [],
  description: [
    #list(
      [A command-line application that helps automate common tasks when completing Advent of Code challenges],
      [Uses GitHub Actions to automate the building and publishing of the package],
    )
  ],
)

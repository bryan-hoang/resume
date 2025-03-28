#import "../requirements.typ": cvSection, cvEntry

#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)

#cvSection("Projects")

#cvEntry(
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

#import "../requirements.typ": cvSection, cvEntry, hBar

#let metadata = toml("../metadata.toml")
#let cvSection = cvSection.with(metadata: metadata)
#let cvEntry = cvEntry.with(metadata: metadata)

#cvSection("Education")

#cvEntry(
  title: [Bachelor of Applied Science in Math and Computing; GPA: 3.85 (4.13/4.3)],
  society: [Queen's University],
  date: [Sep. 2017 - May 2022],
  location: [Kingston, ON],
  description: list(),
)

#v(-4pt)

#import "../requirements.typ": cv-section, cv-entry, h-bar

#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)

#cv-section("Education")

#cv-entry(
  title: [Bachelor of Applied Science in Math and Computing; GPA: 3.85 (4.13/4.3)],
  society: [Queen's University],
  date: [Sep. 2017 - May 2022],
  location: [Kingston, ON],
  description: list(),
)

#v(-4pt)

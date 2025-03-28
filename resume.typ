#import "requirements.typ": cv

#let metadata = toml("./metadata.toml")
#let importModules(modules, lang: metadata.language) = {
  for module in modules {
    include {
      "modules_" + lang + "/" + module + ".typ"
    }
  }
}

#show: cv.with(metadata)
#show link: underline

#importModules((
  "work",
  "projects",
  "education",
  "skills",
))

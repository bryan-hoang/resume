#import "requirements.typ": cv

#let profile = sys.inputs.at("profile", default: "en")
#let metadata = toml("./profile_" + profile + "/metadata.toml")
#let importModules(modules, profile: profile) = {
  for module in modules {
    include {
      "profile_" + profile + "/" + module + ".typ"
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

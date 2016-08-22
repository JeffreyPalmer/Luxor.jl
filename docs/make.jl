using Documenter, Luxor

makedocs(
  modules = [Luxor],
  format = Documenter.Formats.HTML,
  sitename = "Luxor"
  )

#=
after this has built the source files, most of them
need to be moved up from build/ into docs/ so
that they're served at http://cormullion.github.io/Luxor.jl/:

docs
  build
    assets                ->
      documenter.css      -> not moved, we've customized it
      documenter.js       -> moved to docs/assets/documenter
      search.js           -> moved to docs/assets/search.js
      style.css           -> not moved, we've customized it
    index.html            -> moved to docs/index.html
    search_index.js       -> moved to docs/index.html
    search.html           -> moved to docs/index.html

=#

info("moving files")

mv("build/assets/documenter.js", "assets/documenter.js", remove_destination=true)
mv("build/assets/search.js", "assets/search.js", remove_destination=true)
mv("build/index.html", "index.html", remove_destination=true)
mv("build/search_index.js", "search_index.js", remove_destination=true)
mv("build/search.html", "search.html", remove_destination=true)

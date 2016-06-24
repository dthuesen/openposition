## README -- BASISVERSION

* Ruby version 2.3.0p0
* Rails version 5.0.0.beta3

* System dependencies:
* ./.

Configuration / Gems
- gem 'bootstrap-sass'
- gem 'autoprefixer-rails' # i'm not sure whether this is relevant
- gem 'bootstrap-table-rails'
- gem 'sprockets-rails'
- gem 'jquery-ui-rails'
- gem 'jquery-turbolinks'
- gem 'rails_db', '~> 0.7'
- sortable.js --> SortTable, version 2, by Stuart Langridge, http://www.kryogenix.org/code/browser/sorttable/
- gem 'best_in_place', github: 'bernat/best_in_place'

* Database PostgreSQL
* 

Die Beschreibung der Integration von "Sortable" wie 
hier "https://gist.github.com/onebree/efdf56929f63012ac85e" beschrieben 
verursachte, dass der JavaScript Code im View im Browser zu lesen war. Daher
nun keine Implementierung auf diesem Weg. Funktioniert aber dennoch.

Diese Version als Branch dient dem Erhalt der Roo Konfiguration
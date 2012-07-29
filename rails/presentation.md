title: Ruby on Rails
author: Daniel Schmidt

%%%%%
%% Add some inline style rules...

%css

@font-face {
  font-family: FontAwesome;
  src: url('FontAwesome.ttf');
}

@font-face {
  font-family: Chunkfive;
  src: url('Chunkfive.otf');
}

body {
  background-color: #9ACD34;
  color: white; 
}

html{
  font-family: Chunkfive, Georgia, Palatino, Times New Roman, serif;
}

#company_logo{
  background: url('images/signet.jpeg') no-repeat;
  width:190px;
  height:122px;
}

h2{
  color: white;
  margin-top:0px;
  padding:20px;
  text-align:left;
  background-color:black;
  font-size:42px;
}

h2 a{
  color:white;
}

.step {
  width: 800px;
  height: 600px;
  font-size: 48px;
  text-align: center;
  color: black;
  opacity: 0.3;
  /*
  border-radius: 10px;
  border: 2px solid blue;
  background-color: #99dd10;*/
}

.step.active {
  opacity: 1;
  /*border: 3px solid red;*/
  background-color: white;
}

code {
  background-color: red;
  font-size: 24px;
  color: white;
  padding: 20px;
}

.smaller_step{
  font-size:42px;
  text-align:left;
}

.very_small_step{
  font-size:20px;
}

ul{
  list-style:none;
}

li{
  text-align:left;
}

#octocat{
  width: 297px;
  float:left;
}

#github_links{
  margin-left: 180px;
  font-size:0.8em;
}

#github_links ul li{
  text-align: left;
}

.gist{
  font-size: 0.6em;
  text-align:left;
}

#priest{
  background: url('images/marry.png');
  width:800px;
  height:600px;
}

#only_priest{
  background: url('images/priest_only.png');
  width:800px;
  height:600px;
}

#sender{
  background: url('images/sender.png');
  width:800px;
  height:600px;
}

#method_call{
  position:absolute;
  top:330px;
  left:50px;
}

.overall_background{
  z-index: -999;
  min-height: 100%;
  min-width: 600px;
  width: 100%;
  height: auto;
  position: fixed;
  top: 0;
  left: 0;
}

#wrapper {
  position: relative;
  width: 800px;
  min-height: 400px;
  margin: 100px auto;
  color: #333;
}

.fixnum_rotated{
  -webkit-transform: rotate(-5deg);
  position:absolute;
  left:400px;
  top:240px;
}

.superclass_rotated{
  -webkit-transform: rotate(5deg);
  position:absolute;
  left:400px;
  top:351px;
}

.nil_rotated{
  -webkit-transform: rotate(-5deg);
  position:absolute;
  left:200px;
  top:440px;
}

#origin{
  font-size:0.3em;
  color: gray;
  position:absolute;
  top: 580px;
  left:500px;
}

.important{
  color:red;
  font-weight:bold;
}

#rob_link{
  position:absolute;
  top:400px;
  left:500px;  
}

#rob_link a{
  color:white;
}

#cls_equality{
  position: absolute;
  top:400px;
  left:30px;
}

#me_container{
  text-align:left;
  margin-left:25px;
}

#me_position{
  text-align:left;
  color:gray;
}

#me_container .twitter{
  font-family: FontAwesome;
  color: #52D5F4;
  font-size: 1.5em;
  position:relative;
  margin-top:10px;
}

#additional_me{
  color:gray;
}

.white_font{
  color:white;
  text-align:left;
  font-size:0.7em;
  margin-left:10px;
  margin-top:-50px;
}

%end

%

%

%%%%%%%%%%%%%%%%%%%
%% Here we go...


!SLIDE slide x=-1000 y=-1500

## Rails

<img src="images/rails.png" class="overall_background" />

!SLIDE slide x=0 y=-1500

## Rails

.. is a web framework

!SLIDE slide x=1000 y=-1500

## Rails

<ul>
  <li>Don't Repeat Yourself</li>
  <li>&nbsp;</li>
  <li>Convention over Configuration</li>
  <li>&nbsp;</li>
  <li>Keep it Simple Stupid</li>
</ul>

!SLIDE slide x=2000 y=-1500

## Rails

<ul>
  <li>Datenbankagnostisch</li>
  <li>&nbsp;</li>
  <li>ORM an Board</li>
  <li>&nbsp;</li>
  <li>Templates</li>
  <li>&nbsp;</li>
  <li>RESTful</li>
</ul>

!SLIDE slide x=3000 y=-1500

## Rails 

MVC

!SLIDE slide x=4000 y=-1500

## Model

<ul>
  <li>Verantwortlich für Daten und "Verhalten"</li>
  <li>&nbsp;</li>
  <li>(data and behaviour)</li>
  <li>&nbsp;</li>
  <li><i>tweets</i>,<i>authors</i>,<i>comments</i></li>
</ul>

!SLIDE slide x=5000 y=-1500

## View

<ul>
  <li>Anzeige der Informationen</li>
  <li>&nbsp;</li>
  <li>HTML, XML, JSON</li>
  <li>&nbsp;</li>
  <li>Beliebige MIME-Types (csv?)</li>
</ul>

!SLIDE slide x=6000 y=-1500

## Controller

<ul>
  <li>Schnittstelle zwischen Model & View</li>
  <li>&nbsp;</li>
  <li>Slim controller, fat model</li>
  <li>&nbsp;</li>
  <li>Mixins!</li>
</ul>

!SLIDE slide x=7000 y=-1500

## Asset Pipeline

<div class="smaller_step">

  <ul>
    <li>Coffeescript,less,sass,scss, erb</li>
    <li>&nbsp;</li>
    <li>Manifest files zum Laden von js/css</li>
    <li>&nbsp;</li>
    <li>JavaScript Kompression (uglifier.js)</li>
  </ul>

</div>

!SLIDE slide x=7000 y=-500

## Asset Pipeline

<a href="http://railscasts.com/episodes/279-understanding-the-asset-pipeline?autoplay=true">
  <img src="images/asset_path.png" />
</a>

!SLIDE slide x=8000 y=-1500

## ActiveRecord

<span class="important">An object that wraps a row in a database.</span>

!SLIDE slide x=8000 y=-500

## ActiveRecord - Konventionen

<ul>
  <li>in app/models/**/*</li>
  <li>&nbsp;</li>
  <li>Dateiname gleich Klassenname</li>
  <li>&nbsp;</li>
  <li>Klassenname Singular der Tabelle</li>
  <li>&nbsp;</li>
  <li>Verzeichnisse sind Module</li>
</ul>

!SLIDE slide x=8000 y=500

## ActiveRecord - Konventionen

<img src="images/active_record.png" style="margin-top:-15px;"/>

!SLIDE slide x=8000 y=1500

## ActiveRecord 

<ul>
<li>Primärschlüssel ist <span class="important">id</span></li>
<li>&nbsp;</li>
<li>set_primary_key</li>
<li>&nbsp;</li>
<li>Delegieren von Attributen in Beziehungen</li>
<li>&nbsp;</li>
<li>attr_accessible</li>
</ul>

!SLIDE slide x=8000 y=2500

## ActiveRecord - Datenbankkonzepte

<img src="images/active_record_assoc.png" />

!SLIDE slide x=8000 y=3500

## ActiveRecord - STI

<img src="images/sti_schema.png" />

!SLIDE slide x=9000 y=-1500

## ActiveModel

<ul>
  <li>extrahiert aus ActiveRecord</li>
  <li>&nbsp;</li>
  <li>für jede Klasse verwendbar</li>
</ul>

!SLIDE slide x=9000 y=-500

## ActiveModel - Validations

<ul>
  <li>presence</li>
  <li>uniqueness</li>
  <li>length</li>
  <li>inclusion</li>
  <li>exclusion</li>
  <li>...custom...</li>
</ul>

!SLIDE slide x=9000 y=500

## Migrations

<ul>
  <li><span class="important">Versionsverwaltung</span> für Datenbankschemas</li>
  <li>&nbsp;</li>
  <li>Austausch von Versionen (Sprünge)</li>
  <li>&nbsp;</li>
  <li>Ruby!</li>
</ul>

!SLIDE slide x=10000 y=-1500

## ActionController

<ul>
  <li>Implementiert die 'actions' auf denen die URL's 'zeigen'</li>
  <li>&nbsp;</li>
  <li>Mit namespaces nutzbar</li>
  <li>&nbsp;</li>
  <li>DRY - Filter (<a href="images/around_filter.png">around</a>, before, after)</li>
  <li>&nbsp;</li>
  <li>respond_to & respond_with</li>
</ul>

!SLIDE slide x=11000 y=-1500

## ActiveDispatch (oder auch 'Routes') 

<ul>
  <li><span class="important">Pretty URLs</span></li>
  <li>&nbsp;</li>
  <li>Bindung von Controller actions an URLs</li>
  <li>&nbsp;</li>
  <li>resources, namespaces, scopes</li>
</ul>

!SLIDE slide x=11000 y=-500

## Routes

<img src="images/routen_resources.png" />

!SLIDE slide x=11000 y=500

## Routes 

<img src="images/scope_module.png" />

<img src="images/routes_http_verbs.png" style="margin-top:-30px"/>

!SLIDE slide x=12000 y=-1500

## ActionView

<ul>
  <li>Zugang zu @variables</li>
  <li>&nbsp;</li>
  <li>ERB, HAML, SLIM</li>
</ul>

!SLIDE slide x=12000 y=-500

## ActionView ERB

<image src="images/erb.png" />

!SLIDE slide x=13000 y=-1500

## ORM ....

<ul>
  <li>Mongoid</li>
  <li>&nbsp;</li>
  <li>MongoMapper</li>
  <li>&nbsp;</li>
  <li>DataMapper</li>
</ul>  

!SLIDE slide x=5000 y=-3000

## The ritter app

<img src="images/kokosnuss.jpeg" class="overall_background" />

!SLIDE slide x=6000 y=-3000

## Mixins

<ul>
  <li>ActiveSupport::Concern</li>
  <li>&nbsp;</li>
  <li>in lib/</li>
  <li>&nbsp;</li>
  <li>skinny controller, fat model</li>
  <li>&nbsp;</li>
  <li>thematisch aufteilen!</li>
</ul>

!SLIDE slide x=7000 y=-3000

## Webservice und Middleware

<span class="important">Rails is Rack based.</span>

<image src="images/rack.png" />

<span class="important">Sinatra is Rack based.</span>

Rails + Sinatra = Awesome

!SLIDE slide x=7000 y=-1500

## Middleware

Sinatra als Middleware

<img src="images/routes_sinatra_middleware.png" />

!SLIDE slide x=7000 y=-500

## Rails + Sinatra Side-by-Side

<img src="images/rack_builder.png" style="margin-top:-40px;"/>

!SLIDE slide x=8000 y=-3000

## Deployment

<ul>
  <li>Capistrano</li>
  <li>&nbsp;</li>
  <li>Unicorn/Nginx</li>
  <li>&nbsp;</li>
  <li>Passenger</li>
  <li>&nbsp;</li>
  <li>Torquebox (für JRuby on Rails)</li>
</ul>


%% The End
%%%%%%%%%%%%%%%
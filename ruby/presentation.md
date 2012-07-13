title: Ruby
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

## Ruby

<img alt="full screen background image" src="images/ruby_start.png" class="overall_background" />

!SLIDE slide x=-1000 y=-500

<img alt="full screen background image" src="images/stressfree.jpeg" class="overall_background" />

!SLIDE slide x=-50 y=-1500 

## Me

<div id="me_container"> 
  <span id="me_position">Softwareentwickler@datenspiel</span>
  <span class="twitter">p</span><span id="additional_me"> @dsci_</span>
  
  <ul>
    <li>Ruby</li>
    <li>Rails</li>
    <li>Node.js</li>
    <li>CoffeeScript</li>
  </ul>
</div>
!SLIDE slide x=1000 y=-1500

<img alt="full screen background image" src="images/potsdam_hockey.png" class="overall_background" />


!SLIDE rotate=180 x=1950 y=-1500

## Github

<img alt="full screen background image" src="images/codercat.png" class="overall_background" />

<div id="wrapper">
  <div id="github_links">
    <ul>
      <li>http://github.com/dsci</li>
      <li>&nbsp;</li>
      <li>http://github.com/datenspiel</li>
    </ul>
  </div>
</div>

!SLIDE rotate=180 x=900 y=-13600

## Ruby is lovely

<img alt="full screen background image" src="images/matz2.jpeg" class="overall_background" />

<div class="white_font">
<i>Mitte der neunziger Jahre von dem Japaner Yukihiro Matsumoto entworfen.</i>
</div>

!SLIDE x=1800 y=-13600 rotate=180

## Ruby only supports instance methods!

<img alt="full screen background image" src="images/unsure_cutted.png" class="overall_background" />

!SLIDE x=2700 y=-13600 slide

## Konventionen! 

**Variablen**

<code class="abc">first_step_to_go</code>

<span class="important">Klein</span> geschrieben mit Unterstrich.

!SLIDE slide x=3850 y=-13600

## Konventionen!

**Konstanten**: 

<ul>
<li><code>Dance</code></li>
<li>&nbsp;</li>
<li><code>StepDance</code></li>
<li>&nbsp;</li>
<li><code>LineDance</code></li>
</ul>

<span class="important">Zusammen & groß</span> geschrieben.

!SLIDE slide x=5000 y=-12700

## Konventionen!
**Dateinamen**

* <code>first_step_to_go.rb</code>

<span class="important">Klein</span> geschrieben mit Unterstrich.

!SLIDE slide x=5000 y=-12000

## Konventionen!
**Konstanten**

<span class="important">analog</span> Klassennamen

!SLIDE rotate=20 scale=4 x=5000 y=-8000

## Datentypen, Grundlagen

**Alles ist ein Objekt**

* nil
* Class
* Fixnum
* true
* false

<img src="images/fixnum.png" class="fixnum_rotated" />
<img src="images/class_superclass.png" class="superclass_rotated" />
<img src="images/nil.png" class="nil_rotated" />

!SLIDE x=9000 y=-8000 slide

## Datentypen - Strings

* single quoted strings
* &nbsp;
* double quoted strings
  * 'escapen' von Sequencen (\t,\n...)

<img src="images/strings_1.png" />

!SLIDE x=10000 y=-8000 slide

## Datentypen - Numbers

<img src="images/numbers.png" />

!SLIDE x=11000 y=-8000 slide

## Datentypen - Collections (Array)

<img src="images/array.png" />

!SLIDE x=12000 y=-8000 slide

## Datentypen - Collections (Hash)

<img src ="images/hash.png" />

!SLIDE x=13000 y=-8000 slide

## Operatoren

<img alt="full screen background image" src="images/operator_combined.png" class="overall_background" />

!SLIDE x=14000 y=-8000 slide

## Operatoren

<img alt="full screen background image" src="images/operators_eql.png" class="overall_background" />

!SLIDE x=15000 y=-8000 slide

## Operatoren

<img alt="full screen background image" src="images/operator_equal.png" class="overall_background" />

!SLIDE x=16000 y=-8000 slide

## Anweisungen, Iteratoren und Loops

<img src="images/conditions.png" style="margin-top: -20px;"/>

!SLIDE x=17000 y=-8000 slide

## 'Post conditions'

* Sehr sprachnah. 
* Bei einfachen Anweisungen nutzen! 

<img src="images/post_conditions.png" /> 

!SLIDE x=200 y=-2400 slid200

## receiver and sender

Methodenaufrufe sind Anfragen an einen Empfänger. 

![alt text](images/person.png "Person class")

!SLIDE x=1100 y=-2400 slide

<div id="priest"></div>

!SLIDE x=2000 y=-2400 slide

<div id="only_priest">
  <div id="method_call">
    <img src="images/method_call.png" />
  </div>
</div>

!SLIDE x=2900 y=-2400 slide

<div id="sender"></div>

!SLIDE x=3900 y=-2400 slide

## Ducktyping

<img src="images/duck.png" style="margin-top:-15px;" />

> "It walks like a duck, it sounds like a duck - it must be a duck!"

<span id="origin">
  <i>frei nach James Whitcomb Riley</i>
</span>

!SLIDE slide x=4800 y=-2400

## Ducktyping <a href="https://gist.github.com/5d1c654d761a437733c3">(Beispiel)</a>

Typ eines Objekts wird danach definiert, was ein Objekt kann.

<img src="images/duck_typing_class.png" style="margin-top:-15px;"/>


!SLIDE slide x=5700 y=-2400

## self

* expliziter Methodenempfänger
* self ändert seinen Kontext
* wenn kein Empfänger(receiver) definiert, verwendet Ruby self

![alt text](images/self.png "self.")

!SLIDE slide x=-700 y=-3200

## Prototype based coding

<ul>
  <li>bekannt aus JavaScript</li>
  <li>&nbsp;</li>
  <li>keine Unterscheidung zw. Klassen & Objekten</li>
  <li>&nbsp;</li>
  <li>pure Form von OO?</li>
</ul>

!SLIDE slide x=-700  y=-3900

## Prototype based coding

**Methodendefinition**

<div class="smaller_step">
  <ul>
    <li>Schlüsselwort <span class="important">def</span> gefolgt vom Namen</li>
    <li>&nbsp;</li>
    <li>destruktive Methoden enden mit <span class="important">!</span></li>
    <li>&nbsp;</li>
    <li>Methoden mit boolscher Auswertung enden mit <span class="important">?</span></li>
  </ul>
</div>

!SLIDE slide x=-700 y=-4600

<img alt="full screen background image" src="images/mortuus.png" class="overall_background" />

!SLIDE slide x=-700 y=-5300

## Prototype based coding

<img src="images/prototype_1.png" style="margin-top:-30px;"/>

!SLIDE slide x=-700 y=-6000

<img alt="full screen background image" src="images/mortuus.png" class="overall_background" />

!SLIDE slide x=-700 y=-6700

## Prototype based coding

<img src="images/prototype_2.png"/>

!SLIDE slide x=-700 y=-7400

## Prototype based coding

<span class="important">Aufgabe</span>

<div class="very_small_step">
  Eine Autofabrik umfasst folgendes Sortiment:
<ul>
  <li>dreitürige Kleinwagen mit vier Sitzen</li>
  <li>LKWs mit verschiedenen Auflageflächen</li>
  <li>Familien Vans mit 8 Sitzen und einer Anhängekupplung</li>
</ul>
  Die Firma 'Microsoft' bestellt in dieser Fabrik für
  die Mitarbeiter

<ul>
  <li>9 rote Kleinwagen (45 PS) mit dem Navigationsgerät "City" zu je 9800 Euro</li>
  <li>4 blaue Familienvans (120 PS) mit dem Navigationsgerät "City+" und einer Anhängerkupplung zu je 23000 Euro</li>
  <li>für das Facility Management 1 gelber LKW (180 PS) mit der Auflagefläche "groß"
  zu je 73000 Euro</li>
</ul>

<p>Aus technischen Gründen können Navigationsgeräte nicht in Nutzfahrzeugen verbaut werden.

Die Firma 'Microsoft' erwartet von der Autofabrik einedetailierte, typabhängige Übersicht über die Bestellung.</p> 
</div>

!SLIDE slide x=-700 y=-8100

## Prototype based coding

<a href="https://gist.github.com/309922f748d66130c13d">Beispiellösung</a>

!SLIDE slide x=-1550 y=-2400

## Class based coding

Klassen sind "Factories" um Objekte zu erzeugen. 

Zusammenfassung von <span class="important">State</span> & <span class="important">Behaviour</span>.

!SLIDE slide x=-2050 y=-1700

## Class based coding

<img src="images/class_state.png" />

!SLIDE slide x=-2050 y=-1000

## Class based coding

<img src="images/class_behaviour.png" />

!SLIDE slide x=-2050 y=-300

## Class based coding

<div class="smaller_step">
  <ul>
    <li>Ist ein Objekt vom Typ <span class="important">Class</span></li>
    <li>Schlüsselwort <span class="important">class</span> gefolgt vom Namen</li>
    <li>&nbsp;</li>
    <li>"Konstruktor" ist <span class="important">#initialize()</span></li>
    <li>&nbsp;</li>
    <li>Objekte werden erzeugt mit <span class="important">#new()</span></li>
  </ul>
</div>

!SLIDE slide x=-2400 y=-2400

## Instanzvariablen

<ul>
  <li>immer <span class="important">privat</span>!</li>
  <li>&nbsp;</li>
  <li>mit <span class="important">@</span> gekennzeichnet</li>
  <li>&nbsp;</li>
  <li>auf <span class="important">self</span> definiert</li>
</ul>

!SLIDE slide x=-3250 y=-2400

## Klassenvariablen

<ul>
  <li>immer <span class="important">privat</span>!</li>
  <li>&nbsp;</li>
  <li>mit <span class="important">@@</span> gekennzeichnet</li>
  <li>&nbsp;</li>
  <li>müssen vor Gebrauch initialisiert werden</li>
  <li>&nbsp;</li>
  <li>werden vererbt, sind aber eindeutig</li>
</ul>

!SLIDE slide x=-4100 y=-2400

## Instanzmethoden

<ul>
  <li>wirkt im Kontext der Klasse</li>
  <li>&nbsp;</li>
  <li>Zugriff auf Instanzvariablen und State des Objekts</li>
  <li>&nbsp;</li>
  <li><span class="important">private</span>,<span class="important">protected</span>,<span class="important">public</span></li>
</ul>

!SLIDE slide x=-4950 y=-2400

## Klassenmethoden

<ul>
  <li>existiert nur im Objekt, das die Klasse definiert</li>
  <li>&nbsp;</li>
  <li>verschiedene Wege der Definition, meist über <span class="important">self</span></li>
  <li>&nbsp;</li>
  <li><span class="important">Aber:</span> gibt es defacto nicht!</li>
</ul>

!SLIDE slide x=-5800 y=-2400

## Vererbung

<ul>
  <li>Vererbung durch Klassenstruktur</li>
  <li>&nbsp;</li>
  <li>Module</li>
</ul>

!SLIDE rotate=180 x=-6650 y=-2400

<img alt="full screen background image" src="images/mortuus.png" class="overall_background" />

!SLIDE slide x=-7500 y=-2400

## Vererbung

<img src="images/class_inheritance.png" />

!SLIDE slide x=-8350 y=-2400

## Vererbung

<img src="images/class_inheritance2.png" />

<div class="smaller_step" style="margin-top:-30px;">
<ul>
  <li>von jedem Ausdruck vererbbar</li>
  <li>&nbsp;</li>
  <li>rechts vom <span class="important"><</span> kein Klassenname</li>
  <li>&nbsp;</li>
  <li>rechts vom <span class="important"><</span> Konstante, die Objekt repräsentiert</li>
</ul>
</div>

!SLIDE slide x=-9200 y=-2400

## Module

<div class="smaller_step">
<ul>
  <li>Namespace</li>
  <li>&nbsp;</li>
  <li>können nicht instanziert werden</li>
  <li>&nbsp;</li>
  <li>Schlüsselwort <span class="important">module</span> gefolgt vom Namen</li>
</ul>
</div>

!SLIDE slide x=-10050 y=-2400

## Mixins

<div class="smaller_step">
  <ul>
    <li>Prinzip der Erweiterung von Klassen</li>
    <li>&nbsp;</li>
    <li>Instanzmethoden</li>
    <li>&nbsp;</li>
    <li>Klassenmethoden</li>
    <li>&nbsp;</li>
    <li>Mehrfachvererbung?</li> 
  </ul>
</div>

!SLIDE rotate=180 x=-10900 y=-2400

## RSpec & Ruby Object Model

<img alt="full screen background image" src="images/bird.png" class="overall_background" />

<div id="rob_link">
  <a href="https://gist.github.com/cd1a96f8bd3dd0cce3f2">BDD Beispiel</a>
</div>

!SLIDE slide x=-11750 y=-2400

## Ruby Object Model

<img src="images/mr_anon.png" class="overall_background" />

<div class="smaller_step" style="margin-top:440px;margin-left:20px;font-size:0.5em;">
  Hi, I'm Mr. Anonymous and I'm a ghost. Call me anon. Every time you define singleton methods on
  an object or include a module, I'm around and take care of it. 
</div>

!SLIDE slide x=-12600 y=-2400

## Blocks, procs und lambdas

<img src="images/block.png" style="margin-top:-20px;"/>

<div class="smaller_step" style="margin-top:-50px;font-size:0.6em;">
  <ul>
    <li>"anonyme" Ansammlung von Code (closure)</li>
    <li>&nbsp;</li>
    <li>Variablen haben im Block lokale Gültigkeit</li>
    <li>&nbsp;</li>
    <li>wenn außerhalb definiert, dann im Block identisch</li> 
    <li>&nbsp;</li>
    <li>Aufruf u.a. über <span class="important">yield</span></li>
  </ul>
</div>

!SLIDE slide x=-13450 y=-2400

## Blocks und yield

<img src="images/yield.png" style="margin-top:-20px;" />

<div class="smaller_step" style="margin-top:-50px;font-size:0.6em;">
  <ul>
    <li>führt und wertet den Block aus (Rückgabe!)</li>
    <li>&nbsp;</li>
    <li>nimmt Argumente entgegen</li>
    <li>&nbsp;</li>
    <li><i>multiple values for a block parameter (0 for 1)</i></li> 
  </ul>
</div>


!SLIDE slide x=-14300 y=-2400

## Procs

<div class="smaller_step" style="">
  <ul>
    <li>"anonyme" Ansammlung von Code (closure)</li>
    <li>&nbsp;</li>
    <li><span class="important">Pararell assignment</span></li>
    <li>&nbsp;</li>
    <li>"return" vom umgebenden Kontext</li>
    <li>&nbsp;</li>
    <li>als <span class="important">inline code</span> betrachtbar</li>
  </ul>
</div>

!SLIDE slide x=-15150 y=-2400

## Procs

Beispiel

!SLIDE slide x=-16000 y=-2400

## Lambdas

<div class="smaller_step" style="">
  <ul>
    <li>"anonyme" Ansammlung von Code (closure)</li>
    <li>&nbsp;</li>
    <li><span class="important">explizite Parameterprüfung</span></li>
    <li>&nbsp;</li>
    <li>"return" vom Block</li>
    <li>&nbsp;</li>
    <li>als <span class="important">anonyme Methode</span> betrachtbar</li>
  </ul>
</div>

!SLIDE slide x=-16850 y=-2400

## Lambdas

Beispiel

!SLIDE slide x=-17700 y=-2400

## Metaprogrammierung

<img alt="full screen background image" src="images/coffee_shop.jpeg" class="overall_background" />

!SLIDE slide x=-18550 y=-2400

## Monkeypatching

<ul>
  <li>Verändern von Objekten zur Laufzeit</li>
</ul>

<img src="images/monkeypatching.png" style="margin-top:-20px;"/>

!SLIDE slide x=-19400 y=-2400

## define_method

<div class="smaller_step" style="">
  <ul>
    <li>erstellt Instanzmethode auf dem Empfänger</li>
    <li>&nbsp;</li>
    <li>Parameter kann Proc, Methode oder UnboundMethod Objekt sein</li>
    <li>&nbsp;</li>
    <li>Verwendet intern <span class="important">instance_eval</span></li>
  </ul>
</div>

!SLIDE slide x=-20250 y=-2400

## define_method

<img src="images/define_method.png" style="margin-top:0px;" />

!SLIDE slide x=-21100 y=-2400

## eval got some sisters

<img alt="full screen background image" src="images/class_eval_sisters.png" class="overall_background" />

!SLIDE slide x=-21950 y=-2400

## class_eval

<div class="smaller_step" style="">
  <ul>
    <li>evaluiert String oder Block im Kontext der Klasse</li>
    <li>&nbsp;</li>
    <li><span class="important"><i>Öffne die Klasse und füge ihr eine neue Methode hinzu.</i></span></li>
  </ul>
</div>

!SLIDE slide x=-22800 y=-2400

## instance_eval

<div class="smaller_step" style="">
  <ul>
    <li>evaluiert String oder Block im Kontext des Empfängers</li>
    <li>&nbsp;</li>
    <li><span class="important"><i>Definiere die Methoden nur für diese Instanz der Klasse</i></span></li>
  </ul>

</div>

!SLIDE slide x=-22800 y=-1700

## method_missing

<div class="smaller_step" style="">
  <ul>
    <li>Wird aufgerufen, wenn Empfänger Nachricht erhält, die nicht verarbeitbar ist.</li>
    <li>&nbsp;</li>
    <li>Verwendbar um Vorhandensein von Methoden zu simulieren.</span></li>
  </ul>

</div>

!SLIDE slide x=-22800 y=-1000

## method_missing

<img src="images/method_missing.png" />

!SLIDE slide x=-22800 y=-300

## method_missing

<img src="images/method_missing2.png" />

!SLIDE slide x=-22800 y=400

## method_missing

<img src="images/method_missing3.png" style="margin-top:-10px;"/>

!SLIDE slide x=-22800 y=1100

## const_missing

<div class="smaller_step">
  <ul>
    <li>Wird aufgerufen, wenn eine Konstante "angesprochen" wird, die nicht definiert wurde.
    </li>
  </ul>
</div>

<img src="images/const_missing.png" style="margin-top:-20px;"/>

!SLIDE slide x=-13000 y=0

## Internals

<img src="images/method_dispatching.png" style="margin-top:-30px;"/>

!SLIDE slide x=-13000 y=700

## INTERNALS

<img src="images/object_chain.png" />

!SLIDE slide x=-13000 y=1400

## INTERNALS

<img alt="full screen background image" src="images/unsure_cutted.png" class="overall_background" />

<img src="images/cls_equality.png" id="cls_equality"/>

!SLIDE rotate=180 x=-13850 y=0

## C-Extensions 

<img src="images/c.png" style="margin-top:-50px;"/>

!SLIDE slide x=-13850 y=700

## C-Extensions 

<img src="images/c_ext_result.png" />

!SLIDE rotate=720 x=-13850 y=1400

## JASON

<img src="images/jason.png" class="overall_background" />

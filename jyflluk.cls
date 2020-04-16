%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Jyvaskylan yliopiston Fysiikan laitoksen LuK-tutkielma (jyflluk.cls)
% Dokumenttiluokka
% Versio 1.3 (11/10/2015)
% 
% Alkuperäinen tekijä:
% Jussi Maunuksela (jussi.o.maunuksela at jyu.fi)
%
% Lisenssi:
% CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)
%
% Muutokset:
%
% 2015-11-10 (1.3) - Lisätty: icomma.cls
%                  - Muutettu riviväli: 1.0 -> 1.5
% 2016-01-08 (1.4) - Poistettu kaksoiskirjaimet / disabled ligatures
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{jyflluk}[2015/11/10 versio 1.3 JYFL kandidaatintutkielman dokumenttiluokka]
\NeedsTeXFormat{LaTeX2e}

% ================================================================
% DOKUMENTTILUOKAN MÄÄRITELMÄT:
%
% Ladataan article -dokumenttiluokka seuraavilla lisämääreillä:
%
%   12pt      - Perusfontin pistekoko
%   a4paper - Paperikoko
%   
\LoadClass[12pt,a4paper,twoside]{article}

% ================================================================
%
% MAKROPAKETIT:
%

% ================================================================
% INPUTENC --- Määritellään käytettävä merkistö
%
\RequirePackage[utf8]{inputenc}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% FONTENC --- Määritellään LaTeXin käyttämän kirjasimen merkkivalikoima 
%
\RequirePackage[T1]{fontenc}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% LMODERN --- Ladataan Latin Modern kirjasimet
%
\RequirePackage{lmodern}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% CAPTION --- Määritellään taulukoiden ja kuvioiden selitteiden muotoilu.
%
\RequirePackage[margin=10pt,labelfont=bf,labelsep=period]{caption}[2013/02/03]

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% BABEL --- Otetaan käyttöön suomenkieliset tavutussäännöt
%
\RequirePackage[english]{babel}


% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% GEOMETRY --- Asetetaan marginaalien leveydet
%
\RequirePackage[a4paper,left=25mm,right=25mm,top=35mm,bottom=35mm,bindingoffset=10mm]{geometry}
\setlength{\headheight}{15pt}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
%  FANCYHDR --- Sivun ylä- ja alatunnisteiden määrittely
%
\RequirePackage{fancyhdr}
\fancypagestyle{firstpage}{%
  \fancyhf{}% clear all six fields
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{followingpage}{%
  \fancyhf{}% clear all six fields
  \fancyhead[LE,RO]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{followingpage}
\AtBeginDocument{\thispagestyle{firstpage}}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% PARSKIP --- Kappaleiden erottajan määrittely
%
%\RequirePackage{parskip}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% ICOMMA --- Desimaaliluvussa ei väliä pilkun jälkeen.
%
\RequirePackage{icomma}


% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
%TITLESEC --- Otsikoiden asemoinnin ja muotoilun määrittely
%
\RequirePackage[noindentafter,nobottomtitles,toctitles]{titlesec}
\newcommand{\sectionbreak}{%
	\cleardoublepage%
	\vspace*{24pt}}
% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% TOCBIBIND --- Lähteet -otsikon lisääminen sisällysluettelon perään.
%
\RequirePackage[nottoc]{tocbibind}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% GRAPHICX --- Grafiikan lisääminen dokumenttiin. Oletuksen dokumentin tulostaminen pdf-muotoon
%
\RequirePackage{graphicx}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% HYPERREF --- Hyperlinkkien ladonta tekstin sekaan. 
%
\RequirePackage[hidelinks]{hyperref}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% LASTPAGE --- Dokumentin viimeiseen sivuun viittaaminen. 
%
\RequirePackage{lastpage}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% BOOKTABS --- Taulukoiden piirtäminen käyttäen viivoja, joiden ympärille jää sopivasti tilaa.
%
\RequirePackage{booktabs}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% DATETIME --- Päiväyksen muotoilu
%
\RequirePackage{datetime}
\renewcommand{\dateseparator}{.}
\setdefaultdate{\dmyyyydate}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% LINESPACING - RIVIVÄLI
%
% To change the line spacing for the entire document, you can use the linespread command 
% in your preamble. For one-and-a-half spacing you have to use 1.3. 
\linespread{1.3}

% xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
% MICROTYPE - FONTTIEN LADONTA
%
% The package provides a LaTeX interface to the microtypographic extensions: character
% protrusion and font expansion, furthermore the adjustment of interword spacing and
% additional kerning, as well as hyphenatable letterspacing (tracking) and the 
% possibility to disable all or selected ligatures. 
\RequirePackage{microtype}
\DisableLigatures{}


\usepackage[version-1-compatibility,decimalsymbol=comma,load=prefixed,separate-uncertainty=true,per-mode=fraction]{siunitx} 
% Uusin SI-yksiköiden kirjoittamista helpottava ja kaunistava paketti. Tämä paketti ei sisälly oletuksena kaikkiin LaTeX-jakeluihin, joten se on jätetty tässä oletuksena pois. Koska omien pakettien lisääminen LaTeXiin on helppoa, ja tämä paketti on toisinaan hyvin hyödyllinen, sen tarjoamiin mahdollisuuksiin kannattaa tutustua. SI-järjestelmän suureet kirjoitetaan komennolla \SI{lukuarvo}{yksikkö}. Esim. \SI{15}{\metre\per\second}. Omien komentojensa lisäksi tämä paketti sisältää emuloinnin kaikille yleisille varhaisemmille SI-paketeille.


//https://github.com/designer2k2/2d-xmas-tree
//JS SVG click thing to get the code for the 2D xmas Tree
//The SVG is exported from KiCad and then refined in Inkscape
//https://www.designer2k2.at 11.2018

//create the raphael paper:
var mapContainer = document.getElementById("tree");
var map = new Raphael(mapContainer, '100%', '100%');
map.setViewBox(0, 0, 100, 110);

//set the styles:
var style = {
  fill: "#261F00",
  stroke: "#aaa",
  "stroke-width": 0.5,
  "stroke-linejoin": "miter",
  cursor: "pointer"
};

var treestyle = {
  fill: "#941305",
  stroke: "#A13F02",
  "stroke-width": 1,
  "stroke-linejoin": "bevel",
};

var arrowstyle = {
  fill: "#3FFF00",
  stroke: "#4CDBFF",
  "stroke-width": 3,
  "stroke-linejoin": "miter",
};

var clickstyle = {
  fill: "#0D252B",
  stroke: "#273F45",
  "stroke-width": 0.1,
  "stroke-linejoin": "bevel",
};

//Paint the tree:
var tree;
tree = map.path("M 61.903437,4.6301013 52.299734,1.0283959 43.483429,4.3989623 27.534832,11.823353 35.154802,11.188356 11.659894,35.318261 22.454852,31.508276 3.4049264,53.098191 14.834882,49.288206 1.4999337,67.703133 l 6.3499747,-1.269995 -5.07998,13.334948 11.4299556,-5.07998 5.07998,21.589911 -3.809985,4.444983 h 74.929705 l -4.444982,-3.174983 1.269995,-7.619971 3.174987,-19.684923 8.254963,4.444983 -6.984968,-14.604943 6.984968,2.53999 -10.159955,-17.77993 8.889965,3.809985 -15.23994,-20.954917 9.524962,3.809985 -24.129905,-20.954918 7.61997,1.269995 z");
tree.attr(treestyle);

//fancy drop shadow effect on the tree:
var treeglow = tree.glow({    
    width:1,
    fill:true,
	opacity: 0.2,
    offsetx :2,
    offsety:3,
    color:'grey'
});

//overlay the snow: 
var img = map.image("snow.png", 6, 13.5, 85, 87);
img.attr({'opacity': '0.3'}); 

//paint the 20 leds:
var leds = {};
leds["led01"] = map.path("m 39.282286,12.468511 4.775181,-1.737354 0.868676,2.387591 -4.775181,1.737353 z");
leds["led02"] = map.path("M 59.272007,8.5670863 58.40333,10.954677 v 0 l 4.775181,1.737353 v 0 l 0.868677,-2.387591 v 0 z");
leds["led03"] = map.path("M 31.895995,25.181161 31.238137,22.72753 v 0 l 4.907261,-1.315715 v 0 l 0.657857,2.453631 v 0 l -4.90726,1.315715 z");
leds["led04"] = map.path("m 44.872804,29.395004 2.50189,0.441958 v 0 l 0.881376,-5.00378 v 0 l -2.49935,-0.441958 v 0 l -0.883916,5.00378 z");
leds["led05"] = map.path("m 56.196079,21.960453 0.657857,-2.45363 v 0 l 4.907261,1.315715 v 0 l -0.657857,2.45363 v 0 z");
leds["led06"] = map.path("m 71.05502,21.053677 -1.269995,2.199631 v 0 l 4.399263,2.53999 v 0 l 1.269995,-2.199631 v 0 z");
leds["led07"] = map.path("m 74.984385,34.495304 1.455414,-2.080252 v 0 l 4.163044,2.913369 v 0 l -1.457954,2.082791 v 0 z");
leds["led08"] = map.path("m 76.002921,47.190174 0.441958,2.49935 v 0 l 5.001241,-0.881377 v 0 l -0.439419,-2.50189 v 0 l -5.00378,0.883917 z");
leds["led09"] = map.path("m 31.583576,37.027674 4.602462,-2.148832 v 0 l -1.071876,-2.301231 v 0 l -4.605002,2.146292 v 0 l 1.074416,2.303771 z");
leds["led10"] = map.path("m 21.377896,41.706335 0.883917,5.003781 2.49935,-0.441958 -0.881377,-5.001241 -2.50189,0.439418");
leds["led11"] = map.path("m 55.657601,33.730767 -0.220979,-2.52983 v 0 l 5.0622,-0.444498 v 0 l 0.220979,2.53237 v 0 z");
leds["led12"] = map.path("m 50.85956,41.668236 -4.399263,-2.53999 v 0 l -1.269995,2.199631 v 0 l 4.399263,2.53999 v 0 z");
leds["led13"] = map.path("m 59.322807,47.576252 0.441958,-2.49935 v 0 l 5.00124,0.881377 v 0 l -0.439418,2.50189 v 0 z");
leds["led14"] = map.path("m 65.672782,58.620129 0.441958,2.49935 v 0 l 5.00124,-0.881376 v 0 l -0.439418,-2.501891 v 0 l -5.00378,0.883917 z");
leds["led15"] = map.path("M 81.108301,54.690764 78.72071,53.822088 v 0 l -1.737353,4.775181 v 0 l 2.387591,0.868677 v 0 l 1.737353,-4.775182 z");
leds["led16"] = map.path("m 86.147641,62.831432 2.50189,-0.439418 v 0 l 0.881377,5.00124 v 0 l -2.49935,0.441959 v 0 l -0.883917,-5.003781 z");
leds["led17"] = map.path("m 41.001859,46.941255 -0.441958,-2.49935 v 0 l -5.001241,0.881376 v 0 l 0.439418,2.50189 v 0 l 5.003781,-0.883916 z");
leds["led18"] = map.path("m 46.602537,57.141855 -0.868677,2.38759 v 0 l -4.775181,-1.737353 v 0 l 0.868677,-2.38759 h 0 l 4.775181,1.737353 z");
leds["led19"] = map.path("m 16.762734,62.244695 -2.45363,-0.657858 v 0 l -1.315715,4.907261 v 0 l 2.45363,0.657857 v 0 l 1.315715,-4.90726 z");
leds["led20"] = map.path("m 29.246785,57.116455 2.49935,0.441958 v 0 l -0.881376,5.00124 v 0 l -2.50189,-0.439418 v 0 z");

//attach a click listener to all of them, and style them:
for(var ledName in leds) {
    (function (region) {
        region.attr(style);
				
		region[0].addEventListener("click", function() {
        	updatethetext(region,leds);
        }, true);

    })(leds[ledName]);
}

//paint the arrow:
var arrow = map.path("M 38.496875,14.028124 27.119791,3.8416666 27.534832,10.235853 5.2916667,2.6510416 5.5562499,26.860418 27.384374,18.790625 l 0.09585,6.75715 z")
arrow.attr(arrowstyle);

//paint the word "CLICK"
var click = {};
click["0"] = map.path("m 10.925087,16.183376 q -0.292144,0.151584 -0.609093,0.228754 -0.3169487,0.07717 -0.6614582,0.07717 -1.0280165,0 -1.6288412,-0.573263 -0.6008246,-0.57602 -0.6008246,-1.55994 0,-0.986675 0.6008246,-1.559939 0.6008247,-0.57602 1.6288412,-0.57602 0.3445095,0 0.6614582,0.07717 0.316949,0.07717 0.609093,0.228755 v 0.851627 q -0.2949,-0.201193 -0.581532,-0.2949 -0.286632,-0.09371 -0.6035808,-0.09371 -0.5677518,0 -0.8929688,0.363803 -0.325217,0.363802 -0.325217,1.003211 0,0.636654 0.325217,1.000456 0.325217,0.363802 0.8929688,0.363802 0.3169488,0 0.6035808,-0.09371 0.286632,-0.09371 0.581532,-0.294901 z");
click["1"] = map.path("m 11.807031,12.294552 h 1.06109 v 3.312804 h 1.863107 v 0.802018 h -2.924197 z");
click["2"] = map.path("m 15.400955,12.294552 h 1.061089 v 4.114822 h -1.061089 z");
click["3"] = map.path("m 20.769792,16.183376 q -0.292144,0.151584 -0.609093,0.228754 -0.316949,0.07717 -0.661459,0.07717 -1.028016,0 -1.628841,-0.573263 -0.600824,-0.57602 -0.600824,-1.55994 0,-0.986675 0.600824,-1.559939 0.600825,-0.57602 1.628841,-0.57602 0.34451,0 0.661459,0.07717 0.316949,0.07717 0.609093,0.228755 v 0.851627 q -0.294901,-0.201193 -0.581532,-0.2949 -0.286632,-0.09371 -0.603581,-0.09371 -0.567752,0 -0.892969,0.363803 -0.325217,0.363802 -0.325217,1.003211 0,0.636654 0.325217,1.000456 0.325217,0.363802 0.892969,0.363802 0.316949,0 0.603581,-0.09371 0.286631,-0.09371 0.581532,-0.294901 z");
click["4"] = map.path("m 21.651736,12.294552 h 1.061089 v 1.502062 l 1.529623,-1.502062 h 1.231966 l -1.981619,1.948546 2.185569,2.166276 h -1.328429 l -1.63711,-1.620573 v 1.620573 h -1.061089 z");

//attach a style to it:
for(var regionName in click) {
    (function (region) {
        region.attr(clickstyle);
    })(click[regionName]);
}

//Kind of bad example on how to animate in a loop:
var reAnimate = function(){
     arrow.animate(style, 1000, reAnimate2);
}
var reAnimate2 = function(){
     arrow.animate(arrowstyle, 200, reAnimate);
}
$(document).ready( reAnimate );

//Function called on click on a led:
function updatethetext(texttoupdate,allthetexts){
	
	//remove the arrow and click:
	removearrow();

	//toggle the current clicked led:
	var test;
	test = map.getById(texttoupdate.id);
	if(test.attr('fill') == '#FFF200'){
		test.attr({fill: '#261F00' });
	}else{
		test.attr({fill: '#FFF200' });
	}
	
	//Array from all highlighted led in raphael id´s
	var Highlighted = [];
	for (var key in allthetexts) {
		if(allthetexts[key].attr('fill') == '#FFF200'){
			Highlighted.push(allthetexts[key].id);
		}
	}
	
	//Array match raphael id´s vs real names and to position in output array
	var bHighlighted = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
	for (var key in allthetexts) {
		for (var key2 in Highlighted) {
			if(allthetexts[key].id == Highlighted[key2]){
				//reduce the key to the number and -1 for 0 index
				var ikey = key.replace(/\D/g,'')*1-1;
				bHighlighted[ikey] = 1;
			}
		}
	}
	
	//return array into html
	updatetext(bHighlighted);
}

//Clears the Arrow with the Click text:
function removearrow(){
	arrow.remove();
	for(var regionName in click) {
    (function (region) {
        region.remove();
    })(click[regionName]);
	}
}

//Function called on hitting the enter key -> button press.
function update(optInvert){
	if (typeof optInvert === 'undefined') { optInvert = false; }
	//get the text
	var x = document.getElementById("output").value;
	//validate the text
	if(x.length == 41){
		//this should be all with try, as it could fail hard on wrong input.
		//strip the {} and split it into a array
		x = x.substr(1,x.length-2);
		x = x.split(','); 
		if(x.length == 20){
			if(optInvert==true){
				x = x.map(r => r*1 + 1);
			}
			for(i=0;i<=19;i++){
				if(x[i]==0 ||x[i] == 1){
					
				} else {
					x[i] = 0;	//clear the led
				}
			}
			//its clean now, so update:
			
			removearrow();
			updatetext(x);
			
			//loop all and update the led to fit			
			for (var key in leds) {

				var ikey = key.replace(/\D/g,'')*1-1;
				
				var ledtemp;
				ledtemp = map.getById(leds[key].id);
				if(x[ikey]==0){
					ledtemp.animate({fill: '#261F00'},100);
				}else{
					ledtemp.animate({fill: '#FFF200'},100);
				}

			}
		}
	}
}

//return array into html
function updatetext(array){
	document.getElementById("output").value = "{" + array + "}";
}

//Listener on the input field for the enter press
var input = document.getElementById("output");
input.addEventListener("keyup", function(event) {
    event.preventDefault();
    if (event.keyCode === 13) {
        document.getElementById("update").click();
    }
});

//can handle multiple actions from the dropdown
function dropfunc(action){
	switch(action) {
    case 'clear':
		document.getElementById("output").value = "{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}";
		update();
        break;
    case 'invert':
		update(true);
        break;
	case 'random':
		var arand = [];
		for(i=0;i<=19;i++){
			arand[i] = Math.round(Math.random());
		}
		updatetext(arand);
		update();
        break;
    default:
 
} 
}
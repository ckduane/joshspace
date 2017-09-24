# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all
Friend.destroy_all
Comment.destroy_all
Post.destroy_all


band = Band.create!({
  name: "Dawsons Screamo",
  photo: "https://upload.wikimedia.org/wikipedia/en/1/1d/JoeyPotter.jpg",
  genre: "Sounds of Music",
  location: "San Diego, CA",
  email: "hello@email.com",
  member_since: "09/37/2930",
  influences: "bacteria and phytoplankton",
  sounds_like: "peeing for a really long time after d=having too hamye drinks",
  record_label: "Circle K",
  type_of_label: "indie",
  profile_views: 101010,
  last_login: "13/13/0000",
  cover_art: "https://oldies.scdn5.secure.raxcdn.com/i/boxart/w128/85/83/886974858324.jpg?v=2",
  css: "/*
body {background:url(https://media.giphy.com/media/TxVVB6PfWMjE4/giphy.gif) no-repeat center center fixed;background-size: cover; color:white;}
.page-container { background-color: transparent; }
section { background-color: black; color: white; }
.primary { border:1px dotted white; background-color: black; }
.primary-med { background-color: #262626; }
.primary-light {background-color: black; }
.primary-dark {background-color: black; }
.secondary { border:1px dotted white; background-color: black; }
.secondary-med {background-color: #262626; }
.secondary-light {background-color: black; }
*/",
  javascript: "
// <![CDATA[
var colour='rpink'r;
var sparkles=120;

/****************************
*  Tinkerbell Magic Sparkle *
* (c) 2005 mf2fm web-design *
*  http://www.mf2fm.com/rv  *
* DON'T EDIT BELOW THIS BOX *
****************************/
var x=ox=400;
var y=oy=300;
var swide=800;
var shigh=600;
var sleft=sdown=0;
var tiny=new Array();
var star=new Array();
var starv=new Array();
var starx=new Array();
var stary=new Array();
var tinyx=new Array();
var tinyy=new Array();
var tinyv=new Array();

window.onload=function() { if (document.getElementById) {
  var i, rats, rlef, rdow;
  for (var i=0; i<sparkles; i++) {
    var rats=createDiv(3, 3);
    rats.style.visibility='rhidden'r;
    document.body.appendChild(tiny[i]=rats);
    starv[i]=0;
    tinyv[i]=0;
    var rats=createDiv(5, 5);
    rats.style.backgroundColor='rtransparent'r;
    rats.style.visibility='rhidden'r;
    var rlef=createDiv(1, 5);
    var rdow=createDiv(5, 1);
    rats.appendChild(rlef);
    rats.appendChild(rdow);
    rlef.style.top='r2px'r;
    rlef.style.left='r0px'r;
    rdow.style.top='r0px'r;
    rdow.style.left='r2px'r;
    document.body.appendChild(star[i]=rats);
  }
  set_width();
  sparkle();
}}

function sparkle() {
  var c;
  if (x!=ox || y!=oy) {
    ox=x;
    oy=y;
    for (c=0; c<sparkles; c++) if (!starv[c]) {
      star[c].style.left=(starx[c]=x)+'rpx'r;
      star[c].style.top=(stary[c]=y)+'rpx'r;
      star[c].style.clip='rrect(0px, 5px, 5px, 0px)'r;
      star[c].style.visibility='rvisible'r;
      starv[c]=50;
      break;
    }
  }
  for (c=0; c<sparkles; c++) {
    if (starv[c]) update_star(c);
    if (tinyv[c]) update_tiny(c);
  }
  setTimeout('rsparkle()'r, 40);
}

function update_star(i) {
  if (--starv[i]==25) star[i].style.clip='rrect(1px, 4px, 4px, 1px)'r;
  if (starv[i]) {
    stary[i]+=1+Math.random()*3;
    if (stary[i]<shigh+sdown) {
      star[i].style.top=stary[i]+'rpx'r;
      starx[i]+=(i%5-2)/5;
      star[i].style.left=starx[i]+'rpx'r;
    }
    else {
      star[i].style.visibility='rhidden'r;
      starv[i]=0;
      return;
    }
  }
  else {
    tinyv[i]=50;
    tiny[i].style.top=(tinyy[i]=stary[i])+'rpx'r;
    tiny[i].style.left=(tinyx[i]=starx[i])+'rpx'r;
    tiny[i].style.width='r2px'r;
    tiny[i].style.height='r2px'r;
    star[i].style.visibility='rhidden'r;
    tiny[i].style.visibility='rvisible'r
  }
}

function update_tiny(i) {
  if (--tinyv[i]==25) {
    tiny[i].style.width='r1px'r;
    tiny[i].style.height='r1px'r;
  }
  if (tinyv[i]) {
    tinyy[i]+=1+Math.random()*3;
    if (tinyy[i]<shigh+sdown) {
      tiny[i].style.top=tinyy[i]+'rpx'r;
      tinyx[i]+=(i%5-2)/5;
      tiny[i].style.left=tinyx[i]+'rpx'r;
    }
    else {
      tiny[i].style.visibility='rhidden'r;
      tinyv[i]=0;
      return;
    }
  }
  else tiny[i].style.visibility='rhidden'r;
}

document.onmousemove=mouse;
function mouse(e) {
  set_scroll();
  y=(e)?e.pageY:event.y+sdown;
  x=(e)?e.pageX:event.x+sleft;
}

function set_scroll() {
  if (typeof(self.pageYOffset)=='rnumber'r) {
    sdown=self.pageYOffset;
    sleft=self.pageXOffset;
  }
  else if (document.body.scrollTop || document.body.scrollLeft) {
    sdown=document.body.scrollTop;
    sleft=document.body.scrollLeft;
  }
  else if (document.documentElement && (document.documentElement.scrollTop || document.documentElement.scrollLeft)) {
    sleft=document.documentElement.scrollLeft;
  sdown=document.documentElement.scrollTop;
  }
  else {
    sdown=0;
    sleft=0;
  }
}

window.onresize=set_width;
function set_width() {
  if (typeof(self.innerWidth)=='rnumber'r) {
    swide=self.innerWidth;
    shigh=self.innerHeight;
  }
  else if (document.documentElement && document.documentElement.clientWidth) {
    swide=document.documentElement.clientWidth;
    shigh=document.documentElement.clientHeight;
  }
  else if (document.body.clientWidth) {
    swide=document.body.clientWidth;
    shigh=document.body.clientHeight;
  }
}

function createDiv(height, width) {
  var div=document.createElement('rdiv'r);
  div.style.position='rabsolute'r;
  div.style.height=height+'rpx'r;
  div.style.width=width+'rpx'r;
  div.style.overflow='rhidden'r;
  div.style.backgroundColor=colour;
  return (div);
}
// ]]>
"
  })

friend0 = Friend.create!({
  name: "Tom",
  image: "https://img.buzzfeed.com/buzzfeed-static/static/2015-07/24/12/enhanced/webdr06/original-3189-1437757123-3.jpg?downsize=715:*&output-format=auto&output-quality=auto",
  order: 1,
  band_id: band.id
  })

post = band.posts.create!({
  title: "Dirty Potato Chips",
  body: "We kettle cook in a premium peanut oil blend for a crunchier, tastier potato chop!"
  # band_id: band.id
  })

friend1 = Friend.create!({
  name: "Quincy",
  image: "https://s-media-cache-ak0.pinimg.com/originals/2c/52/61/2c5261d5b2abee4a9b6717f192924a0c.jpg",
  order: 2,
  band_id: band.id
})

friend2 = Friend.create!({
  name: "Abigail",
  image: "https://s-media-cache-ak0.pinimg.com/originals/5e/d7/2b/5ed72b0c59a6c43d97bd34758a656d85.jpg",
  order: 3,
  band_id: band.id
  })


friend3 = Friend.create!({
  name: "Thelma",
  image: "http://catcareclinic.net/wp-content/uploads/2016/12/cat_smell_flower.jpg",
  order: 4,
  band_id: band.id
})

friend4 = Friend.create!({
  name: "Muffin",
  image: "https://s-media-cache-ak0.pinimg.com/736x/66/8f/3b/668f3bcd5f72099e4ab8ab048ee4bf36--flower-wild-life.jpg",
  order: 5,
  band_id: band.id
})

friend5 = Friend.create!({
  name: "Bagelwich",
  image: "http://i.imgur.com/btFRjOf.png",
  order: 6,
  band_id: band.id
})

friend6 = Friend.create!({
  name: "Louse",
  image: "http://hencam.com/static/uploads/2012/06/smelling-flower.jpg",
  order: 7,
  band_id: band.id
})

friend7 = Friend.create!({
  name: "Booty",
  image: "http://wildlifeinsider.com/wp-content/uploads/2016/03/Screenshot-2016-03-21-12.33.27.jpg",
  order: 8,
  band_id: band.id
})


comment = band.comments.create!({
  username: "Bagelwich",
  image: "http://i.imgur.com/btFRjOf.png",
  body: "Hello. I love your band. Please eat more melons."
})

commenst = band.comments.create!({
  username: "Muffin",
  image: "https://s-media-cache-ak0.pinimg.com/736x/66/8f/3b/668f3bcd5f72099e4ab8ab048ee4bf36--flower-wild-life.jpg",
  body: "~~~*~*~*~**~*~*~**~*~*~*~*))>><<(("
})

post2 = band.posts.create!({
  title: "How to Tame a Plastic Bag",
  body: "First and foremost, this is assuming the plastic bag is wild. There is no need to tame a bag picked up from the grocery store. These are domesticated bags who have led peaceful, orderly lives."
  })

pos2t = band.posts.create!({
  title: "Enjoying your first brainfreeze",
  body: "Summertime is filled with the hot sunshine. It burns. It burns your brain."
})

show = band.shows.create!({
  date: "11/1/1/1/1",
  time: "4am",
  name: "Whisker Patrol",
  location: "San Diego, CA"
})
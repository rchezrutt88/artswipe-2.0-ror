# ArtSwipe

## Overview

### What is ArtSwipe?

ArtSwipe is an app that helps art lovers to discover artwork currently on display in their communities through a playful, Tinder-esque interface, while providing a platform for galleries and museums to promote their shows and exhibitions.

Rather than swipe left or right on would-be dates, with ArtSwipe users flip through images of art that is currently on display in galleries or museums within a given radius. By swiping left, a user can indicate that an artwork is not to their taste, and they will proceed to the next artwork in the 'deck'. If a user swipes right, however, the app will save the work to the user's favorites and reveal the name of the artist, the current location of the work, and in the case the work is for sale, the price and information about how to contact the artist.

As a user swipes through their deck, Artswipe makes uses of a recommendation engine to learn the user's preferences based on the tags associated with the artwork they've either swiped left or right on. (Tags are provided by the client artist or gallery, or added by users, with greater weight given to the most common tags on the artwork.) 


### How artists, galleries, and museums benefit from ArtSwipe

ArtSwipe offers an entirely new channel through which artists, galleries, and museums can promote themselves. By reaching a large and diverse group of not only art lovers but also the merely "art curious," ArtSwipe opens up a new market of potential partrons. 

ArtSwipe also provides live feedback to galleries and museums on the popularity of the individual works on display.

### How general users benefit from ArtSwipe

The art world can be an intimidating space for the neophyte. Museums can be overwhelming. Galleries can feel exclusive and unwelcoming to the casual visitor. With ArtSwipe, users are free to explore and hone their tastes on their own terms.

Additionally, ArtSwipe reduces the transaction costs of discovering more obscure openings and exhibits, many of which rely on word-of-mouth or 'clubby' print and web publications to attract visitors. Without reading the right blogs or know the right people, a user can explore artwork they might otherwise miss.

### How ArtSwipe generates revenue

* Galleries and museums pay a fee for the right to display art on ArtSwipe.
* Galleries and museums pay a premium to promote exhibitions and display periodic advertisements in users' 'decks'.
* Unaffiliated artists post their work for free!  

### What differentiates ArtSwipe from similar products in the market

Many museums already offer their own mobile apps to help visitors navigate their collections, yet the user base and download rates for these apps are extremely low. A regular visitor to the MET might value updates from the app about upcoming shows and events, but the vast majority of more casual visitors cannot be troubled to clutter their phones with yet another app that they may use only once. 

ArtSwipe aims to overcome this fragmantation by providing a single platform through which museums and galleries can promote their exhibitions and their client artists.

### MVP

* Clean interface where users can swipe on artworks and where a right swipe adds the artwork to their "favorites" deck.
* A portal through which galleries can upload, tag, and eventually remove images of artwork on display and view user feedback in terms of left/right swipes.

### Future features
- The user need not be constrained just to art in their proximity; a user in Topeka, Kansas, for instance, may employ an 'explore' feature and drop a pin in Berlin and take a look at what's on display in the galleries of Augustrasse.
- Galleries and museums may subscribe to ArtSwipe to add their own 'mini apps'. With the use of BLE beacons (iBeacon), users may then use the mini app as a virtual guide when visiting a museum. When a user approaches an artwork, a nearby beacon prompts the app to play an audio lecture about the piece.

## How is ArtSwipe built?

ArtSwipe is built on a Ruby on Rails API, with React.JS powering the web interface and Swift the iOS app.

[Heyday Labs](http://labs.heyday.co.nz/) - Geared Scroller
================================

Huh? What is it?
----------------

This is a little effect we dreamed up for a project of ours: [Down to the Wire - The Story of New Zealand's Internet](http://downtothewire.co.nz/).

Basically, we wanted a way to prolong the visibility of certain columns in a 3-column layout.

We thought - how about we do some funky *proportional* scrolling that slows the scrolling of shorter columns so that, as a user scrolls down the page, the columns will line up along the baseline of the tallest column... if this makes no sense it's probably better you check it out in action:
[http://downtothewire.co.nz/](http://downtothewire.co.nz/) - sorry, our implmentation is for Webkit browsers only (see known issues below)

It ain't perfect...
-------------------

Damn! Why do Webkit browsers have to be the only sh*t hot browsers! ;)

OK - so it does *work* on all modern browsers but we've only enabled it for Webkit. Reason being that other browsers (including Firefox) have a slight stuttering of the animated columns when using the scrollbar (using a wheel mouse is fine - this probably comes down to the number of times the **`scroll`** event is fired).

We tried changing it to animate the **`scrollTop`** property instead (usually better for animating the **`top`** position - but same deal.

So... have a crack and if you can resolve this little issue we'll be your friend forever.

[Update] User mleibman gave us a tip which improved the performance and allowed us to enable this in Firefox and IE7+

Would you like to know more?
----------------------------

If you want to ask us a question, tell us about a bug or, you're just bored, please feel free to drop by our labs:  
[http://labs.heyday.co.nz/](http://labs.heyday.co.nz/) or email us: [labs@heyday.co.nz](mailto:labs@heyday.co.nz)
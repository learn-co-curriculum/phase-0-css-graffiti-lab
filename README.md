

# CSS Graffiti Override

In this lab, you are asked to clean the graffiti tags off the wall by making use of in browser developer tools and writing selectors that are more specific (have greater authority) in order to override the existing styles.

## Steps

1. Fork this repository.
2. Clone your fork locally.
3. cd into the local clone you just created.
4. Open index.html in your browser (Chrome suggested).
5. Open the [dev tools](http://discover-devtools.codeschool.com/) `Cmd+Option+i` and inspect elements of the graffiti wall making a note of the CSS styles used to add graffiti tags (as background images) to the wall.
6. In the file css/cleanup.css write selectors that have more specificity (authority) than those that are showing the graffiti tags. Use the CSS declaration `display:none;` changing the elements previously from display: block to display:none, which will hide that graffiti. 

For example for "tag-1" the developer tools reveal that the style applying the graffiti here is:

```
.tag-1 {
  background: url(../images/tag-1.png) no-repeat;
  z-index: 7;
  display: block;
}
```

We need to override this and set its display to `display: none;` instead. We can do this by writing a selector statement that is more specific such as:

```
#wall .tag-1 {
  display: none;
}
```

This selects elements with a class of "tag-1" that happen to also be inside an element with an id of "wall". This is more specific and therefore will override the previous statement and hide the graffiti. For more info on how specificity in CSS works take a look at: [Smashing Magazines What you Need to Know About CSS Specificity](http://www.smashingmagazine.com/2007/07/27/css-specificity-things-you-should-know/).

Work your way through all seven graffiti pictures until the wall is fully clean. Do not use the CSS `!important` value as it is considered a bad practice! Also avoid adding inline or embedded CSS to the index.html file, or by adding any additional class or id attributes to the index.html file either! This will make it more challenging as you will have to write CSS that is more specific based on the existing markup.

## Resources

 * [Smashing Magazine - CSS Specificity](http://www.smashingmagazine.com/2007/07/27/css-specificity-things-you-should-know/)
 * [CSS Tricks - CSS Specificity](http://css-tricks.com/specifics-on-css-specificity/)
 * [Code School - DiscoverDevTools](http://discover-devtools.codeschool.com/)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/css-graffiti-override' title='CSS Graffiti Override'>CSS Graffiti Override</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='https://learn.co/lessons/css-graffiti-override'>CSS Graffiti Override</a> on Learn.co and start learning to code for free.</p>

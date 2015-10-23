# Minable CSS Framework

Minable is a very minimal but flexible CSS grid framework powered by Scss.

__*We have recently made some big changes to the naming conventions, this will not be compatible with any old versions of Minable!!!*__


## Minable Classes
Minable makes use of BEM like naming convention for classes making for far more readable markup, if you're not familiar it stands for Block Element Modifier. It follows this basic structure:

``` scss
.block {}
.block__element {}
.block--modifier {}
.block__element--modifier {}
```

For more information have a look at [MindBEMding - Getting your head round BEM syntax](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/) by Harry Roberts, its a great read!

### Minable wrapper
The Wrapper element sets the max width `$min-wrapper-width` of the content and centers it on the page, by default this is 60em (960px).

``` scss
.min__w
```

An optional wide modifier can be set `$min-wrapper-width-wide`, by default this is set to false.

``` scss
.min__w--wide
```

### Minable Group
The Group element wraps Units, it also allows us to adjust the gutter on direct descendant `min__u` elements.

``` scss
.min__g // Default gutter width set by $min-gutter, 32px default.
.min__g--gutter-small // Sets gutter to value of $min-gutter-small, 8px default.
.min__g--gutter-none // Removes gutter.
```

### Minable Unit
The Unit defines the ratios of your columns as well as breakpoints where it will become effective.

``` scss
.min__u--1-2 // 1/2 width unit with no specified breakpoint
.min__u--l-13-19 // 13/19 width unit at the large breakpoint (for some insane layouts)
.min__u--m-1-8 // 1/8 width at the medium breakpoint
```

### Markup example

``` html
<div class="min__w">
  <div class="min__g">
    <div class="min__u--3-4 min__u--m-1-2">
      <p>This content will be 3/4 width on large screens and 1/2 on medium screens.</p>
    </div>
    <div class="min__u--1-4 min__u--m-1-2">
      <p>This content will be 3/4 width on large screens and 1/2 on medium screens.</p>
    </div>
  </div>
</div>
```

### Grid Setup

Breakpoint and the unit generator is setup from the `_settings.scss`:

``` scss
$break-l: 920px !default;
$break-m: 767px !default;
$break-s: 420px !default;

$min-breakpoint-generators: l $break-l, ml $break-ml, m $break-m, s $break-s;
```

Here we define some breakpoint values, we store these as variables so they can be easily reused for consistency i.e. `$break-l: 920px !default;`

We then pass a reference for the class names and the breakpoint size value we just difined into the `$min-breakpoint-generators` array:

``` scss
$min-breakpoint-generators: l $break-l;
```

This will generate units such as:
`%min__u--l-1-2`


Silent classes are generated to minimise footprint, just extend the new silent classes for use:

``` scss
.min__u--l-1-2 {
  @extend %min__u--l-1-2;
}
```

More Docs coming soon
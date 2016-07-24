@bicycle-route: #36f;
@bicycle-route-text: @bicycle-route;

#bicycle-routes {
  [zoom >= 7] {
    /* background prevents problems with overlapping ferry-routes, see #457 */
/*    background/line-color: @water-color; */
/*    background/line-width: 1; *//* Needs to be a bit wider than the route itself because of antialiasing */
    line-color: @bicycle-route;
    line-width: 0.4;
    line-dasharray: 4,4;
    [zoom >= 11] {
      background/line-width: 1;
      line-width: 0.8;
      line-dasharray: 6,6;
    }
  }
}

#bicycle-routes-text {
  [zoom >= 13] {
    text-name: "[name]";
    text-face-name: @book-fonts;
    text-placement: line;
    text-fill: @bicycle-route-text;
    text-spacing: 1000;
    text-size: 8;
    [zoom >= 14] { text-size: 10; }
    text-halo-radius: 1;
    text-halo-fill: rgba(255,255,255,0.6);
    text-dy: -8;
  }
}

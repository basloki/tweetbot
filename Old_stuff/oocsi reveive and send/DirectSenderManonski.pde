import nl.tue.id.oocsi.*;

// ******************************************************
// This example requires a running OOCSI server!
//
// How to do that? Check: Examples > Tools > LocalServer
//
// More information how to run an OOCSI server
// can be found here: https://iddi.github.io/oocsi/)
// ******************************************************

OOCSI oocsi;

void setup() {
  size(200, 200);
  background(120);
  frameRate(10);

  // connect to OOCSI server running on the same machine (localhost)
  // with "senderName" to be my channel others can send data to
  // (for more information how to run an OOCSI server refer to: https://iddi.github.io/oocsi/)
  oocsi = new OOCSI(this, "Manons", "oocsi.id.tue.nl");
}

void draw() {
  // send to OOCSI ...
  oocsi
    // on channel "receiverName"...
  .channel("Manonski")
    // data labeled "color"...
    .data("color", mouseX)
      // data labeled "position"...
      .data("position", mouseY)
      
      
        // send finally
        .send();
}
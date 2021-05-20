#include <emscripten.h>

#include "WASoMe/draw.h"

Draw *drawer;

void mainLoop() {
    drawer->drawRandomPixels();
}

int main(int argc, char *argv[]) {
    drawer = new Draw();
    drawer->init();

    emscripten_set_main_loop(mainLoop, 0, 1);
}
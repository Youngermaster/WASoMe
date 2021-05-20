#pragma once

#include <SDL.h>
#include <stdlib.h>

class Draw {
   private:
    SDL_Window *window;
    SDL_Renderer *renderer;
    SDL_Surface *surface;

   public:
    Draw();
    ~Draw();

    void drawRandomPixels();
    void draw(SDL_Renderer *Renderer);
    void init();
};

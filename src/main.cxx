#include "main.hxx"

int main(int argc, char* argv[]) {
    SDLApplication app;
    app.Run();
    return EXIT_SUCCESS;
}

SDLApplication::SDLApplication() {
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        std::cerr << "SDL initialization failed: " << SDL_GetError() << std::endl;
        std::exit(EXIT_FAILURE);
    }

    window_ = SDL_CreateWindow("Hello SDL", kWindowWidth_, kWindowHeight_, 0);
    if (!window_) {
        std::cerr << "Window creation failed: " << SDL_GetError() << std::endl;
        SDL_Quit();
        std::exit(EXIT_FAILURE);
    }

    renderer_ = SDL_CreateRenderer(window_, nullptr, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);;
    if (!renderer_) {
        std::cerr << "Renderer creation failed: " << SDL_GetError() << std::endl;
        SDL_DestroyWindow(window_);
        SDL_Quit();
        std::exit(EXIT_FAILURE);
    }
}

SDLApplication::~SDLApplication() {
    SDL_DestroyRenderer(renderer_);
    SDL_DestroyWindow(window_);
    SDL_Quit();
}

void SDLApplication::Run() {
    while (is_running_) {
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_EVENT_QUIT) {
                is_running_ = false;
                break;
            }
        }

        SDL_RenderPresent(renderer_);
    }
}

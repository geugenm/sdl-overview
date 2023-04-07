#include <gtest/gtest.h>
#include <SDL3/SDL.h>

TEST(SDLTest, SDLInitialization) {
    constexpr uint16_t kWindowHeight = 120;
    constexpr uint16_t kWindowWidth = 120;

    ASSERT_EQ(SDL_Init(SDL_INIT_VIDEO), 0) << "SDL_Init Error: " << SDL_GetError();

    SDL_Window* window = SDL_CreateWindow("(sdl-compile-test) Test SDL3 Window", kWindowHeight, kWindowWidth, 0);
    ASSERT_NE(window, nullptr) << "SDL_CreateWindow Error: " << SDL_GetError();

    SDL_Renderer* renderer = SDL_CreateRenderer(window, nullptr, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    ASSERT_NE(renderer, nullptr) << "SDL_CreateRenderer Error: " << SDL_GetError();

    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

package raylib_byte_array_drawing

import "core:fmt"
import "core:time"
import rl "vendor:raylib"

screen_size :: [2]i32{ 800, 600 }
pixel_bytes :: screen_size.x * screen_size.y * 4

main :: proc() {
    rl.InitWindow(screen_size.x, screen_size.y, "raylib")
    defer rl.CloseWindow()    
    rl.SetTargetFPS(60)


    data := new([pixel_bytes]u8)
    defer free(data)
    for i := 0; i < len(data); i += 1 { data[i] = 255 }
    
    img := rl.Image{
        data,
        screen_size.x,
        screen_size.y,
        1,
        rl.PixelFormat.UNCOMPRESSED_R8G8B8A8,
    }
    texture := rl.LoadTextureFromImage(img)
    defer rl.UnloadTexture(texture)

    row :i32 = 0
    row_width :i32 = screen_size.x * 4

    wait_duration := time.Duration(time.Millisecond)
    ticker: time.Stopwatch
    time.stopwatch_start(&ticker)

    color_value :u8 = 255

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()
        defer rl.EndDrawing()
        rl.ClearBackground(rl.BLACK)

        for i := row * row_width; i < (row + 1) * row_width; i += 1 {
            data[i] = color_value
        }

        if time.stopwatch_duration(ticker) > wait_duration {
            time.stopwatch_reset(&ticker)
            time.stopwatch_start(&ticker)

            row += 1
            row = row % screen_size.y
            
            color_value -= 1
            color_value = u8(int(color_value) % 256)
        }

        rl.UpdateTexture(texture, data)

        rl.DrawTexture(texture, 0, 0, rl.WHITE)
    }
}

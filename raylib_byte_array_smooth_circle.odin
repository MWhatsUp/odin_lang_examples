package svg

import "core:fmt"
import "core:time"
import "core:math"
import rl "vendor:raylib"

screen_size :: [2]i32{ 800, 600 }

texture_size :: [2]i32{ 200, 200 }
pixel_bytes :: texture_size.x * texture_size.y * 4

main :: proc() {
    rl.InitWindow(screen_size.x, screen_size.y, "raylib")
    defer rl.CloseWindow()
    rl.SetTargetFPS(60)


    data := new([pixel_bytes]u8)
    defer free(data)

    center :: [2]f32{ f32(texture_size.x) / 2, f32(texture_size.y) / 2 }
    radius :f32 = 100

    for i :i32 = 0; i < len(data); i += 4 {
        position1 := [2]f32{
            f32((i / 4) % texture_size.x),
            f32((i / 4) / texture_size.y),
        }
        difference1 := [2]f32{
            position1.x - center.x,
            position1.y - center.y,
        }
        distance1 := math.sqrt(
            math.pow_f32(f32(difference1.x), 2) + math.pow_f32(f32(difference1.y), 2)
        )

        if (distance1 >= radius + 1) {
            continue
        }

        position2 := [2]f32{
            position1.x + .25,
            position1.y,
        }
        position3 := [2]f32{
            position1.x + .55,
            position1.y,
        }
        position4 := [2]f32{
            position1.x + .75,
            position1.y,
        }
        position5 := [2]f32{
            position1.x,
            position1.y + .25,
        }
        position6 := [2]f32{
            position1.x + .25,
            position1.y + .25,
        }
        position7 := [2]f32{
            position1.x + .5,
            position1.y + .25,
        }
        position8 := [2]f32{
            position1.x + .75,
            position1.y + .25,
        }
        position9 := [2]f32{
            position1.x,
            position1.y + .5,
        }
        position10 := [2]f32{
            position1.x + .25,
            position1.y + .5,
        }
        position11 := [2]f32{
            position1.x + .5,
            position1.y + .5,
        }
        position12 := [2]f32{
            position1.x + .75,
            position1.y + .5,
        }
        position13 := [2]f32{
            position1.x,
            position1.y + .75,
        }
        position14 := [2]f32{
            position1.x + .25,
            position1.y + .75,
        }
        position15 := [2]f32{
            position1.x + .5,
            position1.y + .75,
        }
        position16 := [2]f32{
            position1.x + .75,
            position1.y + .75,
        }

        difference2 := [2]f32{
            position2.x - center.x,
            position2.y - center.y,
        }
        difference3 := [2]f32{
            position3.x - center.x,
            position3.y - center.y,
        }
        difference4 := [2]f32{
            position4.x - center.x,
            position4.y - center.y,
        }
        difference5 := [2]f32{
            position5.x - center.x,
            position5.y - center.y,
        }
        difference6 := [2]f32{
            position6.x - center.x,
            position6.y - center.y,
        }
        difference7 := [2]f32{
            position7.x - center.x,
            position7.y - center.y,
        }
        difference8 := [2]f32{
            position8.x - center.x,
            position8.y - center.y,
        }
        difference9 := [2]f32{
            position9.x - center.x,
            position9.y - center.y,
        }
        difference10 := [2]f32{
            position10.x - center.x,
            position10.y - center.y,
        }
        difference11 := [2]f32{
            position11.x - center.x,
            position11.y - center.y,
        }
        difference12 := [2]f32{
            position12.x - center.x,
            position12.y - center.y,
        }
        difference13 := [2]f32{
            position13.x - center.x,
            position13.y - center.y,
        }
        difference14 := [2]f32{
            position14.x - center.x,
            position14.y - center.y,
        }
        difference15 := [2]f32{
            position15.x - center.x,
            position15.y - center.y,
        }
        difference16 := [2]f32{
            position16.x - center.x,
            position16.y - center.y,
        }

        distance2 := math.sqrt(
            math.pow_f32(f32(difference2.x), 2) + math.pow_f32(f32(difference2.y), 2)
        )
        distance3 := math.sqrt(
            math.pow_f32(f32(difference3.x), 2) + math.pow_f32(f32(difference3.y), 2)
        )
        distance4 := math.sqrt(
            math.pow_f32(f32(difference4.x), 2) + math.pow_f32(f32(difference4.y), 2)
        )
        distance5 := math.sqrt(
            math.pow_f32(f32(difference5.x), 2) + math.pow_f32(f32(difference5.y), 2)
        )
        distance6 := math.sqrt(
            math.pow_f32(f32(difference6.x), 2) + math.pow_f32(f32(difference6.y), 2)
        )
        distance7 := math.sqrt(
            math.pow_f32(f32(difference7.x), 2) + math.pow_f32(f32(difference7.y), 2)
        )
        distance8 := math.sqrt(
            math.pow_f32(f32(difference8.x), 2) + math.pow_f32(f32(difference8.y), 2)
        )
        distance9 := math.sqrt(
            math.pow_f32(f32(difference9.x), 2) + math.pow_f32(f32(difference9.y), 2)
        )
        distance10 := math.sqrt(
            math.pow_f32(f32(difference10.x), 2) + math.pow_f32(f32(difference10.y), 2)
        )
        distance11 := math.sqrt(
            math.pow_f32(f32(difference11.x), 2) + math.pow_f32(f32(difference11.y), 2)
        )
        distance12 := math.sqrt(
            math.pow_f32(f32(difference12.x), 2) + math.pow_f32(f32(difference12.y), 2)
        )
        distance13 := math.sqrt(
            math.pow_f32(f32(difference13.x), 2) + math.pow_f32(f32(difference13.y), 2)
        )
        distance14 := math.sqrt(
            math.pow_f32(f32(difference14.x), 2) + math.pow_f32(f32(difference14.y), 2)
        )
        distance15 := math.sqrt(
            math.pow_f32(f32(difference15.x), 2) + math.pow_f32(f32(difference15.y), 2)
        )
        distance16 := math.sqrt(
            math.pow_f32(f32(difference16.x), 2) + math.pow_f32(f32(difference16.y), 2)
        )

        average :f32 = (
            (1 if (radius - distance1) >= 0 else 0) +
            (1 if (radius - distance2) >= 0 else 0) +
            (1 if (radius - distance3) >= 0 else 0) +
            (1 if (radius - distance4) >= 0 else 0) +
            (1 if (radius - distance5) >= 0 else 0) +
            (1 if (radius - distance6) >= 0 else 0) +
            (1 if (radius - distance7) >= 0 else 0) +
            (1 if (radius - distance8) >= 0 else 0) +
            (1 if (radius - distance9) >= 0 else 0) +
            (1 if (radius - distance10) >= 0 else 0) +
            (1 if (radius - distance11) >= 0 else 0) +
            (1 if (radius - distance12) >= 0 else 0) +
            (1 if (radius - distance13) >= 0 else 0) +
            (1 if (radius - distance14) >= 0 else 0) +
            (1 if (radius - distance15) >= 0 else 0) +
            (1 if (radius - distance16) >= 0 else 0)) / 16

        data[i] = 255
        data[i + 1] = 255
        data[i + 2] = 255
        data[i + 3] = u8(255 * average)
    }

    img := rl.Image{
        data,
        texture_size.x,
        texture_size.y,
        1,
        rl.PixelFormat.UNCOMPRESSED_R8G8B8A8,
    }
    texture := rl.LoadTextureFromImage(img)
    defer rl.UnloadTexture(texture)

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()
        defer rl.EndDrawing()
        rl.ClearBackground(rl.BLACK)

        rl.DrawTexture(texture, 0, 0, rl.WHITE)
        rl.DrawCircle(305, 100, 100, rl.WHITE)
    }
}
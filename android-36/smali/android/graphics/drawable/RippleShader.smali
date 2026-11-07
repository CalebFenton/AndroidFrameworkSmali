.class final Landroid/graphics/drawable/RippleShader;
.super Landroid/graphics/RuntimeShader;
.source "RippleShader.java"


# static fields
.field private static final blacklist PI_ROTATE_LEFT:D = -0.02454369260617026

.field private static final blacklist PI_ROTATE_RIGHT:D = 0.02454369260617026

.field private static final blacklist SHADER:Ljava/lang/String; = "uniform vec2 in_origin;\nuniform vec2 in_touch;\nuniform float in_progress;\nuniform float in_maxRadius;\nuniform vec2 in_resolutionScale;\nuniform vec2 in_noiseScale;\nuniform float in_hasMask;\nuniform float in_noisePhase;\nuniform float in_turbulencePhase;\nuniform vec2 in_tCircle1;\nuniform vec2 in_tCircle2;\nuniform vec2 in_tCircle3;\nuniform vec2 in_tRotation1;\nuniform vec2 in_tRotation2;\nuniform vec2 in_tRotation3;\nlayout(color) uniform vec4 in_color;\nlayout(color) uniform vec4 in_sparkleColor;\nuniform shader in_shader;\nfloat triangleNoise(vec2 n) {\n  n  = fract(n * vec2(5.3987, 5.4421));\n  n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n  float xy = n.x * n.y;\n  return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n}const float PI = 3.1415926535897932384626;\n\nfloat threshold(float v, float l, float h) {\n    return step(l, v) * (1.0 - step(h, v));\n}\nfloat sparkles(vec2 uv, float t) {\n  float n = triangleNoise(uv);\n  float s = 0.0;\n  for (float i = 0; i < 4; i += 1) {\n    float l = i * 0.1;\n    float h = l + 0.05;\n    float o = sin(PI * (t + 0.35 * i));\n    s += threshold(n + o, l, h);\n  }\n  return saturate(s) * in_sparkleColor.a;\n}\nfloat softCircle(vec2 uv, vec2 xy, float radius, float blur) {\n  float blurHalf = blur * 0.5;\n  float d = distance(uv, xy);\n  return 1. - smoothstep(1. - blurHalf, 1. + blurHalf, d / radius);\n}\nfloat softRing(vec2 uv, vec2 xy, float radius, float progress, float blur) {\n  float thickness = 0.05 * radius;\n  float currentRadius = radius * progress;\n  float circle_outer = softCircle(uv, xy, currentRadius + thickness, blur);\n  float circle_inner = softCircle(uv, xy, max(currentRadius - thickness, 0.),     blur);\n  return saturate(circle_outer - circle_inner);\n}\nfloat subProgress(float start, float end, float progress) {\n    float sub = clamp(progress, start, end);\n    return (sub - start) / (end - start); \n}\nmat2 rotate2d(vec2 rad){\n  return mat2(rad.x, -rad.y, rad.y, rad.x);\n}\nfloat circle_grid(vec2 resolution, vec2 coord, float time, vec2 center,\n    vec2 rotation, float cell_diameter) {\n  coord = rotate2d(rotation) * (center - coord) + center;\n  coord = mod(coord, cell_diameter) / resolution;\n  float normal_radius = cell_diameter / resolution.y * 0.5;\n  float radius = 0.65 * normal_radius;\n  return softCircle(coord, vec2(normal_radius), radius, radius * 50.0);\n}\nfloat turbulence(vec2 uv, float t) {\n  const vec2 scale = vec2(0.8);\n  uv = uv * scale;\n  float g1 = circle_grid(scale, uv, t, in_tCircle1, in_tRotation1, 0.17);\n  float g2 = circle_grid(scale, uv, t, in_tCircle2, in_tRotation2, 0.2);\n  float g3 = circle_grid(scale, uv, t, in_tCircle3, in_tRotation3, 0.275);\n  float v = (g1 * g1 + g2 - g3) * 0.5;\n  return saturate(0.45 + 0.8 * v);\n}\nvec4 main(vec2 p) {\n    float fadeIn = subProgress(0., 0.13, in_progress);\n    float scaleIn = subProgress(0., 1.0, in_progress);\n    float fadeOutNoise = subProgress(0.4, 0.5, in_progress);\n    float fadeOutRipple = subProgress(0.4, 1., in_progress);\n    vec2 center = mix(in_touch, in_origin, saturate(in_progress * 2.0));\n    float ring = softRing(p, center, in_maxRadius, scaleIn, 1.);\n    float alpha = min(fadeIn, 1. - fadeOutNoise);\n    vec2 uv = p * in_resolutionScale;\n    vec2 densityUv = uv - mod(uv, in_noiseScale);\n    float turb = turbulence(uv, in_turbulencePhase);\n    float sparkleAlpha = sparkles(densityUv, in_noisePhase) * ring * alpha * turb;\n    float fade = min(fadeIn, 1. - fadeOutRipple);\n    float waveAlpha = softCircle(p, center, in_maxRadius * scaleIn, 1.) * fade * in_color.a;\n    vec4 waveColor = vec4(in_color.rgb * waveAlpha, waveAlpha);\n    vec4 sparkleColor = vec4(in_sparkleColor.rgb * in_sparkleColor.a, in_sparkleColor.a);\n    float mask = in_hasMask == 1. ? in_shader.eval(p).a > 0. ? 1. : 0. : 1.;\n    return mix(waveColor, sparkleColor, sparkleAlpha) * mask;\n}"

.field private static final blacklist SHADER_LIB:Ljava/lang/String; = "float triangleNoise(vec2 n) {\n  n  = fract(n * vec2(5.3987, 5.4421));\n  n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n  float xy = n.x * n.y;\n  return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n}const float PI = 3.1415926535897932384626;\n\nfloat threshold(float v, float l, float h) {\n    return step(l, v) * (1.0 - step(h, v));\n}\nfloat sparkles(vec2 uv, float t) {\n  float n = triangleNoise(uv);\n  float s = 0.0;\n  for (float i = 0; i < 4; i += 1) {\n    float l = i * 0.1;\n    float h = l + 0.05;\n    float o = sin(PI * (t + 0.35 * i));\n    s += threshold(n + o, l, h);\n  }\n  return saturate(s) * in_sparkleColor.a;\n}\nfloat softCircle(vec2 uv, vec2 xy, float radius, float blur) {\n  float blurHalf = blur * 0.5;\n  float d = distance(uv, xy);\n  return 1. - smoothstep(1. - blurHalf, 1. + blurHalf, d / radius);\n}\nfloat softRing(vec2 uv, vec2 xy, float radius, float progress, float blur) {\n  float thickness = 0.05 * radius;\n  float currentRadius = radius * progress;\n  float circle_outer = softCircle(uv, xy, currentRadius + thickness, blur);\n  float circle_inner = softCircle(uv, xy, max(currentRadius - thickness, 0.),     blur);\n  return saturate(circle_outer - circle_inner);\n}\nfloat subProgress(float start, float end, float progress) {\n    float sub = clamp(progress, start, end);\n    return (sub - start) / (end - start); \n}\nmat2 rotate2d(vec2 rad){\n  return mat2(rad.x, -rad.y, rad.y, rad.x);\n}\nfloat circle_grid(vec2 resolution, vec2 coord, float time, vec2 center,\n    vec2 rotation, float cell_diameter) {\n  coord = rotate2d(rotation) * (center - coord) + center;\n  coord = mod(coord, cell_diameter) / resolution;\n  float normal_radius = cell_diameter / resolution.y * 0.5;\n  float radius = 0.65 * normal_radius;\n  return softCircle(coord, vec2(normal_radius), radius, radius * 50.0);\n}\nfloat turbulence(vec2 uv, float t) {\n  const vec2 scale = vec2(0.8);\n  uv = uv * scale;\n  float g1 = circle_grid(scale, uv, t, in_tCircle1, in_tRotation1, 0.17);\n  float g2 = circle_grid(scale, uv, t, in_tCircle2, in_tRotation2, 0.2);\n  float g3 = circle_grid(scale, uv, t, in_tCircle3, in_tRotation3, 0.275);\n  float v = (g1 * g1 + g2 - g3) * 0.5;\n  return saturate(0.45 + 0.8 * v);\n}\n"

.field private static final blacklist SHADER_MAIN:Ljava/lang/String; = "vec4 main(vec2 p) {\n    float fadeIn = subProgress(0., 0.13, in_progress);\n    float scaleIn = subProgress(0., 1.0, in_progress);\n    float fadeOutNoise = subProgress(0.4, 0.5, in_progress);\n    float fadeOutRipple = subProgress(0.4, 1., in_progress);\n    vec2 center = mix(in_touch, in_origin, saturate(in_progress * 2.0));\n    float ring = softRing(p, center, in_maxRadius, scaleIn, 1.);\n    float alpha = min(fadeIn, 1. - fadeOutNoise);\n    vec2 uv = p * in_resolutionScale;\n    vec2 densityUv = uv - mod(uv, in_noiseScale);\n    float turb = turbulence(uv, in_turbulencePhase);\n    float sparkleAlpha = sparkles(densityUv, in_noisePhase) * ring * alpha * turb;\n    float fade = min(fadeIn, 1. - fadeOutRipple);\n    float waveAlpha = softCircle(p, center, in_maxRadius * scaleIn, 1.) * fade * in_color.a;\n    vec4 waveColor = vec4(in_color.rgb * waveAlpha, waveAlpha);\n    vec4 sparkleColor = vec4(in_sparkleColor.rgb * in_sparkleColor.a, in_sparkleColor.a);\n    float mask = in_hasMask == 1. ? in_shader.eval(p).a > 0. ? 1. : 0. : 1.;\n    return mix(waveColor, sparkleColor, sparkleAlpha) * mask;\n}"

.field private static final blacklist SHADER_UNIFORMS:Ljava/lang/String; = "uniform vec2 in_origin;\nuniform vec2 in_touch;\nuniform float in_progress;\nuniform float in_maxRadius;\nuniform vec2 in_resolutionScale;\nuniform vec2 in_noiseScale;\nuniform float in_hasMask;\nuniform float in_noisePhase;\nuniform float in_turbulencePhase;\nuniform vec2 in_tCircle1;\nuniform vec2 in_tCircle2;\nuniform vec2 in_tCircle3;\nuniform vec2 in_tRotation1;\nuniform vec2 in_tRotation2;\nuniform vec2 in_tRotation3;\nlayout(color) uniform vec4 in_color;\nlayout(color) uniform vec4 in_sparkleColor;\nuniform shader in_shader;\n"


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 128
    const-string/jumbo v0, "uniform vec2 in_origin;\nuniform vec2 in_touch;\nuniform float in_progress;\nuniform float in_maxRadius;\nuniform vec2 in_resolutionScale;\nuniform vec2 in_noiseScale;\nuniform float in_hasMask;\nuniform float in_noisePhase;\nuniform float in_turbulencePhase;\nuniform vec2 in_tCircle1;\nuniform vec2 in_tCircle2;\nuniform vec2 in_tCircle3;\nuniform vec2 in_tRotation1;\nuniform vec2 in_tRotation2;\nuniform vec2 in_tRotation3;\nlayout(color) uniform vec4 in_color;\nlayout(color) uniform vec4 in_sparkleColor;\nuniform shader in_shader;\nfloat triangleNoise(vec2 n) {\n  n  = fract(n * vec2(5.3987, 5.4421));\n  n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n  float xy = n.x * n.y;\n  return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n}const float PI = 3.1415926535897932384626;\n\nfloat threshold(float v, float l, float h) {\n    return step(l, v) * (1.0 - step(h, v));\n}\nfloat sparkles(vec2 uv, float t) {\n  float n = triangleNoise(uv);\n  float s = 0.0;\n  for (float i = 0; i < 4; i += 1) {\n    float l = i * 0.1;\n    float h = l + 0.05;\n    float o = sin(PI * (t + 0.35 * i));\n    s += threshold(n + o, l, h);\n  }\n  return saturate(s) * in_sparkleColor.a;\n}\nfloat softCircle(vec2 uv, vec2 xy, float radius, float blur) {\n  float blurHalf = blur * 0.5;\n  float d = distance(uv, xy);\n  return 1. - smoothstep(1. - blurHalf, 1. + blurHalf, d / radius);\n}\nfloat softRing(vec2 uv, vec2 xy, float radius, float progress, float blur) {\n  float thickness = 0.05 * radius;\n  float currentRadius = radius * progress;\n  float circle_outer = softCircle(uv, xy, currentRadius + thickness, blur);\n  float circle_inner = softCircle(uv, xy, max(currentRadius - thickness, 0.),     blur);\n  return saturate(circle_outer - circle_inner);\n}\nfloat subProgress(float start, float end, float progress) {\n    float sub = clamp(progress, start, end);\n    return (sub - start) / (end - start); \n}\nmat2 rotate2d(vec2 rad){\n  return mat2(rad.x, -rad.y, rad.y, rad.x);\n}\nfloat circle_grid(vec2 resolution, vec2 coord, float time, vec2 center,\n    vec2 rotation, float cell_diameter) {\n  coord = rotate2d(rotation) * (center - coord) + center;\n  coord = mod(coord, cell_diameter) / resolution;\n  float normal_radius = cell_diameter / resolution.y * 0.5;\n  float radius = 0.65 * normal_radius;\n  return softCircle(coord, vec2(normal_radius), radius, radius * 50.0);\n}\nfloat turbulence(vec2 uv, float t) {\n  const vec2 scale = vec2(0.8);\n  uv = uv * scale;\n  float g1 = circle_grid(scale, uv, t, in_tCircle1, in_tRotation1, 0.17);\n  float g2 = circle_grid(scale, uv, t, in_tCircle2, in_tRotation2, 0.2);\n  float g3 = circle_grid(scale, uv, t, in_tCircle3, in_tRotation3, 0.275);\n  float v = (g1 * g1 + g2 - g3) * 0.5;\n  return saturate(0.45 + 0.8 * v);\n}\nvec4 main(vec2 p) {\n    float fadeIn = subProgress(0., 0.13, in_progress);\n    float scaleIn = subProgress(0., 1.0, in_progress);\n    float fadeOutNoise = subProgress(0.4, 0.5, in_progress);\n    float fadeOutRipple = subProgress(0.4, 1., in_progress);\n    vec2 center = mix(in_touch, in_origin, saturate(in_progress * 2.0));\n    float ring = softRing(p, center, in_maxRadius, scaleIn, 1.);\n    float alpha = min(fadeIn, 1. - fadeOutNoise);\n    vec2 uv = p * in_resolutionScale;\n    vec2 densityUv = uv - mod(uv, in_noiseScale);\n    float turb = turbulence(uv, in_turbulencePhase);\n    float sparkleAlpha = sparkles(densityUv, in_noisePhase) * ring * alpha * turb;\n    float fade = min(fadeIn, 1. - fadeOutRipple);\n    float waveAlpha = softCircle(p, center, in_maxRadius * scaleIn, 1.) * fade * in_color.a;\n    vec4 waveColor = vec4(in_color.rgb * waveAlpha, waveAlpha);\n    vec4 sparkleColor = vec4(in_sparkleColor.rgb * in_sparkleColor.a, in_sparkleColor.a);\n    float mask = in_hasMask == 1. ? in_shader.eval(p).a > 0. ? 1. : 0. : 1.;\n    return mix(waveColor, sparkleColor, sparkleAlpha) * mask;\n}"

    invoke-direct {p0, v0}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public blacklist setColor(II)V
    .registers 4
    .param p1, "colorInt"    # I
    .param p2, "sparkleColorInt"    # I

    .line 190
    const-string/jumbo v0, "in_color"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/RippleShader;->setColorUniform(Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v0, "in_sparkleColor"

    invoke-virtual {p0, v0, p2}, Landroid/graphics/drawable/RippleShader;->setColorUniform(Ljava/lang/String;I)V

    .line 192
    return-void
.end method

.method public blacklist setNoisePhase(F)V
    .registers 14
    .param p1, "phase"    # F

    .line 158
    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr v0, p1

    const-string/jumbo v1, "in_noisePhase"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 163
    move v0, p1

    .line 164
    .local v0, "turbulencePhase":F
    const-string/jumbo v1, "in_turbulencePhase"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 165
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 166
    .local v1, "scale":F
    float-to-double v2, v0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    .line 167
    const-wide v6, 0x3fea666666666667L    # 0.8250000000000001

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    add-double/2addr v2, v8

    double-to-float v2, v2

    float-to-double v10, v0

    mul-double/2addr v10, v4

    .line 168
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    add-double/2addr v10, v8

    double-to-float v3, v10

    .line 166
    const-string/jumbo v4, "in_tCircle1"

    invoke-virtual {p0, v4, v2, v3}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 169
    float-to-double v2, v0

    const-wide v4, -0x4084f765fd8adabaL    # -0.0066

    mul-double/2addr v2, v4

    .line 170
    const-wide v6, 0x3fe599999999999aL    # 0.675

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide v8, 0x3fd3333333333334L    # 0.30000000000000004

    add-double/2addr v2, v8

    double-to-float v2, v2

    float-to-double v10, v0

    mul-double/2addr v10, v4

    .line 171
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v10, v6

    add-double/2addr v10, v8

    double-to-float v3, v10

    .line 169
    const-string/jumbo v6, "in_tCircle2"

    invoke-virtual {p0, v6, v2, v3}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 172
    float-to-double v2, v0

    mul-double/2addr v2, v4

    .line 173
    const-wide v6, 0x3fe0ccccccccccccL    # 0.5249999999999999

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v2, v8

    double-to-float v2, v2

    float-to-double v10, v0

    mul-double/2addr v10, v4

    .line 174
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    add-double/2addr v10, v8

    double-to-float v3, v10

    .line 172
    const-string/jumbo v4, "in_tCircle3"

    invoke-virtual {p0, v4, v2, v3}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 175
    float-to-double v2, v0

    const-wide v4, 0x3f9921fb54442d18L    # 0.02454369260617026

    mul-double/2addr v2, v4

    const-wide v6, 0x40155ce26e06bfeeL    # 5.340707511102648

    add-double/2addr v2, v6

    .line 176
    .local v2, "rotation1":D
    nop

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 176
    const-string/jumbo v8, "in_tRotation1"

    invoke-virtual {p0, v8, v6, v7}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 178
    float-to-double v6, v0

    const-wide v8, -0x4066de04abbbd2e8L    # -0.02454369260617026

    mul-double/2addr v6, v8

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v6, v8

    .line 179
    .local v6, "rotation2":D
    nop

    .line 180
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 179
    const-string/jumbo v10, "in_tRotation2"

    invoke-virtual {p0, v10, v8, v9}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 181
    float-to-double v8, v0

    mul-double/2addr v8, v4

    const-wide v4, 0x4021475cc9eedf00L    # 8.63937979737193

    add-double/2addr v8, v4

    .line 182
    .local v8, "rotation3":D
    nop

    .line 183
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 182
    const-string/jumbo v10, "in_tRotation3"

    invoke-virtual {p0, v10, v4, v5}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 184
    return-void
.end method

.method public blacklist setOrigin(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 143
    const-string/jumbo v0, "in_origin"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 144
    return-void
.end method

.method public blacklist setProgress(F)V
    .registers 3
    .param p1, "progress"    # F

    .line 151
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 152
    return-void
.end method

.method public blacklist setRadius(F)V
    .registers 4
    .param p1, "radius"    # F

    .line 139
    const v0, 0x40133333    # 2.3f

    mul-float/2addr v0, p1

    const-string/jumbo v1, "in_maxRadius"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 140
    return-void
.end method

.method public blacklist setResolution(FF)V
    .registers 7
    .param p1, "w"    # F
    .param p2, "h"    # F

    .line 195
    const v0, 0x40066666    # 2.1f

    .line 196
    .local v0, "densityScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v2, v1, p1

    div-float/2addr v1, p2

    const-string/jumbo v3, "in_resolutionScale"

    invoke-virtual {p0, v3, v2, v1}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 197
    const v1, 0x40066666    # 2.1f

    div-float v2, v1, p1

    div-float/2addr v1, p2

    const-string/jumbo v3, "in_noiseScale"

    invoke-virtual {p0, v3, v2, v1}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 198
    return-void
.end method

.method public blacklist setShader(Landroid/graphics/Shader;)V
    .registers 4
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 132
    if-eqz p1, :cond_8

    .line 133
    const-string/jumbo v0, "in_shader"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/RippleShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    .line 135
    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_e
    const-string/jumbo v1, "in_hasMask"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 136
    return-void
.end method

.method public blacklist setTouch(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 147
    const-string/jumbo v0, "in_touch"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/drawable/RippleShader;->setFloatUniform(Ljava/lang/String;FF)V

    .line 148
    return-void
.end method

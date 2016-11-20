.class public Lcom/google/android/filterpacks/facedetect/FaceliftFilter;
.super Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;
.source "FaceliftFilter.java"


# static fields
.field private static final DEFAULT_ROW_BUFFERS:I = 0x800


# instance fields
.field private mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mColumnSmoothShader:Ljava/lang/String;

.field private mCropProgram:Landroid/filterfw/core/ShaderProgram;

.field private mGlCoordOffset:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "glCoordOffset"
    .end annotation
.end field

.field private mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mIntensityShader:Ljava/lang/String;

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "padSize"
    .end annotation
.end field

.field private mRangeSigma:F
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "rangeSigma"
    .end annotation
.end field

.field private mRangeSteps:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "rangeSteps"
    .end annotation
.end field

.field private mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mRgbToRgbaShader:Ljava/lang/String;

.field private mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mRowSmoothShader:Ljava/lang/String;

.field private mSliceSize:I

.field private mTableFrame:Landroid/filterfw/core/Frame;

.field private mTanhFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/16 v1, 0xa

    #@3
    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;-><init>(Ljava/lang/String;)V

    #@6
    .line 47
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@8
    .line 53
    const v0, 0x3c23d70a    # 0.01f

    #@b
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSigma:F

    #@d
    .line 60
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    #@f
    .line 67
    const/high16 v0, 0x3f000000    # 0.5f

    #@11
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mGlCoordOffset:F

    #@13
    .line 70
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 disp;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.299, 0.587, 0.114);\n  vec3 color = 2.0 * texture2D(tex_sampler_0, v_texcoord).rgb;\n  color -= 0.5 * texture2D(tex_sampler_0, (v_texcoord + vec2(0, disp.y))).rgb;\n  color -= 0.5 *texture2D(tex_sampler_0, (v_texcoord + vec2(disp.x, 0))).rgb;\n  gl_FragColor = vec4(color, dot(weights, color));\n}\n"

    #@16
    .line 69
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaShader:Ljava/lang/String;

    #@18
    .line 84
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float tbl_scale;\nuniform float tbl_offset;\nuniform float coord_offset;\nuniform float tex_offset;\nuniform float tex_scale;\nuniform float rangeSteps;\nuniform float k_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  float k_value = mod(gl_FragCoord.y - coord_offset, rangeSteps);\n  vec2 coord;\n  coord.x = v_texcoord.x;\n  coord.y = tex_offset + tex_scale * (gl_FragCoord.y - coord_offset - k_value);\n  vec4 color = texture2D(tex_sampler_0, coord);\n  k_value *= k_scale;\n  coord.x = tbl_offset + tbl_scale * abs(k_value - color.a);\n  coord.y = 0.5;\n  vec4 weight_byte = texture2D(tex_sampler_1, coord);\n  float weight = weight_byte.g + 0.00390625 * weight_byte.r;\n  gl_FragColor = vec4(color.rgb, weight);\n}\n"

    #@1b
    .line 83
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityShader:Ljava/lang/String;

    #@1d
    .line 112
    const-string/jumbo v0, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 coord = vec2(0.0, stepsize);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, result.a / 6.0);\n}\n"

    #@20
    .line 111
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothShader:Ljava/lang/String;

    #@22
    .line 137
    const-string/jumbo v0, "precision highp float;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float byte_scale = 0.00390625;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tanh_offset;\nuniform float tanh_scale;\nuniform float row_offset;\nuniform float tbl_offset;\nuniform float range_scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgba = texture2D(tex_sampler_0, v_texcoord);\n  vec4 yuv = coeff_yuv * vec4(rgba.rgb, 1.0);\n  vec3 proj = yuv_var * (yuv.xyz - yuv_mean);\n  proj = yuv_scale * proj;\n  float dist = sqrt(0.3333 * dot(proj, proj));\n  dist = min(1.0, dist * 0.2);\n  float tanh_value = tanh_offset + tanh_scale * dist;\n  vec4 weight_byte = texture2D(tex_sampler_2, vec2(tanh_value, 0.5));\n  float alpha = weight_byte.g +  byte_scale * weight_byte.r;\n  float k_value = rgba.a * range_scale;\n  vec2 coord = v_texcoord;\n  coord.y = tbl_offset + v_texcoord.y - row_offset + k_value;\n  vec4 color = texture2D(tex_sampler_1, coord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 disp = vec2(stepsize, 0.0);\n  color =  texture2D(tex_sampler_1, coord + disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, alpha);\n}\n"

    #@25
    .line 136
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothShader:Ljava/lang/String;

    #@27
    .line 189
    iput-object v2, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@29
    .line 190
    iput-object v2, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@2b
    .line 199
    return-void
.end method

.method private createExpTable(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v13, 0x3

    #@1
    const/16 v12, 0x100

    #@3
    .line 258
    const/16 v7, 0x100

    #@5
    .line 259
    .local v7, "tableSize":I
    const v4, 0x3b808081

    #@8
    .line 260
    .local v4, "stepSize":F
    const v2, 0x477fff00    # 65535.0f

    #@b
    .line 262
    .local v2, "precision":F
    new-array v0, v12, [I

    #@d
    .line 263
    .local v0, "array":[I
    iget v9, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSigma:F

    #@f
    const v10, 0x37810183

    #@12
    div-float v3, v10, v9

    #@14
    .line 265
    .local v3, "scale":F
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_1

    #@17
    .line 266
    neg-float v9, v3

    #@18
    int-to-float v10, v1

    #@19
    mul-float/2addr v9, v10

    #@1a
    int-to-float v10, v1

    #@1b
    mul-float/2addr v9, v10

    #@1c
    float-to-double v10, v9

    #@1d
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    #@20
    move-result-wide v10

    #@21
    double-to-float v8, v10

    #@22
    .line 267
    .local v8, "value":F
    const v9, 0x477fff00    # 65535.0f

    #@25
    mul-float/2addr v9, v8

    #@26
    float-to-int v9, v9

    #@27
    aput v9, v0, v1

    #@29
    .line 269
    aget v9, v0, v1

    #@2b
    if-ge v9, v12, :cond_0

    #@2d
    .line 270
    aput v12, v0, v1

    #@2f
    .line 265
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 273
    .end local v8    # "value":F
    :cond_1
    const/4 v9, 0x1

    #@33
    invoke-static {v12, v9, v13, v13}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@36
    move-result-object v5

    #@37
    .line 277
    .local v5, "tableFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v9, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@3e
    move-result-object v6

    #@3f
    .line 278
    .local v6, "tableFrame":Landroid/filterfw/core/Frame;
    invoke-virtual {v6, v0}, Landroid/filterfw/core/Frame;->setInts([I)V

    #@42
    .line 280
    return-object v6
.end method

.method private initParameters(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/high16 v8, 0x3f800000    # 1.0f

    #@3
    .line 229
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 230
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@9
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@c
    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->createExpTable(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Frame;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@12
    .line 233
    const/16 v2, 0x1f4

    #@14
    .line 234
    .local v2, "tanhTableSize":I
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 235
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@1a
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1d
    .line 236
    :cond_1
    const/high16 v3, 0x40a00000    # 5.0f

    #@1f
    const v4, 0x3f933333    # 1.15f

    #@22
    const/high16 v5, 0x40200000    # 2.5f

    #@24
    move-object v0, p0

    #@25
    move-object v1, p1

    #@26
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->createTanhTable(Landroid/filterfw/core/FilterContext;IFFF)Landroid/filterfw/core/Frame;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@2c
    .line 238
    new-array v6, v9, [F

    #@2e
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    #@30
    int-to-float v0, v0

    #@31
    div-float v0, v8, v0

    #@33
    const/4 v1, 0x0

    #@34
    aput v0, v6, v1

    #@36
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    #@38
    int-to-float v0, v0

    #@39
    div-float v0, v8, v0

    #@3b
    const/4 v1, 0x1

    #@3c
    aput v0, v6, v1

    #@3e
    .line 239
    .local v6, "disp":[F
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    #@40
    const-string/jumbo v1, "disp"

    #@43
    invoke-virtual {v0, v1, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@46
    .line 241
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@48
    int-to-float v0, v0

    #@49
    sub-float/2addr v0, v8

    #@4a
    div-float v7, v8, v0

    #@4c
    .line 242
    .local v7, "k_scale":F
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@4e
    const-string/jumbo v1, "k_scale"

    #@51
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@58
    .line 243
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@5a
    const-string/jumbo v1, "coord_offset"

    #@5d
    iget v3, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mGlCoordOffset:F

    #@5f
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@66
    .line 244
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@68
    const-string/jumbo v1, "rangeSteps"

    #@6b
    iget v3, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@6d
    int-to-float v3, v3

    #@6e
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@75
    .line 245
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@77
    const-string/jumbo v1, "tbl_offset"

    #@7a
    const/high16 v3, 0x3b000000    # 0.001953125f

    #@7c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@83
    .line 246
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@85
    const-string/jumbo v1, "tbl_scale"

    #@88
    const/high16 v3, 0x437f0000    # 255.0f

    #@8a
    const/high16 v4, 0x43800000    # 256.0f

    #@8c
    div-float/2addr v3, v4

    #@8d
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@94
    .line 248
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@96
    const-string/jumbo v1, "stepsize"

    #@99
    iget v3, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    #@9b
    int-to-float v3, v3

    #@9c
    div-float v3, v8, v3

    #@9e
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@a5
    .line 250
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@a7
    const-string/jumbo v1, "tanh_offset"

    #@aa
    const v3, 0x3a83126f    # 0.001f

    #@ad
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@b4
    .line 251
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@b6
    const-string/jumbo v1, "tanh_scale"

    #@b9
    const v3, 0x43f98000    # 499.0f

    #@bc
    const/high16 v4, 0x43fa0000    # 500.0f

    #@be
    div-float/2addr v3, v4

    #@bf
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@c6
    .line 254
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@c8
    const/16 v1, 0x800

    #@ca
    div-int v0, v1, v0

    #@cc
    int-to-double v0, v0

    #@cd
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@d0
    move-result-wide v0

    #@d1
    double-to-int v0, v0

    #@d2
    iget v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    #@d4
    mul-int/lit8 v1, v1, 0x2

    #@d6
    sub-int/2addr v0, v1

    #@d7
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mSliceSize:I

    #@d9
    .line 227
    return-void
.end method

.method private processOneSlice(Landroid/filterfw/core/FilterContext;IIIILandroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V
    .locals 24
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "startX"    # I
    .param p3, "endX"    # I
    .param p4, "startY"    # I
    .param p5, "endY"    # I
    .param p6, "input"    # Landroid/filterfw/core/Frame;
    .param p7, "tempFrame"    # Landroid/filterfw/core/Frame;
    .param p8, "output"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 286
    const/16 v20, 0x2

    #@2
    move/from16 v0, v20

    #@4
    new-array v8, v0, [Landroid/filterfw/core/Frame;

    #@6
    .line 288
    .local v8, "inputs":[Landroid/filterfw/core/Frame;
    sub-int v20, p3, p2

    #@8
    add-int/lit8 v20, v20, 0x1

    #@a
    move-object/from16 v0, p0

    #@c
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    #@e
    move/from16 v21, v0

    #@10
    mul-int/lit8 v21, v21, 0x2

    #@12
    add-int v19, v20, v21

    #@14
    .line 289
    .local v19, "width":I
    sub-int v20, p5, p4

    #@16
    add-int/lit8 v20, v20, 0x1

    #@18
    move-object/from16 v0, p0

    #@1a
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    #@1c
    move/from16 v21, v0

    #@1e
    mul-int/lit8 v21, v21, 0x2

    #@20
    add-int v7, v20, v21

    #@22
    .line 291
    .local v7, "height":I
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    #@26
    move/from16 v20, v0

    #@28
    sub-int v20, p2, v20

    #@2a
    move/from16 v0, v20

    #@2c
    int-to-float v0, v0

    #@2d
    move/from16 v20, v0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mWidth:I

    #@33
    move/from16 v21, v0

    #@35
    move/from16 v0, v21

    #@37
    int-to-float v0, v0

    #@38
    move/from16 v21, v0

    #@3a
    div-float v13, v20, v21

    #@3c
    .line 292
    .local v13, "rectX":F
    move-object/from16 v0, p0

    #@3e
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mPadSize:I

    #@40
    move/from16 v20, v0

    #@42
    sub-int v20, p4, v20

    #@44
    move/from16 v0, v20

    #@46
    int-to-float v0, v0

    #@47
    move/from16 v20, v0

    #@49
    move-object/from16 v0, p0

    #@4b
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mHeight:I

    #@4d
    move/from16 v21, v0

    #@4f
    move/from16 v0, v21

    #@51
    int-to-float v0, v0

    #@52
    move/from16 v21, v0

    #@54
    div-float v14, v20, v21

    #@56
    .line 293
    .local v14, "rectY":F
    move/from16 v0, v19

    #@58
    int-to-float v0, v0

    #@59
    move/from16 v20, v0

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mWidth:I

    #@5f
    move/from16 v21, v0

    #@61
    move/from16 v0, v21

    #@63
    int-to-float v0, v0

    #@64
    move/from16 v21, v0

    #@66
    div-float v12, v20, v21

    #@68
    .line 294
    .local v12, "rectWidth":F
    int-to-float v0, v7

    #@69
    move/from16 v20, v0

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mHeight:I

    #@6f
    move/from16 v21, v0

    #@71
    move/from16 v0, v21

    #@73
    int-to-float v0, v0

    #@74
    move/from16 v21, v0

    #@76
    div-float v11, v20, v21

    #@78
    .line 298
    .local v11, "rectHeight":F
    const/16 v20, 0x3

    #@7a
    .line 299
    const/16 v21, 0x3

    #@7c
    .line 297
    move/from16 v0, v19

    #@7e
    move/from16 v1, v20

    #@80
    move/from16 v2, v21

    #@82
    invoke-static {v0, v7, v1, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@85
    move-result-object v15

    #@86
    .line 300
    .local v15, "rgbaFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@89
    move-result-object v20

    #@8a
    move-object/from16 v0, v20

    #@8c
    invoke-virtual {v0, v15}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@8f
    move-result-object v16

    #@90
    .line 301
    .local v16, "rgbaFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@92
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    #@94
    move-object/from16 v20, v0

    #@96
    move-object/from16 v0, v20

    #@98
    invoke-virtual {v0, v13, v14, v12, v11}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@9b
    .line 302
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    #@9f
    move-object/from16 v20, v0

    #@a1
    move-object/from16 v0, v20

    #@a3
    move-object/from16 v1, p6

    #@a5
    move-object/from16 v2, v16

    #@a7
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@aa
    .line 305
    move-object/from16 v0, p0

    #@ac
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@ae
    move/from16 v20, v0

    #@b0
    mul-int v20, v20, v7

    #@b2
    .line 306
    const/16 v21, 0x3

    #@b4
    .line 307
    const/16 v22, 0x3

    #@b6
    .line 305
    invoke-static/range {v19 .. v22}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@b9
    move-result-object v9

    #@ba
    .line 308
    .local v9, "intensityFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@bd
    move-result-object v20

    #@be
    move-object/from16 v0, v20

    #@c0
    invoke-virtual {v0, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@c3
    move-result-object v10

    #@c4
    .line 309
    .local v10, "intensityFrame":Landroid/filterfw/core/Frame;
    const/16 v20, 0x0

    #@c6
    aput-object v16, v8, v20

    #@c8
    .line 310
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@cc
    move-object/from16 v20, v0

    #@ce
    const/16 v21, 0x1

    #@d0
    aput-object v20, v8, v21

    #@d2
    .line 311
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@d6
    move-object/from16 v20, v0

    #@d8
    const-string/jumbo v21, "tex_offset"

    #@db
    int-to-float v0, v7

    #@dc
    move/from16 v22, v0

    #@de
    const/high16 v23, 0x3f000000    # 0.5f

    #@e0
    div-float v22, v23, v22

    #@e2
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e5
    move-result-object v22

    #@e6
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@e9
    .line 312
    move-object/from16 v0, p0

    #@eb
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@ed
    move-object/from16 v20, v0

    #@ef
    const-string/jumbo v21, "tex_scale"

    #@f2
    move-object/from16 v0, p0

    #@f4
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@f6
    move/from16 v22, v0

    #@f8
    mul-int v22, v22, v7

    #@fa
    move/from16 v0, v22

    #@fc
    int-to-float v0, v0

    #@fd
    move/from16 v22, v0

    #@ff
    const/high16 v23, 0x3f800000    # 1.0f

    #@101
    div-float v22, v23, v22

    #@103
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@106
    move-result-object v22

    #@107
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@10a
    .line 313
    move-object/from16 v0, p0

    #@10c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@10e
    move-object/from16 v20, v0

    #@110
    move-object/from16 v0, v20

    #@112
    invoke-virtual {v0, v8, v10}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@115
    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@118
    move-result-object v20

    #@119
    move-object/from16 v0, v20

    #@11b
    invoke-virtual {v0, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@11e
    move-result-object v17

    #@11f
    .line 317
    .local v17, "smoothFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@123
    move-object/from16 v20, v0

    #@125
    const-string/jumbo v21, "stepsize"

    #@128
    int-to-float v0, v7

    #@129
    move/from16 v22, v0

    #@12b
    const/high16 v23, 0x3f800000    # 1.0f

    #@12d
    div-float v22, v23, v22

    #@12f
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@132
    move-result-object v22

    #@133
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@136
    .line 318
    move-object/from16 v0, p0

    #@138
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@13a
    move-object/from16 v20, v0

    #@13c
    move-object/from16 v0, v20

    #@13e
    move-object/from16 v1, v17

    #@140
    invoke-virtual {v0, v10, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@143
    .line 320
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@147
    move-object/from16 v20, v0

    #@149
    const-string/jumbo v21, "row_offset"

    #@14c
    int-to-float v0, v7

    #@14d
    move/from16 v22, v0

    #@14f
    const/high16 v23, 0x3f000000    # 0.5f

    #@151
    div-float v22, v23, v22

    #@153
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@156
    move-result-object v22

    #@157
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@15a
    .line 321
    move-object/from16 v0, p0

    #@15c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@15e
    move-object/from16 v20, v0

    #@160
    const-string/jumbo v21, "tbl_offset"

    #@163
    move-object/from16 v0, p0

    #@165
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@167
    move/from16 v22, v0

    #@169
    mul-int v22, v22, v7

    #@16b
    move/from16 v0, v22

    #@16d
    int-to-float v0, v0

    #@16e
    move/from16 v22, v0

    #@170
    const/high16 v23, 0x3f000000    # 0.5f

    #@172
    div-float v22, v23, v22

    #@174
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@177
    move-result-object v22

    #@178
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@17b
    .line 322
    move-object/from16 v0, p0

    #@17d
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@17f
    move-object/from16 v20, v0

    #@181
    const-string/jumbo v21, "range_scale"

    #@184
    .line 323
    move-object/from16 v0, p0

    #@186
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@188
    move/from16 v22, v0

    #@18a
    move/from16 v0, v22

    #@18c
    int-to-float v0, v0

    #@18d
    move/from16 v22, v0

    #@18f
    const/high16 v23, 0x3f800000    # 1.0f

    #@191
    sub-float v22, v22, v23

    #@193
    move-object/from16 v0, p0

    #@195
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRangeSteps:I

    #@197
    move/from16 v23, v0

    #@199
    mul-int v23, v23, v7

    #@19b
    move/from16 v0, v23

    #@19d
    int-to-float v0, v0

    #@19e
    move/from16 v23, v0

    #@1a0
    div-float v22, v22, v23

    #@1a2
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1a5
    move-result-object v22

    #@1a6
    .line 322
    invoke-virtual/range {v20 .. v22}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1a9
    .line 324
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@1ad
    move-object/from16 v20, v0

    #@1af
    move-object/from16 v0, v20

    #@1b1
    invoke-virtual {v0, v13, v14, v12, v11}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@1b4
    .line 326
    const/16 v20, 0x3

    #@1b6
    move/from16 v0, v20

    #@1b8
    new-array v0, v0, [Landroid/filterfw/core/Frame;

    #@1ba
    move-object/from16 v18, v0

    #@1bc
    const/16 v20, 0x0

    #@1be
    aput-object v16, v18, v20

    #@1c0
    const/16 v20, 0x1

    #@1c2
    aput-object v17, v18, v20

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@1c8
    move-object/from16 v20, v0

    #@1ca
    const/16 v21, 0x2

    #@1cc
    aput-object v20, v18, v21

    #@1ce
    .line 327
    .local v18, "stageInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@1d2
    move-object/from16 v20, v0

    #@1d4
    move-object/from16 v0, v20

    #@1d6
    move-object/from16 v1, v18

    #@1d8
    move-object/from16 v2, p7

    #@1da
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@1dd
    .line 330
    move/from16 v0, p2

    #@1df
    int-to-float v0, v0

    #@1e0
    move/from16 v20, v0

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mWidth:I

    #@1e6
    move/from16 v21, v0

    #@1e8
    move/from16 v0, v21

    #@1ea
    int-to-float v0, v0

    #@1eb
    move/from16 v21, v0

    #@1ed
    div-float v5, v20, v21

    #@1ef
    .line 331
    .local v5, "blkX":F
    move/from16 v0, p4

    #@1f1
    int-to-float v0, v0

    #@1f2
    move/from16 v20, v0

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mHeight:I

    #@1f8
    move/from16 v21, v0

    #@1fa
    move/from16 v0, v21

    #@1fc
    int-to-float v0, v0

    #@1fd
    move/from16 v21, v0

    #@1ff
    div-float v6, v20, v21

    #@201
    .line 332
    .local v6, "blkY":F
    sub-int v20, p3, p2

    #@203
    add-int/lit8 v20, v20, 0x1

    #@205
    move/from16 v0, v20

    #@207
    int-to-float v0, v0

    #@208
    move/from16 v20, v0

    #@20a
    move-object/from16 v0, p0

    #@20c
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mWidth:I

    #@20e
    move/from16 v21, v0

    #@210
    move/from16 v0, v21

    #@212
    int-to-float v0, v0

    #@213
    move/from16 v21, v0

    #@215
    div-float v4, v20, v21

    #@217
    .line 333
    .local v4, "blkWidth":F
    sub-int v20, p5, p4

    #@219
    add-int/lit8 v20, v20, 0x1

    #@21b
    move/from16 v0, v20

    #@21d
    int-to-float v0, v0

    #@21e
    move/from16 v20, v0

    #@220
    move-object/from16 v0, p0

    #@222
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mHeight:I

    #@224
    move/from16 v21, v0

    #@226
    move/from16 v0, v21

    #@228
    int-to-float v0, v0

    #@229
    move/from16 v21, v0

    #@22b
    div-float v3, v20, v21

    #@22d
    .line 334
    .local v3, "blkHeight":F
    move-object/from16 v0, p0

    #@22f
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@231
    move-object/from16 v20, v0

    #@233
    move-object/from16 v0, v20

    #@235
    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@238
    .line 335
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@23c
    move-object/from16 v20, v0

    #@23e
    move-object/from16 v0, v20

    #@240
    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@243
    .line 336
    move-object/from16 v0, p0

    #@245
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/FaceMaskEffectFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@247
    move-object/from16 v20, v0

    #@249
    move-object/from16 v0, v20

    #@24b
    move-object/from16 v1, p7

    #@24d
    move-object/from16 v2, p8

    #@24f
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@252
    .line 339
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@255
    .line 340
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@258
    .line 341
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@25b
    .line 285
    return-void
.end method

.method private rescaleRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 10
    .param p1, "input"    # Landroid/filterfw/core/Frame;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "ratio"    # F

    #@0
    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    #@2
    .line 345
    new-instance v0, Landroid/graphics/Rect;

    #@4
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    #@7
    move-result v1

    #@8
    float-to-double v2, p3

    #@9
    mul-double/2addr v2, v8

    #@a
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@d
    move-result v4

    #@e
    int-to-double v4, v4

    #@f
    mul-double/2addr v2, v4

    #@10
    double-to-int v2, v2

    #@11
    sub-int/2addr v1, v2

    #@12
    .line 346
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    #@15
    move-result v2

    #@16
    float-to-double v4, p3

    #@17
    mul-double/2addr v4, v8

    #@18
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@1b
    move-result v3

    #@1c
    int-to-double v6, v3

    #@1d
    mul-double/2addr v4, v6

    #@1e
    double-to-int v3, v4

    #@1f
    sub-int/2addr v2, v3

    #@20
    .line 347
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    #@23
    move-result v3

    #@24
    float-to-double v4, p3

    #@25
    mul-double/2addr v4, v8

    #@26
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    #@29
    move-result v6

    #@2a
    int-to-double v6, v6

    #@2b
    mul-double/2addr v4, v6

    #@2c
    double-to-int v4, v4

    #@2d
    add-int/2addr v3, v4

    #@2e
    .line 348
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    #@31
    move-result v4

    #@32
    float-to-double v6, p3

    #@33
    mul-double/2addr v6, v8

    #@34
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    #@37
    move-result v5

    #@38
    int-to-double v8, v5

    #@39
    mul-double/2addr v6, v8

    #@3a
    double-to-int v5, v6

    #@3b
    add-int/2addr v4, v5

    #@3c
    .line 345
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@3f
    .line 349
    .local v0, "newRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->createBoundedRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@42
    move-result-object v1

    #@43
    return-object v1
.end method


# virtual methods
.method protected initPrograms(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 218
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float tbl_scale;\nuniform float tbl_offset;\nuniform float coord_offset;\nuniform float tex_offset;\nuniform float tex_scale;\nuniform float rangeSteps;\nuniform float k_scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  float k_value = mod(gl_FragCoord.y - coord_offset, rangeSteps);\n  vec2 coord;\n  coord.x = v_texcoord.x;\n  coord.y = tex_offset + tex_scale * (gl_FragCoord.y - coord_offset - k_value);\n  vec4 color = texture2D(tex_sampler_0, coord);\n  k_value *= k_scale;\n  coord.x = tbl_offset + tbl_scale * abs(k_value - color.a);\n  coord.y = 0.5;\n  vec4 weight_byte = texture2D(tex_sampler_1, coord);\n  float weight = weight_byte.g + 0.00390625 * weight_byte.r;\n  gl_FragColor = vec4(color.rgb, weight);\n}\n"

    #@5
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@a
    .line 220
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@c
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 disp;\nvarying vec2 v_texcoord;\nvoid main() {\n  const vec3 weights = vec3(0.299, 0.587, 0.114);\n  vec3 color = 2.0 * texture2D(tex_sampler_0, v_texcoord).rgb;\n  color -= 0.5 * texture2D(tex_sampler_0, (v_texcoord + vec2(0, disp.y))).rgb;\n  color -= 0.5 *texture2D(tex_sampler_0, (v_texcoord + vec2(disp.x, 0))).rgb;\n  gl_FragColor = vec4(color, dot(weights, color));\n}\n"

    #@f
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@12
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    #@14
    .line 222
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@16
    const-string/jumbo v1, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 coord = vec2(0.0, stepsize);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord + coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 2.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 4.0);\n  result += vec4(color.a * color.rgb, color.a);\n  color = texture2D(tex_sampler_0, v_texcoord - coord * 6.0);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, result.a / 6.0);\n}\n"

    #@19
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@1e
    .line 224
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@20
    const-string/jumbo v1, "precision highp float;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float byte_scale = 0.00390625;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform vec3 yuv_mean;\nuniform mat3 yuv_var;\nuniform vec3 yuv_scale;\nuniform float tanh_offset;\nuniform float tanh_scale;\nuniform float row_offset;\nuniform float tbl_offset;\nuniform float range_scale;\nuniform float stepsize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 rgba = texture2D(tex_sampler_0, v_texcoord);\n  vec4 yuv = coeff_yuv * vec4(rgba.rgb, 1.0);\n  vec3 proj = yuv_var * (yuv.xyz - yuv_mean);\n  proj = yuv_scale * proj;\n  float dist = sqrt(0.3333 * dot(proj, proj));\n  dist = min(1.0, dist * 0.2);\n  float tanh_value = tanh_offset + tanh_scale * dist;\n  vec4 weight_byte = texture2D(tex_sampler_2, vec2(tanh_value, 0.5));\n  float alpha = weight_byte.g +  byte_scale * weight_byte.r;\n  float k_value = rgba.a * range_scale;\n  vec2 coord = v_texcoord;\n  coord.y = tbl_offset + v_texcoord.y - row_offset + k_value;\n  vec4 color = texture2D(tex_sampler_1, coord);\n  vec4 result = vec4(color.a * color.rgb, color.a);\n  vec2 disp = vec2(stepsize, 0.0);\n  color =  texture2D(tex_sampler_1, coord + disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord + disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 1.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 3.5);\n  result += vec4(color.a * color.rgb, color.a);\n  color =  texture2D(tex_sampler_1, coord - disp * 5.5);\n  result += vec4(color.a * color.rgb, color.a);\n  result.rgb = result.rgb / result.a;\n  gl_FragColor = vec4(result.rgb, alpha);\n}\n"

    #@23
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@26
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@28
    .line 216
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 25
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 355
    const-string/jumbo v2, "image"

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@8
    move-result-object v15

    #@9
    .line 356
    .local v15, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v22

    #@d
    .line 359
    .local v22, "inputFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "faces"

    #@10
    move-object/from16 v0, p0

    #@12
    invoke-virtual {v0, v2}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@15
    move-result-object v20

    #@16
    .line 360
    .local v20, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@19
    move-result-object v19

    #@1a
    check-cast v19, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@1c
    .line 361
    .local v19, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@1f
    move-result v18

    #@20
    .line 363
    .local v18, "faceCount":I
    move-object/from16 v0, p0

    #@22
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@24
    if-eqz v2, :cond_0

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColorPcaProgram:Landroid/filterfw/core/NativeProgram;

    #@2a
    if-nez v2, :cond_1

    #@2c
    .line 367
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@2e
    const-string/jumbo v3, "programs are missing at process."

    #@31
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 364
    :cond_1
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    #@39
    if-eqz v2, :cond_0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mIntensityProgram:Landroid/filterfw/core/ShaderProgram;

    #@3f
    if-eqz v2, :cond_0

    #@41
    .line 365
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToRgbaProgram:Landroid/filterfw/core/ShaderProgram;

    #@45
    if-eqz v2, :cond_0

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mColumnSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@4b
    if-eqz v2, :cond_0

    #@4d
    .line 366
    move-object/from16 v0, p0

    #@4f
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@51
    if-eqz v2, :cond_0

    #@53
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@56
    move-result-object v2

    #@57
    move-object/from16 v0, v22

    #@59
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@5c
    move-result-object v4

    #@5d
    .line 372
    .local v4, "yuvFrame":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@5f
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRgbToYuvProgram:Landroid/filterfw/core/ShaderProgram;

    #@61
    invoke-virtual {v2, v15, v4}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@64
    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@67
    move-result-object v2

    #@68
    move-object/from16 v0, v22

    #@6a
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@6d
    move-result-object v16

    #@6e
    .line 377
    .local v16, "tempFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@71
    move-result-object v2

    #@72
    move-object/from16 v0, v22

    #@74
    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@77
    move-result-object v17

    #@78
    .local v17, "output":Landroid/filterfw/core/Frame;
    move-object/from16 v2, v17

    #@7a
    .line 380
    check-cast v2, Landroid/filterfw/core/GLFrame;

    #@7c
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->focus()V

    #@7f
    .line 381
    const/4 v2, 0x0

    #@80
    const/4 v3, 0x0

    #@81
    const/4 v9, 0x0

    #@82
    const/4 v10, 0x0

    #@83
    invoke-static {v2, v3, v9, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    #@86
    .line 382
    const/16 v2, 0x4000

    #@88
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    #@8b
    .line 385
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@8e
    move-result v2

    #@8f
    move-object/from16 v0, p0

    #@91
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    #@93
    if-ne v2, v3, :cond_2

    #@95
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@98
    move-result v2

    #@99
    move-object/from16 v0, p0

    #@9b
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    #@9d
    if-eq v2, v3, :cond_3

    #@9f
    .line 386
    :cond_2
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@a2
    move-result v2

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    #@a7
    .line 387
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@aa
    move-result v2

    #@ab
    move-object/from16 v0, p0

    #@ad
    iput v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    #@af
    .line 388
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->initParameters(Landroid/filterfw/core/FilterContext;)V

    #@b2
    .line 391
    :cond_3
    const/4 v2, 0x3

    #@b3
    new-array v6, v2, [F

    #@b5
    .line 392
    .local v6, "color_mean":[F
    const/4 v2, 0x3

    #@b6
    new-array v7, v2, [F

    #@b8
    .line 393
    .local v7, "eigen_values":[F
    const/16 v2, 0x9

    #@ba
    new-array v8, v2, [F

    #@bc
    .line 394
    .local v8, "eigen_vectors":[F
    new-instance v5, Landroid/graphics/Rect;

    #@be
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@c1
    .line 395
    .local v5, "faceRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    #@c3
    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    #@c5
    move/from16 v1, v18

    #@c7
    if-ge v0, v1, :cond_6

    #@c9
    .line 397
    move-object/from16 v0, p0

    #@cb
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    #@cd
    int-to-float v2, v2

    #@ce
    move-object/from16 v0, v19

    #@d0
    move/from16 v1, v21

    #@d2
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@d5
    move-result v3

    #@d6
    mul-float/2addr v2, v3

    #@d7
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@da
    move-result v2

    #@db
    iput v2, v5, Landroid/graphics/Rect;->left:I

    #@dd
    .line 398
    move-object/from16 v0, p0

    #@df
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    #@e1
    int-to-float v2, v2

    #@e2
    move-object/from16 v0, v19

    #@e4
    move/from16 v1, v21

    #@e6
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@e9
    move-result v3

    #@ea
    mul-float/2addr v2, v3

    #@eb
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@ee
    move-result v2

    #@ef
    iput v2, v5, Landroid/graphics/Rect;->top:I

    #@f1
    .line 399
    move-object/from16 v0, p0

    #@f3
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mWidth:I

    #@f5
    int-to-float v2, v2

    #@f6
    move-object/from16 v0, v19

    #@f8
    move/from16 v1, v21

    #@fa
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@fd
    move-result v3

    #@fe
    mul-float/2addr v2, v3

    #@ff
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@102
    move-result v2

    #@103
    iput v2, v5, Landroid/graphics/Rect;->right:I

    #@105
    .line 400
    move-object/from16 v0, p0

    #@107
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mHeight:I

    #@109
    int-to-float v2, v2

    #@10a
    move-object/from16 v0, v19

    #@10c
    move/from16 v1, v21

    #@10e
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@111
    move-result v3

    #@112
    mul-float/2addr v2, v3

    #@113
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@116
    move-result v2

    #@117
    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    #@119
    move-object/from16 v2, p0

    #@11b
    move-object/from16 v3, p1

    #@11d
    .line 402
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->computeFaceColorPCA(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Frame;Landroid/graphics/Rect;[F[F[F)V

    #@120
    .line 405
    move-object/from16 v0, p0

    #@122
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@124
    const-string/jumbo v3, "yuv_mean"

    #@127
    invoke-virtual {v2, v3, v6}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@12a
    .line 406
    move-object/from16 v0, p0

    #@12c
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@12e
    const-string/jumbo v3, "yuv_var"

    #@131
    invoke-virtual {v2, v3, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@134
    .line 407
    const/4 v2, 0x3

    #@135
    new-array v0, v2, [F

    #@137
    move-object/from16 v23, v0

    #@139
    const/4 v2, 0x0

    #@13a
    aget v2, v7, v2

    #@13c
    const/high16 v3, 0x3f800000    # 1.0f

    #@13e
    div-float v2, v3, v2

    #@140
    const/4 v3, 0x0

    #@141
    aput v2, v23, v3

    #@143
    .line 408
    const/4 v2, 0x1

    #@144
    aget v2, v7, v2

    #@146
    const/high16 v3, 0x3f800000    # 1.0f

    #@148
    div-float v2, v3, v2

    #@14a
    const/4 v3, 0x1

    #@14b
    aput v2, v23, v3

    #@14d
    .line 409
    const/4 v2, 0x2

    #@14e
    aget v2, v7, v2

    #@150
    const/high16 v3, 0x3f800000    # 1.0f

    #@152
    div-float v2, v3, v2

    #@154
    const/4 v3, 0x2

    #@155
    aput v2, v23, v3

    #@157
    .line 410
    .local v23, "rgb_scale":[F
    move-object/from16 v0, p0

    #@159
    iget-object v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mRowSmoothProgram:Landroid/filterfw/core/ShaderProgram;

    #@15b
    const-string/jumbo v3, "yuv_scale"

    #@15e
    move-object/from16 v0, v23

    #@160
    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@163
    .line 412
    const/high16 v2, 0x3fc00000    # 1.5f

    #@165
    move-object/from16 v0, p0

    #@167
    invoke-direct {v0, v15, v5, v2}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->rescaleRect(Landroid/filterfw/core/Frame;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    #@16a
    move-result-object v24

    #@16b
    .line 413
    .local v24, "smoothRect":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    #@16d
    iget v13, v0, Landroid/graphics/Rect;->top:I

    #@16f
    .line 414
    .local v13, "startIdx":I
    :goto_1
    move-object/from16 v0, v24

    #@171
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@173
    if-ge v13, v2, :cond_5

    #@175
    .line 415
    move-object/from16 v0, p0

    #@177
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mSliceSize:I

    #@179
    add-int/2addr v2, v13

    #@17a
    add-int/lit8 v14, v2, -0x1

    #@17c
    .line 416
    .local v14, "endIdx":I
    move-object/from16 v0, v24

    #@17e
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    #@180
    if-le v14, v2, :cond_4

    #@182
    move-object/from16 v0, v24

    #@184
    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    #@186
    .line 418
    :cond_4
    move-object/from16 v0, v24

    #@188
    iget v11, v0, Landroid/graphics/Rect;->left:I

    #@18a
    move-object/from16 v0, v24

    #@18c
    iget v12, v0, Landroid/graphics/Rect;->right:I

    #@18e
    move-object/from16 v9, p0

    #@190
    move-object/from16 v10, p1

    #@192
    invoke-direct/range {v9 .. v17}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->processOneSlice(Landroid/filterfw/core/FilterContext;IIIILandroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@195
    .line 420
    move-object/from16 v0, p0

    #@197
    iget v2, v0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mSliceSize:I

    #@199
    add-int/2addr v13, v2

    #@19a
    goto :goto_1

    #@19b
    .line 395
    .end local v14    # "endIdx":I
    :cond_5
    add-int/lit8 v21, v21, 0x1

    #@19d
    goto/16 :goto_0

    #@19f
    .line 424
    .end local v13    # "startIdx":I
    .end local v23    # "rgb_scale":[F
    .end local v24    # "smoothRect":Landroid/graphics/Rect;
    :cond_6
    const-string/jumbo v2, "image"

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    move-object/from16 v1, v17

    #@1a6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@1a9
    .line 425
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1ac
    .line 426
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1af
    .line 427
    invoke-virtual/range {v16 .. v16}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1b2
    .line 353
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 205
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 206
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@a
    .line 207
    iput-object v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@c
    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 210
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@12
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@15
    .line 211
    iput-object v1, p0, Lcom/google/android/filterpacks/facedetect/FaceliftFilter;->mTanhFrame:Landroid/filterfw/core/Frame;

    #@17
    .line 204
    :cond_1
    return-void
.end method

.class public Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "GoofyRenderFilter.java"


# static fields
.field private static final BIG_EYES:I = 0x1

.field private static final BIG_MOUTH:I = 0x2

.field private static final BIG_NOSE:I = 0x4

.field private static final NUM_EFFECTS:I = 0x6

.field private static final SMALL_EYES:I = 0x5

.field private static final SMALL_MOUTH:I = 0x3

.field private static final SQUEEZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GoofyRenderFilter"


# instance fields
.field private mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mBigEyesShader:Ljava/lang/String;

.field private mCurrentEffect:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "currentEffect"
    .end annotation
.end field

.field private mDistortionAmount:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "distortionAmount"
    .end annotation
.end field

.field private mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mGoofyShader:Ljava/lang/String;

.field private mShrinkFunc:Z

.field private mTableFrame:Landroid/filterfw/core/Frame;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 55
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    #@6
    .line 61
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mDistortionAmount:F

    #@9
    .line 76
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 center;\nuniform vec2 weight;\nuniform float dist_offset;\nuniform float dist_mult;\nuniform bool use_shrink;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 point = v_texcoord - center;\n  vec2 spoint;\n  spoint = weight * point;\n  float dist = length(spoint) * dist_mult + dist_offset;\n  vec4 scale_byte = texture2D(tex_sampler_1, vec2(dist, 0.5));\n  float scale = scale_byte.g + scale_byte.r * 0.00390625;\n  if (use_shrink) {\n    scale = 1.0 + scale;\n  } else {\n    scale = 1.0 - scale;\n  }\n  if (dist >= 1.0) { \n     scale = 1.0;\n  } \n  gl_FragColor = texture2D(tex_sampler_0, center + scale * point);\n}\n"

    #@c
    .line 75
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyShader:Ljava/lang/String;

    #@e
    .line 104
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 scale;\nuniform float dist_offset;\nuniform float dist_mult;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 left_eye_offset = (v_texcoord - left_eye); \n  float left_eye_dist = length(left_eye_offset * scale); \n  vec2 right_eye_offset = (v_texcoord - right_eye); \n  float right_eye_dist = length(right_eye_offset * scale); \n  float dist;\n  vec2 offset;\n  vec2 center;\n  if (left_eye_dist < 1.0 || right_eye_dist < 1.0){\n    float dist_left = left_eye_dist * dist_mult + dist_offset;\n    vec4 value_byte = texture2D(tex_sampler_1, vec2(dist_left, 0.5));\n    float value_left = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_left = texture2D(tex_sampler_0,\n            left_eye + (1.0 - value_left) * left_eye_offset);\n    float dist_right = right_eye_dist * dist_mult + dist_offset;\n    value_byte = texture2D(tex_sampler_1, vec2(dist_right, 0.5));\n    float value_right = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_right = texture2D(tex_sampler_0,\n            right_eye + (1.0 - value_right) * right_eye_offset);\n    float alpha = value_left / (value_left + value_right);\n    gl_FragColor = mix(color_right, color_left, alpha);\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    #@11
    .line 103
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesShader:Ljava/lang/String;

    #@13
    .line 143
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    #@16
    .line 147
    return-void
.end method

.method private createLookupTable(Landroid/filterfw/core/FilterContext;)V
    .locals 18
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 187
    const/16 v9, 0x7d0

    #@2
    .line 188
    .local v9, "tableSize":I
    const v6, 0x477fff00    # 65535.0f

    #@5
    .line 189
    .local v6, "precision":F
    const v5, 0x40490fda

    #@8
    .line 191
    .local v5, "pi":F
    const/16 v11, 0x7d0

    #@a
    new-array v2, v11, [I

    #@c
    .line 193
    .local v2, "array":[I
    const/high16 v7, 0x3f800000    # 1.0f

    #@e
    .line 194
    .local v7, "scale":F
    const/4 v4, 0x0

    #@f
    .local v4, "j":I
    :goto_0
    const/16 v11, 0x7d0

    #@11
    if-ge v4, v11, :cond_4

    #@13
    .line 195
    int-to-float v11, v4

    #@14
    const/high16 v12, 0x44fa0000    # 2000.0f

    #@16
    div-float v3, v11, v12

    #@18
    .line 196
    .local v3, "dist":F
    const/4 v10, 0x0

    #@19
    .line 197
    .local v10, "value":F
    move-object/from16 v0, p0

    #@1b
    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    #@1d
    packed-switch v11, :pswitch_data_0

    #@20
    .line 232
    :goto_1
    const v11, 0x477fff00    # 65535.0f

    #@23
    mul-float/2addr v11, v10

    #@24
    float-to-int v11, v11

    #@25
    aput v11, v2, v4

    #@27
    .line 194
    add-int/lit8 v4, v4, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 206
    :pswitch_0
    if-nez v4, :cond_0

    #@2c
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    #@2e
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    #@31
    move-result-wide v12

    #@32
    const-wide v14, 0x3fd3333340000000L    # 0.30000001192092896

    #@37
    mul-double/2addr v12, v14

    #@38
    const-wide v14, 0x3fd3333340000000L    # 0.30000001192092896

    #@3d
    mul-double/2addr v12, v14

    #@3e
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    #@41
    move-result-wide v12

    #@42
    double-to-float v7, v12

    #@43
    .line 207
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    #@45
    cmpl-float v11, v7, v11

    #@47
    if-lez v11, :cond_1

    #@49
    mul-float/2addr v3, v7

    #@4a
    .line 210
    :cond_1
    move-object/from16 v0, p0

    #@4c
    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mDistortionAmount:F

    #@4e
    const v12, 0x3f4ccccd    # 0.8f

    #@51
    mul-float/2addr v11, v12

    #@52
    .line 211
    neg-float v12, v3

    #@53
    mul-float/2addr v12, v3

    #@54
    const v13, 0x3db851ec    # 0.09f

    #@57
    div-float/2addr v12, v13

    #@58
    float-to-double v12, v12

    #@59
    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    #@5c
    move-result-wide v12

    #@5d
    double-to-float v12, v12

    #@5e
    const/high16 v13, 0x40000000    # 2.0f

    #@60
    sub-float v12, v13, v12

    #@62
    .line 212
    const/high16 v13, 0x3e800000    # 0.25f

    #@64
    add-float/2addr v13, v3

    #@65
    float-to-double v14, v13

    #@66
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    #@68
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    #@6b
    move-result-wide v14

    #@6c
    neg-double v14, v14

    #@6d
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    #@6f
    mul-double v14, v14, v16

    #@71
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    #@74
    move-result-wide v14

    #@75
    double-to-float v13, v14

    #@76
    const/high16 v14, 0x3f800000    # 1.0f

    #@78
    add-float/2addr v13, v14

    #@79
    const/high16 v14, 0x40000000    # 2.0f

    #@7b
    div-float v13, v14, v13

    #@7d
    .line 211
    sub-float/2addr v12, v13

    #@7e
    .line 210
    mul-float v10, v11, v12

    #@80
    .line 213
    const/4 v11, 0x1

    #@81
    move-object/from16 v0, p0

    #@83
    iput-boolean v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    #@85
    goto :goto_1

    #@86
    .line 224
    :pswitch_1
    if-nez v4, :cond_2

    #@88
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    #@8a
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    #@8d
    move-result-wide v12

    #@8e
    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    #@93
    mul-double/2addr v12, v14

    #@94
    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    #@99
    mul-double/2addr v12, v14

    #@9a
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    #@9d
    move-result-wide v12

    #@9e
    double-to-float v7, v12

    #@9f
    .line 225
    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    #@a1
    cmpl-float v11, v7, v11

    #@a3
    if-lez v11, :cond_3

    #@a5
    mul-float/2addr v3, v7

    #@a6
    .line 226
    :cond_3
    move-object/from16 v0, p0

    #@a8
    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mDistortionAmount:F

    #@aa
    const v12, 0x3f266666    # 0.65f

    #@ad
    mul-float/2addr v11, v12

    #@ae
    .line 227
    neg-float v12, v3

    #@af
    mul-float/2addr v12, v3

    #@b0
    const v13, 0x3efae147    # 0.48999998f

    #@b3
    div-float/2addr v12, v13

    #@b4
    float-to-double v12, v12

    #@b5
    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    #@b8
    move-result-wide v12

    #@b9
    double-to-float v12, v12

    #@ba
    .line 226
    mul-float v10, v11, v12

    #@bc
    .line 228
    const/4 v11, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    iput-boolean v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    #@c1
    goto/16 :goto_1

    #@c3
    .line 235
    .end local v3    # "dist":F
    .end local v10    # "value":F
    :cond_4
    const/16 v11, 0x7d0

    #@c5
    const/4 v12, 0x1

    #@c6
    .line 236
    const/4 v13, 0x3

    #@c7
    .line 237
    const/4 v14, 0x3

    #@c8
    .line 235
    invoke-static {v11, v12, v13, v14}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@cb
    move-result-object v8

    #@cc
    .line 238
    .local v8, "tableFormat":Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, p0

    #@ce
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@d0
    if-eqz v11, :cond_5

    #@d2
    .line 239
    move-object/from16 v0, p0

    #@d4
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@d6
    invoke-virtual {v11}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@d9
    .line 241
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@dc
    move-result-object v11

    #@dd
    invoke-virtual {v11, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@e0
    move-result-object v11

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@e5
    .line 242
    move-object/from16 v0, p0

    #@e7
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@e9
    invoke-virtual {v11, v2}, Landroid/filterfw/core/Frame;->setInts([I)V

    #@ec
    .line 244
    move-object/from16 v0, p0

    #@ee
    iget v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    #@f0
    const/4 v12, 0x1

    #@f1
    if-ne v11, v12, :cond_6

    #@f3
    .line 245
    move-object/from16 v0, p0

    #@f5
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@f7
    const-string/jumbo v12, "dist_offset"

    #@fa
    const v13, 0x3a03126f    # 5.0E-4f

    #@fd
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@100
    move-result-object v13

    #@101
    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@104
    .line 246
    move-object/from16 v0, p0

    #@106
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@108
    const-string/jumbo v12, "dist_mult"

    #@10b
    const v13, 0x3f7fdf3b    # 0.9995f

    #@10e
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@111
    move-result-object v13

    #@112
    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@115
    .line 186
    :goto_2
    return-void

    #@116
    .line 248
    :cond_6
    move-object/from16 v0, p0

    #@118
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@11a
    const-string/jumbo v12, "dist_offset"

    #@11d
    const v13, 0x3a03126f    # 5.0E-4f

    #@120
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@123
    move-result-object v13

    #@124
    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@127
    .line 249
    move-object/from16 v0, p0

    #@129
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@12b
    const-string/jumbo v12, "dist_mult"

    #@12e
    const v13, 0x3f7fdf3b    # 0.9995f

    #@131
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@134
    move-result-object v13

    #@135
    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@138
    .line 250
    move-object/from16 v0, p0

    #@13a
    iget-object v11, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@13c
    const-string/jumbo v12, "use_shrink"

    #@13f
    move-object/from16 v0, p0

    #@141
    iget-boolean v13, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mShrinkFunc:Z

    #@143
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@146
    move-result-object v13

    #@147
    invoke-virtual {v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@14a
    goto :goto_2

    #@14b
    .line 197
    nop

    #@14c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->createLookupTable(Landroid/filterfw/core/FilterContext;)V

    #@b
    .line 180
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 167
    return-object p2
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 172
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 center;\nuniform vec2 weight;\nuniform float dist_offset;\nuniform float dist_mult;\nuniform bool use_shrink;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 point = v_texcoord - center;\n  vec2 spoint;\n  spoint = weight * point;\n  float dist = length(spoint) * dist_mult + dist_offset;\n  vec4 scale_byte = texture2D(tex_sampler_1, vec2(dist, 0.5));\n  float scale = scale_byte.g + scale_byte.r * 0.00390625;\n  if (use_shrink) {\n    scale = 1.0 + scale;\n  } else {\n    scale = 1.0 - scale;\n  }\n  if (dist >= 1.0) { \n     scale = 1.0;\n  } \n  gl_FragColor = texture2D(tex_sampler_0, center + scale * point);\n}\n"

    #@5
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@a
    .line 174
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@c
    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform vec2 left_eye;\nuniform vec2 right_eye;\nuniform vec2 scale;\nuniform float dist_offset;\nuniform float dist_mult;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 left_eye_offset = (v_texcoord - left_eye); \n  float left_eye_dist = length(left_eye_offset * scale); \n  vec2 right_eye_offset = (v_texcoord - right_eye); \n  float right_eye_dist = length(right_eye_offset * scale); \n  float dist;\n  vec2 offset;\n  vec2 center;\n  if (left_eye_dist < 1.0 || right_eye_dist < 1.0){\n    float dist_left = left_eye_dist * dist_mult + dist_offset;\n    vec4 value_byte = texture2D(tex_sampler_1, vec2(dist_left, 0.5));\n    float value_left = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_left = texture2D(tex_sampler_0,\n            left_eye + (1.0 - value_left) * left_eye_offset);\n    float dist_right = right_eye_dist * dist_mult + dist_offset;\n    value_byte = texture2D(tex_sampler_1, vec2(dist_right, 0.5));\n    float value_right = (value_byte.g + value_byte.r * 0.00390625);\n    vec4 color_right = texture2D(tex_sampler_0,\n            right_eye + (1.0 - value_right) * right_eye_offset);\n    float alpha = value_left / (value_left + value_right);\n    gl_FragColor = mix(color_right, color_left, alpha);\n  } else {\n    gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n  }\n}\n"

    #@f
    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@12
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@14
    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->createLookupTable(Landroid/filterfw/core/FilterContext;)V

    #@17
    .line 171
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 42
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 258
    const-string/jumbo v37, "image"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, v37

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v20

    #@b
    .line 259
    .local v20, "input":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@e
    move-result-object v21

    #@f
    .line 261
    .local v21, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@12
    move-result v36

    #@13
    .line 262
    .local v36, "width":I
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@16
    move-result v18

    #@17
    .line 263
    .local v18, "height":I
    move/from16 v0, v36

    #@19
    move/from16 v1, v18

    #@1b
    if-le v0, v1, :cond_2

    #@1d
    .line 264
    const/16 v37, 0x2

    #@1f
    move/from16 v0, v37

    #@21
    new-array v6, v0, [F

    #@23
    const/high16 v37, 0x3f800000    # 1.0f

    #@25
    const/16 v38, 0x0

    #@27
    aput v37, v6, v38

    #@29
    move/from16 v0, v18

    #@2b
    int-to-float v0, v0

    #@2c
    move/from16 v37, v0

    #@2e
    move/from16 v0, v36

    #@30
    int-to-float v0, v0

    #@31
    move/from16 v38, v0

    #@33
    div-float v37, v37, v38

    #@35
    const/16 v38, 0x1

    #@37
    aput v37, v6, v38

    #@39
    .line 268
    .local v6, "aspectRatio":[F
    :goto_0
    const-string/jumbo v37, "faces"

    #@3c
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v1, v37

    #@40
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@43
    move-result-object v17

    #@44
    .line 269
    .local v17, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@47
    move-result-object v16

    #@48
    check-cast v16, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@4a
    .line 271
    .local v16, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/16 v37, 0x2

    #@4c
    move/from16 v0, v37

    #@4e
    new-array v11, v0, [F

    #@50
    .line 272
    .local v11, "center":[F
    const/16 v37, 0x2

    #@52
    move/from16 v0, v37

    #@54
    new-array v0, v0, [F

    #@56
    move-object/from16 v35, v0

    #@58
    .line 274
    .local v35, "weight":[F
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@5b
    move-result v14

    #@5c
    .line 275
    .local v14, "face_count":I
    if-lez v14, :cond_7

    #@5e
    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@61
    move-result-object v37

    #@62
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@65
    move-result-object v38

    #@66
    invoke-virtual/range {v37 .. v38}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@69
    move-result-object v9

    #@6a
    .line 277
    .local v9, "buf1":Landroid/filterfw/core/Frame;
    move-object/from16 v0, v20

    #@6c
    invoke-virtual {v9, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@6f
    .line 278
    const/4 v10, 0x0

    #@70
    .line 279
    .local v10, "buf2":Landroid/filterfw/core/Frame;
    const/16 v37, 0x1

    #@72
    move/from16 v0, v37

    #@74
    if-le v14, v0, :cond_0

    #@76
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@79
    move-result-object v37

    #@7a
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@7d
    move-result-object v38

    #@7e
    invoke-virtual/range {v37 .. v38}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@81
    move-result-object v10

    #@82
    .line 282
    .end local v10    # "buf2":Landroid/filterfw/core/Frame;
    :cond_0
    move-object/from16 v33, v20

    #@84
    .local v33, "source":Landroid/filterfw/core/Frame;
    move-object/from16 v27, v9

    #@86
    .line 283
    .local v27, "output":Landroid/filterfw/core/Frame;
    const/16 v19, 0x0

    #@88
    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    #@8a
    if-ge v0, v14, :cond_5

    #@8c
    .line 285
    const/16 v37, 0x1

    #@8e
    move/from16 v0, v37

    #@90
    if-le v14, v0, :cond_1

    #@92
    if-lez v19, :cond_1

    #@94
    .line 286
    rem-int/lit8 v37, v19, 0x2

    #@96
    const/16 v38, 0x1

    #@98
    move/from16 v0, v37

    #@9a
    move/from16 v1, v38

    #@9c
    if-ne v0, v1, :cond_3

    #@9e
    .line 287
    move-object/from16 v33, v9

    #@a0
    .line 288
    move-object/from16 v27, v10

    #@a2
    .line 289
    move-object/from16 v0, v33

    #@a4
    invoke-virtual {v10, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@a7
    .line 297
    :cond_1
    :goto_2
    const/16 v37, 0x2

    #@a9
    move/from16 v0, v37

    #@ab
    new-array v0, v0, [F

    #@ad
    move-object/from16 v24, v0

    #@af
    move-object/from16 v0, v16

    #@b1
    move/from16 v1, v19

    #@b3
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@b6
    move-result v37

    #@b7
    const/16 v38, 0x0

    #@b9
    aput v37, v24, v38

    #@bb
    move-object/from16 v0, v16

    #@bd
    move/from16 v1, v19

    #@bf
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@c2
    move-result v37

    #@c3
    const/16 v38, 0x1

    #@c5
    aput v37, v24, v38

    #@c7
    .line 298
    .local v24, "leftEye":[F
    const/16 v37, 0x2

    #@c9
    move/from16 v0, v37

    #@cb
    new-array v0, v0, [F

    #@cd
    move-object/from16 v31, v0

    #@cf
    move-object/from16 v0, v16

    #@d1
    move/from16 v1, v19

    #@d3
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@d6
    move-result v37

    #@d7
    const/16 v38, 0x0

    #@d9
    aput v37, v31, v38

    #@db
    move-object/from16 v0, v16

    #@dd
    move/from16 v1, v19

    #@df
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@e2
    move-result v37

    #@e3
    const/16 v38, 0x1

    #@e5
    aput v37, v31, v38

    #@e7
    .line 299
    .local v31, "rightEye":[F
    const/16 v37, 0x2

    #@e9
    move/from16 v0, v37

    #@eb
    new-array v0, v0, [F

    #@ed
    move-object/from16 v26, v0

    #@ef
    move-object/from16 v0, v16

    #@f1
    move/from16 v1, v19

    #@f3
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@f6
    move-result v37

    #@f7
    const/16 v38, 0x0

    #@f9
    aput v37, v26, v38

    #@fb
    move-object/from16 v0, v16

    #@fd
    move/from16 v1, v19

    #@ff
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@102
    move-result v37

    #@103
    const/16 v38, 0x1

    #@105
    aput v37, v26, v38

    #@107
    .line 300
    .local v26, "mouth":[F
    const/16 v37, 0x0

    #@109
    aget v37, v24, v37

    #@10b
    const/16 v38, 0x0

    #@10d
    aget v38, v31, v38

    #@10f
    sub-float v37, v37, v38

    #@111
    const/16 v38, 0x0

    #@113
    aget v38, v6, v38

    #@115
    mul-float v12, v37, v38

    #@117
    .line 301
    .local v12, "dx":F
    const/16 v37, 0x1

    #@119
    aget v37, v24, v37

    #@11b
    const/16 v38, 0x1

    #@11d
    aget v38, v31, v38

    #@11f
    sub-float v37, v37, v38

    #@121
    const/16 v38, 0x1

    #@123
    aget v38, v6, v38

    #@125
    mul-float v13, v37, v38

    #@127
    .line 302
    .local v13, "dy":F
    mul-float v37, v12, v12

    #@129
    mul-float v38, v13, v13

    #@12b
    add-float v37, v37, v38

    #@12d
    move/from16 v0, v37

    #@12f
    float-to-double v0, v0

    #@130
    move-wide/from16 v38, v0

    #@132
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    #@135
    move-result-wide v38

    #@136
    move-wide/from16 v0, v38

    #@138
    double-to-float v7, v0

    #@139
    .line 304
    .local v7, "baseline":F
    const/high16 v15, 0x3f800000    # 1.0f

    #@13b
    .line 306
    .local v15, "face_size":F
    move-object/from16 v0, p0

    #@13d
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    #@13f
    move/from16 v37, v0

    #@141
    const/16 v38, 0x1

    #@143
    move/from16 v0, v37

    #@145
    move/from16 v1, v38

    #@147
    if-ne v0, v1, :cond_4

    #@149
    .line 307
    move v15, v7

    #@14a
    .line 309
    move/from16 v25, v15

    #@14c
    .line 311
    .local v25, "length":F
    const/16 v37, 0x1

    #@14e
    aget v37, v24, v37

    #@150
    sub-float v37, v37, v25

    #@152
    const/16 v38, 0x1

    #@154
    aget v38, v31, v38

    #@156
    sub-float v38, v38, v25

    #@158
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    #@15b
    move-result v34

    #@15c
    .line 312
    .local v34, "top":F
    const/16 v37, 0x0

    #@15e
    aget v37, v24, v37

    #@160
    sub-float v37, v37, v25

    #@162
    const/16 v38, 0x0

    #@164
    aget v38, v31, v38

    #@166
    sub-float v38, v38, v25

    #@168
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->min(FF)F

    #@16b
    move-result v23

    #@16c
    .line 314
    .local v23, "left":F
    const/16 v37, 0x1

    #@16e
    aget v37, v24, v37

    #@170
    add-float v37, v37, v25

    #@172
    const/16 v38, 0x1

    #@174
    aget v38, v31, v38

    #@176
    add-float v38, v38, v25

    #@178
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    #@17b
    move-result v8

    #@17c
    .line 315
    .local v8, "bottom":F
    const/16 v37, 0x0

    #@17e
    aget v37, v24, v37

    #@180
    add-float v37, v37, v25

    #@182
    const/16 v38, 0x0

    #@184
    aget v38, v31, v38

    #@186
    add-float v38, v38, v25

    #@188
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(FF)F

    #@18b
    move-result v30

    #@18c
    .line 317
    .local v30, "right":F
    new-instance v28, Landroid/filterfw/geometry/Rectangle;

    #@18e
    sub-float v37, v30, v23

    #@190
    sub-float v38, v8, v34

    #@192
    move-object/from16 v0, v28

    #@194
    move/from16 v1, v23

    #@196
    move/from16 v2, v34

    #@198
    move/from16 v3, v37

    #@19a
    move/from16 v4, v38

    #@19c
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@19f
    .line 318
    .local v28, "rect":Landroid/filterfw/geometry/Rectangle;
    const/16 v37, 0x0

    #@1a1
    const/16 v38, 0x0

    #@1a3
    move-object/from16 v0, v28

    #@1a5
    move/from16 v1, v37

    #@1a7
    move/from16 v2, v38

    #@1a9
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@1ac
    move-result-object v29

    #@1ad
    .line 320
    .local v29, "region":Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@1b1
    move-object/from16 v37, v0

    #@1b3
    const-string/jumbo v38, "left_eye"

    #@1b6
    move-object/from16 v0, v37

    #@1b8
    move-object/from16 v1, v38

    #@1ba
    move-object/from16 v2, v24

    #@1bc
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1bf
    .line 321
    move-object/from16 v0, p0

    #@1c1
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@1c3
    move-object/from16 v37, v0

    #@1c5
    const-string/jumbo v38, "right_eye"

    #@1c8
    move-object/from16 v0, v37

    #@1ca
    move-object/from16 v1, v38

    #@1cc
    move-object/from16 v2, v31

    #@1ce
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1d1
    .line 322
    const/16 v37, 0x2

    #@1d3
    move/from16 v0, v37

    #@1d5
    new-array v0, v0, [F

    #@1d7
    move-object/from16 v32, v0

    #@1d9
    const/16 v37, 0x0

    #@1db
    aget v37, v6, v37

    #@1dd
    div-float v37, v37, v15

    #@1df
    const/16 v38, 0x0

    #@1e1
    aput v37, v32, v38

    #@1e3
    const/16 v37, 0x1

    #@1e5
    aget v37, v6, v37

    #@1e7
    div-float v37, v37, v15

    #@1e9
    const/16 v38, 0x1

    #@1eb
    aput v37, v32, v38

    #@1ed
    .line 323
    .local v32, "scales":[F
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@1f1
    move-object/from16 v37, v0

    #@1f3
    const-string/jumbo v38, "scale"

    #@1f6
    move-object/from16 v0, v37

    #@1f8
    move-object/from16 v1, v38

    #@1fa
    move-object/from16 v2, v32

    #@1fc
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1ff
    .line 325
    move-object/from16 v0, p0

    #@201
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@203
    move-object/from16 v37, v0

    #@205
    move-object/from16 v0, v37

    #@207
    move-object/from16 v1, v29

    #@209
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@20c
    .line 326
    move-object/from16 v0, p0

    #@20e
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@210
    move-object/from16 v37, v0

    #@212
    move-object/from16 v0, v37

    #@214
    move-object/from16 v1, v29

    #@216
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@219
    .line 329
    const/16 v37, 0x2

    #@21b
    move/from16 v0, v37

    #@21d
    new-array v0, v0, [Landroid/filterfw/core/Frame;

    #@21f
    move-object/from16 v22, v0

    #@221
    const/16 v37, 0x0

    #@223
    aput-object v33, v22, v37

    #@225
    move-object/from16 v0, p0

    #@227
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@229
    move-object/from16 v37, v0

    #@22b
    const/16 v38, 0x1

    #@22d
    aput-object v37, v22, v38

    #@22f
    .line 330
    .local v22, "inputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@231
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@233
    move-object/from16 v37, v0

    #@235
    move-object/from16 v0, v37

    #@237
    move-object/from16 v1, v22

    #@239
    move-object/from16 v2, v27

    #@23b
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@23e
    .line 283
    .end local v8    # "bottom":F
    .end local v23    # "left":F
    .end local v25    # "length":F
    .end local v30    # "right":F
    .end local v32    # "scales":[F
    .end local v34    # "top":F
    :goto_3
    add-int/lit8 v19, v19, 0x1

    #@240
    goto/16 :goto_1

    #@242
    .line 266
    .end local v6    # "aspectRatio":[F
    .end local v7    # "baseline":F
    .end local v9    # "buf1":Landroid/filterfw/core/Frame;
    .end local v11    # "center":[F
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    .end local v14    # "face_count":I
    .end local v15    # "face_size":F
    .end local v16    # "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .end local v17    # "facesFrame":Landroid/filterfw/core/Frame;
    .end local v19    # "i":I
    .end local v22    # "inputs":[Landroid/filterfw/core/Frame;
    .end local v24    # "leftEye":[F
    .end local v26    # "mouth":[F
    .end local v27    # "output":Landroid/filterfw/core/Frame;
    .end local v28    # "rect":Landroid/filterfw/geometry/Rectangle;
    .end local v29    # "region":Landroid/filterfw/geometry/Quad;
    .end local v31    # "rightEye":[F
    .end local v33    # "source":Landroid/filterfw/core/Frame;
    .end local v35    # "weight":[F
    :cond_2
    const/16 v37, 0x2

    #@244
    move/from16 v0, v37

    #@246
    new-array v6, v0, [F

    #@248
    move/from16 v0, v36

    #@24a
    int-to-float v0, v0

    #@24b
    move/from16 v37, v0

    #@24d
    move/from16 v0, v18

    #@24f
    int-to-float v0, v0

    #@250
    move/from16 v38, v0

    #@252
    div-float v37, v37, v38

    #@254
    const/16 v38, 0x0

    #@256
    aput v37, v6, v38

    #@258
    const/high16 v37, 0x3f800000    # 1.0f

    #@25a
    const/16 v38, 0x1

    #@25c
    aput v37, v6, v38

    #@25e
    .restart local v6    # "aspectRatio":[F
    goto/16 :goto_0

    #@260
    .line 291
    .restart local v9    # "buf1":Landroid/filterfw/core/Frame;
    .restart local v11    # "center":[F
    .restart local v14    # "face_count":I
    .restart local v16    # "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .restart local v17    # "facesFrame":Landroid/filterfw/core/Frame;
    .restart local v19    # "i":I
    .restart local v27    # "output":Landroid/filterfw/core/Frame;
    .restart local v33    # "source":Landroid/filterfw/core/Frame;
    .restart local v35    # "weight":[F
    :cond_3
    move-object/from16 v33, v10

    #@262
    .line 292
    move-object/from16 v27, v9

    #@264
    .line 293
    move-object/from16 v0, v33

    #@266
    invoke-virtual {v9, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@269
    goto/16 :goto_2

    #@26b
    .line 333
    .restart local v7    # "baseline":F
    .restart local v12    # "dx":F
    .restart local v13    # "dy":F
    .restart local v15    # "face_size":F
    .restart local v24    # "leftEye":[F
    .restart local v26    # "mouth":[F
    .restart local v31    # "rightEye":[F
    :cond_4
    const/high16 v37, 0x3f800000    # 1.0f

    #@26d
    const/16 v38, 0x0

    #@26f
    aput v37, v35, v38

    #@271
    .line 334
    const/high16 v37, 0x3f800000    # 1.0f

    #@273
    const/16 v38, 0x1

    #@275
    aput v37, v35, v38

    #@277
    .line 336
    move-object/from16 v0, p0

    #@279
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    #@27b
    move/from16 v37, v0

    #@27d
    packed-switch v37, :pswitch_data_0

    #@280
    .line 371
    :pswitch_0
    new-instance v37, Ljava/lang/RuntimeException;

    #@282
    new-instance v38, Ljava/lang/StringBuilder;

    #@284
    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    #@287
    const-string/jumbo v39, "Undefined effect: "

    #@28a
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v38

    #@28e
    move-object/from16 v0, p0

    #@290
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mCurrentEffect:I

    #@292
    move/from16 v39, v0

    #@294
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@297
    move-result-object v38

    #@298
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29b
    move-result-object v38

    #@29c
    invoke-direct/range {v37 .. v38}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@29f
    throw v37

    #@2a0
    .line 338
    :pswitch_1
    const v37, 0x3f4ccccd    # 0.8f

    #@2a3
    mul-float v15, v37, v7

    #@2a5
    .line 340
    const/16 v37, 0x0

    #@2a7
    aget v37, v24, v37

    #@2a9
    const/high16 v38, 0x3f000000    # 0.5f

    #@2ab
    mul-float v37, v37, v38

    #@2ad
    const/16 v38, 0x0

    #@2af
    aget v38, v31, v38

    #@2b1
    const/high16 v39, 0x3f000000    # 0.5f

    #@2b3
    mul-float v38, v38, v39

    #@2b5
    add-float v37, v37, v38

    #@2b7
    const/16 v38, 0x0

    #@2b9
    aget v38, v26, v38

    #@2bb
    const v39, 0x38d1b717    # 1.0E-4f

    #@2be
    mul-float v38, v38, v39

    #@2c0
    add-float v37, v37, v38

    #@2c2
    const/16 v38, 0x0

    #@2c4
    aput v37, v11, v38

    #@2c6
    .line 341
    const/16 v37, 0x1

    #@2c8
    aget v37, v24, v37

    #@2ca
    const/high16 v38, 0x3f000000    # 0.5f

    #@2cc
    mul-float v37, v37, v38

    #@2ce
    const/16 v38, 0x1

    #@2d0
    aget v38, v31, v38

    #@2d2
    const/high16 v39, 0x3f000000    # 0.5f

    #@2d4
    mul-float v38, v38, v39

    #@2d6
    add-float v37, v37, v38

    #@2d8
    const/16 v38, 0x1

    #@2da
    aget v38, v26, v38

    #@2dc
    const v39, 0x38d1b717    # 1.0E-4f

    #@2df
    mul-float v38, v38, v39

    #@2e1
    add-float v37, v37, v38

    #@2e3
    const/16 v38, 0x1

    #@2e5
    aput v37, v11, v38

    #@2e7
    .line 343
    const-wide v38, 0x3ff3333333333333L    # 1.2

    #@2ec
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    #@2ef
    move-result-wide v38

    #@2f0
    move-wide/from16 v0, v38

    #@2f2
    double-to-float v0, v0

    #@2f3
    move/from16 v37, v0

    #@2f5
    const/16 v38, 0x0

    #@2f7
    aput v37, v35, v38

    #@2f9
    .line 344
    const-wide v38, 0x3ff3333333333333L    # 1.2

    #@2fe
    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    #@301
    move-result-wide v38

    #@302
    move-wide/from16 v0, v38

    #@304
    double-to-float v0, v0

    #@305
    move/from16 v37, v0

    #@307
    const/16 v38, 0x1

    #@309
    aput v37, v35, v38

    #@30b
    .line 374
    :goto_4
    const/16 v37, 0x0

    #@30d
    aget v38, v35, v37

    #@30f
    div-float v38, v38, v15

    #@311
    aput v38, v35, v37

    #@313
    .line 375
    const/16 v37, 0x1

    #@315
    aget v38, v35, v37

    #@317
    div-float v38, v38, v15

    #@319
    aput v38, v35, v37

    #@31b
    .line 376
    const/16 v37, 0x0

    #@31d
    aget v38, v35, v37

    #@31f
    const/16 v39, 0x0

    #@321
    aget v39, v6, v39

    #@323
    mul-float v38, v38, v39

    #@325
    aput v38, v35, v37

    #@327
    .line 377
    const/16 v37, 0x1

    #@329
    aget v38, v35, v37

    #@32b
    const/16 v39, 0x1

    #@32d
    aget v39, v6, v39

    #@32f
    mul-float v38, v38, v39

    #@331
    aput v38, v35, v37

    #@333
    .line 379
    new-instance v28, Landroid/filterfw/geometry/Rectangle;

    #@335
    .line 380
    const/16 v37, 0x0

    #@337
    aget v37, v35, v37

    #@339
    const/high16 v38, -0x40800000    # -1.0f

    #@33b
    div-float v37, v38, v37

    #@33d
    const/16 v38, 0x1

    #@33f
    aget v38, v35, v38

    #@341
    const/high16 v39, -0x40800000    # -1.0f

    #@343
    div-float v38, v39, v38

    #@345
    const/16 v39, 0x0

    #@347
    aget v39, v35, v39

    #@349
    const/high16 v40, 0x40000000    # 2.0f

    #@34b
    div-float v39, v40, v39

    #@34d
    const/16 v40, 0x1

    #@34f
    aget v40, v35, v40

    #@351
    const/high16 v41, 0x40000000    # 2.0f

    #@353
    div-float v40, v41, v40

    #@355
    .line 379
    move-object/from16 v0, v28

    #@357
    move/from16 v1, v37

    #@359
    move/from16 v2, v38

    #@35b
    move/from16 v3, v39

    #@35d
    move/from16 v4, v40

    #@35f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@362
    .line 382
    .restart local v28    # "rect":Landroid/filterfw/geometry/Rectangle;
    const/16 v37, 0x0

    #@364
    aget v37, v11, v37

    #@366
    const/16 v38, 0x1

    #@368
    aget v38, v11, v38

    #@36a
    move-object/from16 v0, v28

    #@36c
    move/from16 v1, v37

    #@36e
    move/from16 v2, v38

    #@370
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@373
    move-result-object v29

    #@374
    .line 385
    .restart local v29    # "region":Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    #@376
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@378
    move-object/from16 v37, v0

    #@37a
    const-string/jumbo v38, "center"

    #@37d
    move-object/from16 v0, v37

    #@37f
    move-object/from16 v1, v38

    #@381
    invoke-virtual {v0, v1, v11}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@384
    .line 386
    move-object/from16 v0, p0

    #@386
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@388
    move-object/from16 v37, v0

    #@38a
    const-string/jumbo v38, "weight"

    #@38d
    move-object/from16 v0, v37

    #@38f
    move-object/from16 v1, v38

    #@391
    move-object/from16 v2, v35

    #@393
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@396
    .line 388
    move-object/from16 v0, p0

    #@398
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@39a
    move-object/from16 v37, v0

    #@39c
    move-object/from16 v0, v37

    #@39e
    move-object/from16 v1, v29

    #@3a0
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@3a3
    .line 389
    move-object/from16 v0, p0

    #@3a5
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@3a7
    move-object/from16 v37, v0

    #@3a9
    move-object/from16 v0, v37

    #@3ab
    move-object/from16 v1, v29

    #@3ad
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@3b0
    .line 392
    const/16 v37, 0x2

    #@3b2
    move/from16 v0, v37

    #@3b4
    new-array v0, v0, [Landroid/filterfw/core/Frame;

    #@3b6
    move-object/from16 v22, v0

    #@3b8
    const/16 v37, 0x0

    #@3ba
    aput-object v33, v22, v37

    #@3bc
    move-object/from16 v0, p0

    #@3be
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mTableFrame:Landroid/filterfw/core/Frame;

    #@3c0
    move-object/from16 v37, v0

    #@3c2
    const/16 v38, 0x1

    #@3c4
    aput-object v37, v22, v38

    #@3c6
    .line 393
    .restart local v22    # "inputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@3c8
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->mGoofyProgram:Landroid/filterfw/core/ShaderProgram;

    #@3ca
    move-object/from16 v37, v0

    #@3cc
    move-object/from16 v0, v37

    #@3ce
    move-object/from16 v1, v22

    #@3d0
    move-object/from16 v2, v27

    #@3d2
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@3d5
    goto/16 :goto_3

    #@3d7
    .line 348
    .end local v22    # "inputs":[Landroid/filterfw/core/Frame;
    .end local v28    # "rect":Landroid/filterfw/geometry/Rectangle;
    .end local v29    # "region":Landroid/filterfw/geometry/Quad;
    :pswitch_2
    const/high16 v37, 0x3f000000    # 0.5f

    #@3d9
    mul-float v15, v37, v7

    #@3db
    .line 349
    const/16 v37, 0x0

    #@3dd
    aget v37, v26, v37

    #@3df
    const/16 v38, 0x0

    #@3e1
    aput v37, v11, v38

    #@3e3
    .line 350
    const/16 v37, 0x1

    #@3e5
    aget v37, v26, v37

    #@3e7
    const/16 v38, 0x1

    #@3e9
    aput v37, v11, v38

    #@3eb
    goto/16 :goto_4

    #@3ed
    .line 354
    :pswitch_3
    const/high16 v37, 0x40200000    # 2.5f

    #@3ef
    mul-float v15, v37, v7

    #@3f1
    .line 355
    const/16 v37, 0x0

    #@3f3
    aget v37, v26, v37

    #@3f5
    const/16 v38, 0x0

    #@3f7
    aput v37, v11, v38

    #@3f9
    .line 356
    const/16 v37, 0x1

    #@3fb
    aget v37, v26, v37

    #@3fd
    const/16 v38, 0x1

    #@3ff
    aput v37, v11, v38

    #@401
    goto/16 :goto_4

    #@403
    .line 360
    :pswitch_4
    const v37, 0x3f8ccccd    # 1.1f

    #@406
    mul-float v15, v37, v7

    #@408
    .line 361
    const/16 v37, 0x0

    #@40a
    aget v37, v24, v37

    #@40c
    const/high16 v38, 0x3e800000    # 0.25f

    #@40e
    mul-float v37, v37, v38

    #@410
    const/16 v38, 0x0

    #@412
    aget v38, v31, v38

    #@414
    const/high16 v39, 0x3e800000    # 0.25f

    #@416
    mul-float v38, v38, v39

    #@418
    add-float v37, v37, v38

    #@41a
    const/16 v38, 0x0

    #@41c
    aget v38, v26, v38

    #@41e
    const/high16 v39, 0x3f000000    # 0.5f

    #@420
    mul-float v38, v38, v39

    #@422
    add-float v37, v37, v38

    #@424
    const/16 v38, 0x0

    #@426
    aput v37, v11, v38

    #@428
    .line 362
    const/16 v37, 0x1

    #@42a
    aget v37, v24, v37

    #@42c
    const/high16 v38, 0x3e800000    # 0.25f

    #@42e
    mul-float v37, v37, v38

    #@430
    const/16 v38, 0x1

    #@432
    aget v38, v31, v38

    #@434
    const/high16 v39, 0x3e800000    # 0.25f

    #@436
    mul-float v38, v38, v39

    #@438
    add-float v37, v37, v38

    #@43a
    const/16 v38, 0x1

    #@43c
    aget v38, v26, v38

    #@43e
    const/high16 v39, 0x3f000000    # 0.5f

    #@440
    mul-float v38, v38, v39

    #@442
    add-float v37, v37, v38

    #@444
    const/16 v38, 0x1

    #@446
    aput v37, v11, v38

    #@448
    goto/16 :goto_4

    #@44a
    .line 366
    :pswitch_5
    const v37, 0x3f4ccccd    # 0.8f

    #@44d
    mul-float v15, v37, v7

    #@44f
    .line 367
    const/16 v37, 0x0

    #@451
    aget v37, v24, v37

    #@453
    const/high16 v38, 0x3e800000    # 0.25f

    #@455
    mul-float v37, v37, v38

    #@457
    const/16 v38, 0x0

    #@459
    aget v38, v31, v38

    #@45b
    const/high16 v39, 0x3e800000    # 0.25f

    #@45d
    mul-float v38, v38, v39

    #@45f
    add-float v37, v37, v38

    #@461
    const/16 v38, 0x0

    #@463
    aget v38, v26, v38

    #@465
    const/high16 v39, 0x3f000000    # 0.5f

    #@467
    mul-float v38, v38, v39

    #@469
    add-float v37, v37, v38

    #@46b
    const/16 v38, 0x0

    #@46d
    aput v37, v11, v38

    #@46f
    .line 368
    const/16 v37, 0x1

    #@471
    aget v37, v24, v37

    #@473
    const/high16 v38, 0x3e800000    # 0.25f

    #@475
    mul-float v37, v37, v38

    #@477
    const/16 v38, 0x1

    #@479
    aget v38, v31, v38

    #@47b
    const/high16 v39, 0x3e800000    # 0.25f

    #@47d
    mul-float v38, v38, v39

    #@47f
    add-float v37, v37, v38

    #@481
    const/16 v38, 0x1

    #@483
    aget v38, v26, v38

    #@485
    const/high16 v39, 0x3f000000    # 0.5f

    #@487
    mul-float v38, v38, v39

    #@489
    add-float v37, v37, v38

    #@48b
    const/16 v38, 0x1

    #@48d
    aput v37, v11, v38

    #@48f
    goto/16 :goto_4

    #@491
    .line 396
    .end local v7    # "baseline":F
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    .end local v15    # "face_size":F
    .end local v24    # "leftEye":[F
    .end local v26    # "mouth":[F
    .end local v31    # "rightEye":[F
    :cond_5
    const-string/jumbo v37, "outimage"

    #@494
    move-object/from16 v0, p0

    #@496
    move-object/from16 v1, v37

    #@498
    move-object/from16 v2, v27

    #@49a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@49d
    .line 397
    invoke-virtual {v9}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@4a0
    .line 398
    if-eqz v10, :cond_6

    #@4a2
    .line 399
    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@4a5
    .line 255
    .end local v9    # "buf1":Landroid/filterfw/core/Frame;
    .end local v19    # "i":I
    .end local v27    # "output":Landroid/filterfw/core/Frame;
    .end local v33    # "source":Landroid/filterfw/core/Frame;
    :cond_6
    :goto_5
    return-void

    #@4a6
    .line 401
    :cond_7
    const-string/jumbo v37, "outimage"

    #@4a9
    move-object/from16 v0, p0

    #@4ab
    move-object/from16 v1, v37

    #@4ad
    move-object/from16 v2, v20

    #@4af
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@4b2
    goto :goto_5

    #@4b3
    .line 336
    nop

    #@4b4
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public setupPorts()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 154
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v1

    #@5
    .line 156
    .local v1, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@7
    .line 157
    const/4 v3, 0x2

    #@8
    .line 156
    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 160
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "image"

    #@f
    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@12
    .line 161
    const-string/jumbo v2, "faces"

    #@15
    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 162
    const-string/jumbo v2, "outimage"

    #@1b
    const-string/jumbo v3, "image"

    #@1e
    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/GoofyRenderFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 152
    return-void
.end method

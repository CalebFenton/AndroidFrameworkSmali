.class public Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "GoofyFastRenderFilter.java"


# static fields
.field private static final BIG_EYES:I = 0x1

.field private static final BIG_MOUTH:I = 0x2

.field private static final BIG_NOSE:I = 0x4

.field private static final NUM_EFFECTS:I = 0x6

.field private static final SMALL_EYES:I = 0x5

.field private static final SMALL_MOUTH:I = 0x3

.field private static final SQUEEZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GoofyFastRenderFilter"


# instance fields
.field private mAnimateCurrent:F

.field private mAnimationStartTimeStamp:J

.field private mAspect:[F

.field private mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

.field private mCurrentEffect:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "currentEffect"
    .end annotation
.end field

.field private mCurrentTimeStamp:J

.field private mDistortionAmount:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "distortionAmount"
    .end annotation
.end field

.field private final mDistortionVertexShader:Ljava/lang/String;

.field private final mDistortionVertexShader2:Ljava/lang/String;

.field private mEnableAnimation:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "enableAnimation"
    .end annotation
.end field

.field private mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mIdentityShader:Ljava/lang/String;

.field private mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

.field private mPureIdentityProgram:Landroid/filterfw/core/ShaderProgram;

.field private mSmoothness:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "smoothness"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 150
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 58
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@7
    .line 64
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@9
    .line 71
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mEnableAnimation:Z

    #@c
    .line 79
    const v0, 0x3e99999a    # 0.3f

    #@f
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mSmoothness:F

    #@11
    .line 92
    iput v1, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@13
    .line 95
    const/4 v0, 0x2

    #@14
    new-array v0, v0, [F

    #@16
    fill-array-data v0, :array_0

    #@19
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@1b
    .line 98
    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@1e
    .line 97
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityShader:Ljava/lang/String;

    #@20
    .line 106
    const-string/jumbo v0, "uniform vec2 center;\nuniform vec2 weight;\nuniform mat2 rotate;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * positions.xy) * weight *2.0 +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  vec2 p = (1.0 + texcoords * amount) * positions.xy;\n  v_texcoord = (rotate * p) * weight  + center;\n}\n"

    #@23
    .line 105
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionVertexShader:Ljava/lang/String;

    #@25
    .line 124
    const-string/jumbo v0, "uniform vec2 center;\nuniform mat2 rotate;\nuniform vec2 weight;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * (positions.xy * vec2(3.0, 2.0))) * weight +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  float x = (1.0 + amount * texcoords.x) * positions.x + amount * texcoords.y;\n  float y = positions.y * (1.0 + texcoords.x * amount);\n  vec2 p = vec2(x,y);\n  v_texcoord = (rotate * (p * vec2(3.0,2.0))) * weight * 0.5 + center;\n}\n"

    #@28
    .line 123
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionVertexShader2:Ljava/lang/String;

    #@2a
    .line 149
    return-void

    #@2b
    .line 95
    nop

    #@2c
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createMesh(Landroid/filterfw/core/FilterContext;)V
    .locals 32
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 282
    move-object/from16 v0, p0

    #@2
    iget v12, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@4
    .line 283
    .local v12, "amount":F
    move-object/from16 v0, p0

    #@6
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mSmoothness:F

    #@8
    const/high16 v4, 0x42c80000    # 100.0f

    #@a
    mul-float/2addr v3, v4

    #@b
    float-to-int v0, v3

    #@c
    move/from16 v20, v0

    #@e
    .line 284
    .local v20, "nrows":I
    move-object/from16 v0, p0

    #@10
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mSmoothness:F

    #@12
    const/high16 v4, 0x42c80000    # 100.0f

    #@14
    mul-float/2addr v3, v4

    #@15
    float-to-int v0, v3

    #@16
    move/from16 v19, v0

    #@18
    .line 286
    .local v19, "ncols":I
    const/4 v11, 0x4

    #@19
    .line 287
    .local v11, "FLOAT_SIZE":I
    const/16 v18, 0x6

    #@1b
    .line 288
    .local v18, "kNumVerticesPerGrid":I
    const/16 v17, 0x4

    #@1d
    .line 290
    .local v17, "kNumValuesPerVertex":I
    mul-int v3, v20, v19

    #@1f
    mul-int/lit8 v3, v3, 0x6

    #@21
    mul-int/lit8 v21, v3, 0x4

    #@23
    .line 291
    .local v21, "num_floats":I
    move/from16 v0, v21

    #@25
    new-array v0, v0, [F

    #@27
    move-object/from16 v23, v0

    #@29
    .line 292
    .local v23, "positions":[F
    const/4 v14, 0x0

    #@2a
    .local v14, "i":I
    :goto_0
    move/from16 v0, v20

    #@2c
    if-ge v14, v0, :cond_2

    #@2e
    .line 293
    const/4 v15, 0x0

    #@2f
    .local v15, "j":I
    :goto_1
    move/from16 v0, v19

    #@31
    if-ge v15, v0, :cond_1

    #@33
    .line 294
    mul-int v3, v14, v19

    #@35
    add-int/2addr v3, v15

    #@36
    mul-int/lit8 v3, v3, 0x6

    #@38
    mul-int/lit8 v22, v3, 0x4

    #@3a
    .line 296
    .local v22, "p":I
    int-to-float v3, v15

    #@3b
    move/from16 v0, v19

    #@3d
    int-to-float v4, v0

    #@3e
    div-float v27, v3, v4

    #@40
    .line 297
    .local v27, "x0":F
    int-to-float v3, v14

    #@41
    move/from16 v0, v20

    #@43
    int-to-float v4, v0

    #@44
    div-float v30, v3, v4

    #@46
    .line 298
    .local v30, "y0":F
    add-int/lit8 v3, v15, 0x1

    #@48
    int-to-float v3, v3

    #@49
    move/from16 v0, v19

    #@4b
    int-to-float v4, v0

    #@4c
    div-float v28, v3, v4

    #@4e
    .line 299
    .local v28, "x1":F
    add-int/lit8 v3, v14, 0x1

    #@50
    int-to-float v3, v3

    #@51
    move/from16 v0, v20

    #@53
    int-to-float v4, v0

    #@54
    div-float v31, v3, v4

    #@56
    .line 300
    .local v31, "y1":F
    const/16 v16, 0x0

    #@58
    .local v16, "k":I
    :goto_2
    const/4 v3, 0x6

    #@59
    move/from16 v0, v16

    #@5b
    if-ge v0, v3, :cond_0

    #@5d
    .line 301
    const/16 v26, 0x0

    #@5f
    .line 302
    .local v26, "x":F
    const/16 v29, 0x0

    #@61
    .line 303
    .local v29, "y":F
    packed-switch v16, :pswitch_data_0

    #@64
    .line 323
    :goto_3
    const/high16 v3, 0x3f000000    # 0.5f

    #@66
    sub-float v3, v26, v3

    #@68
    const/high16 v4, 0x40000000    # 2.0f

    #@6a
    mul-float v26, v3, v4

    #@6c
    .line 324
    const/high16 v3, 0x3f000000    # 0.5f

    #@6e
    sub-float v3, v29, v3

    #@70
    const/high16 v4, 0x40000000    # 2.0f

    #@72
    mul-float v29, v3, v4

    #@74
    .line 325
    mul-int/lit8 v3, v16, 0x4

    #@76
    add-int v3, v3, v22

    #@78
    aput v26, v23, v3

    #@7a
    .line 326
    mul-int/lit8 v3, v16, 0x4

    #@7c
    add-int v3, v3, v22

    #@7e
    add-int/lit8 v3, v3, 0x1

    #@80
    aput v29, v23, v3

    #@82
    .line 327
    move-object/from16 v0, p0

    #@84
    move/from16 v1, v26

    #@86
    move/from16 v2, v29

    #@88
    invoke-direct {v0, v1, v2, v12}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getTexturePosition(FFF)[F

    #@8b
    move-result-object v24

    #@8c
    .line 328
    .local v24, "texture_pos":[F
    mul-int/lit8 v3, v16, 0x4

    #@8e
    add-int v3, v3, v22

    #@90
    add-int/lit8 v3, v3, 0x2

    #@92
    const/4 v4, 0x0

    #@93
    aget v4, v24, v4

    #@95
    aput v4, v23, v3

    #@97
    .line 329
    mul-int/lit8 v3, v16, 0x4

    #@99
    add-int v3, v3, v22

    #@9b
    add-int/lit8 v3, v3, 0x3

    #@9d
    const/4 v4, 0x1

    #@9e
    aget v4, v24, v4

    #@a0
    aput v4, v23, v3

    #@a2
    .line 300
    add-int/lit8 v16, v16, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 305
    .end local v24    # "texture_pos":[F
    :pswitch_0
    move/from16 v26, v27

    #@a7
    .line 306
    move/from16 v29, v30

    #@a9
    .line 307
    goto :goto_3

    #@aa
    .line 310
    :pswitch_1
    move/from16 v26, v27

    #@ac
    .line 311
    move/from16 v29, v31

    #@ae
    .line 312
    goto :goto_3

    #@af
    .line 315
    :pswitch_2
    move/from16 v26, v28

    #@b1
    .line 316
    move/from16 v29, v30

    #@b3
    .line 317
    goto :goto_3

    #@b4
    .line 319
    :pswitch_3
    move/from16 v26, v28

    #@b6
    .line 320
    move/from16 v29, v31

    #@b8
    .line 321
    goto :goto_3

    #@b9
    .line 293
    .end local v26    # "x":F
    .end local v29    # "y":F
    :cond_0
    add-int/lit8 v15, v15, 0x1

    #@bb
    goto/16 :goto_1

    #@bd
    .line 292
    .end local v16    # "k":I
    .end local v22    # "p":I
    .end local v27    # "x0":F
    .end local v28    # "x1":F
    .end local v30    # "y0":F
    .end local v31    # "y1":F
    :cond_1
    add-int/lit8 v14, v14, 0x1

    #@bf
    goto/16 :goto_0

    #@c1
    .line 336
    .end local v15    # "j":I
    :cond_2
    const/4 v3, 0x4

    #@c2
    .line 334
    move/from16 v0, v21

    #@c4
    invoke-static {v0, v3}, Landroid/filterfw/format/PrimitiveFormat;->createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    #@c7
    move-result-object v25

    #@c8
    .line 337
    .local v25, "vertexFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@cb
    move-result-object v13

    #@cc
    .line 338
    .local v13, "frameManager":Landroid/filterfw/core/FrameManager;
    move-object/from16 v0, p0

    #@ce
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@d0
    if-eqz v3, :cond_3

    #@d2
    .line 339
    move-object/from16 v0, p0

    #@d4
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@d6
    invoke-virtual {v3}, Landroid/filterfw/core/VertexFrame;->release()Landroid/filterfw/core/Frame;

    #@d9
    .line 340
    :cond_3
    move-object/from16 v0, v25

    #@db
    invoke-virtual {v13, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@de
    move-result-object v3

    #@df
    check-cast v3, Landroid/filterfw/core/VertexFrame;

    #@e1
    move-object/from16 v0, p0

    #@e3
    iput-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@e5
    .line 341
    move-object/from16 v0, p0

    #@e7
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@e9
    move-object/from16 v0, v23

    #@eb
    invoke-virtual {v3, v0}, Landroid/filterfw/core/VertexFrame;->setFloats([F)V

    #@ee
    .line 343
    move-object/from16 v0, p0

    #@f0
    iget v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@f2
    const/4 v4, 0x1

    #@f3
    if-ne v3, v4, :cond_4

    #@f5
    .line 344
    move-object/from16 v0, p0

    #@f7
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@f9
    const-string/jumbo v4, "positions"

    #@fc
    .line 345
    move-object/from16 v0, p0

    #@fe
    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@100
    .line 346
    const/16 v6, 0x1406

    #@102
    .line 347
    const/4 v7, 0x2

    #@103
    .line 348
    const/16 v8, 0x10

    #@105
    .line 349
    const/4 v9, 0x0

    #@106
    .line 350
    const/4 v10, 0x0

    #@107
    .line 344
    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    #@10a
    .line 351
    move-object/from16 v0, p0

    #@10c
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@10e
    const-string/jumbo v4, "texcoords"

    #@111
    .line 352
    move-object/from16 v0, p0

    #@113
    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@115
    .line 353
    const/16 v6, 0x1406

    #@117
    .line 354
    const/4 v7, 0x2

    #@118
    .line 355
    const/16 v8, 0x10

    #@11a
    .line 356
    const/16 v9, 0x8

    #@11c
    .line 357
    const/4 v10, 0x0

    #@11d
    .line 351
    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    #@120
    .line 358
    move-object/from16 v0, p0

    #@122
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@124
    mul-int v4, v20, v19

    #@126
    mul-int/lit8 v4, v4, 0x6

    #@128
    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    #@12b
    .line 359
    move-object/from16 v0, p0

    #@12d
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@12f
    const/4 v4, 0x4

    #@130
    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setDrawMode(I)V

    #@133
    .line 281
    :goto_4
    return-void

    #@134
    .line 361
    :cond_4
    move-object/from16 v0, p0

    #@136
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@138
    const-string/jumbo v4, "positions"

    #@13b
    .line 362
    move-object/from16 v0, p0

    #@13d
    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@13f
    .line 363
    const/16 v6, 0x1406

    #@141
    .line 364
    const/4 v7, 0x2

    #@142
    .line 365
    const/16 v8, 0x10

    #@144
    .line 366
    const/4 v9, 0x0

    #@145
    .line 367
    const/4 v10, 0x0

    #@146
    .line 361
    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    #@149
    .line 368
    move-object/from16 v0, p0

    #@14b
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@14d
    const-string/jumbo v4, "texcoords"

    #@150
    .line 369
    move-object/from16 v0, p0

    #@152
    iget-object v5, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mMeshDistortionFrame:Landroid/filterfw/core/VertexFrame;

    #@154
    .line 370
    const/16 v6, 0x1406

    #@156
    .line 371
    const/4 v7, 0x2

    #@157
    .line 372
    const/16 v8, 0x10

    #@159
    .line 373
    const/16 v9, 0x8

    #@15b
    .line 374
    const/4 v10, 0x0

    #@15c
    .line 368
    invoke-virtual/range {v3 .. v10}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;Landroid/filterfw/core/VertexFrame;IIIIZ)V

    #@15f
    .line 375
    move-object/from16 v0, p0

    #@161
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@163
    mul-int v4, v20, v19

    #@165
    mul-int/lit8 v4, v4, 0x6

    #@167
    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    #@16a
    .line 376
    move-object/from16 v0, p0

    #@16c
    iget-object v3, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@16e
    const/4 v4, 0x4

    #@16f
    invoke-virtual {v3, v4}, Landroid/filterfw/core/ShaderProgram;->setDrawMode(I)V

    #@172
    goto :goto_4

    #@173
    .line 303
    nop

    #@174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private createProgram(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 174
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@2
    const-string/jumbo v1, "uniform vec2 center;\nuniform vec2 weight;\nuniform mat2 rotate;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * positions.xy) * weight *2.0 +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  vec2 p = (1.0 + texcoords * amount) * positions.xy;\n  v_texcoord = (rotate * p) * weight  + center;\n}\n"

    #@5
    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@8
    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@d
    .line 176
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    #@f
    const-string/jumbo v1, "uniform vec2 center;\nuniform mat2 rotate;\nuniform vec2 weight;\nuniform float amount;\nattribute vec4 positions;\nattribute vec2 texcoords;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 mesh_point = (rotate * (positions.xy * vec2(3.0, 2.0))) * weight +\n                    2.0 * (center - vec2(0.5, 0.5));\n  gl_Position = positions;\n  gl_Position.x = mesh_point.x;\n  gl_Position.y = mesh_point.y;\n  float x = (1.0 + amount * texcoords.x) * positions.x + amount * texcoords.y;\n  float y = positions.y * (1.0 + texcoords.x * amount);\n  vec2 p = vec2(x,y);\n  v_texcoord = (rotate * (p * vec2(3.0,2.0))) * weight * 0.5 + center;\n}\n"

    #@12
    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    #@15
    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@1a
    .line 173
    return-void
.end method

.method private getDistortionScale(FF)F
    .locals 12
    .param p1, "x"    # F
    .param p2, "amount"    # F

    #@0
    .prologue
    const v5, 0x3e4ccccd    # 0.2f

    #@3
    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    #@8
    const/high16 v11, 0x3f800000    # 1.0f

    #@a
    const/high16 v10, 0x40000000    # 2.0f

    #@c
    .line 188
    move v3, p1

    #@d
    .line 189
    .local v3, "value":F
    move v0, p1

    #@e
    .line 190
    .local v0, "dist":F
    iget v4, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@10
    packed-switch v4, :pswitch_data_0

    #@13
    .line 220
    :goto_0
    return v3

    #@14
    .line 192
    :pswitch_0
    const v2, 0x3e99999a    # 0.3f

    #@17
    .line 194
    .local v2, "sigma":F
    add-float v4, v0, v5

    #@19
    neg-float v4, v4

    #@1a
    add-float/2addr v5, v0

    #@1b
    mul-float/2addr v4, v5

    #@1c
    const/high16 v5, 0x40400000    # 3.0f

    #@1e
    mul-float/2addr v4, v5

    #@1f
    float-to-double v4, v4

    #@20
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    #@23
    move-result-wide v4

    #@24
    double-to-float v4, v4

    #@25
    const v5, 0x3f63126f    # 0.887f

    #@28
    div-float/2addr v4, v5

    #@29
    add-float/2addr v4, v11

    #@2a
    div-float v4, v10, v4

    #@2c
    sub-float v4, v10, v4

    #@2e
    mul-float v3, p2, v4

    #@30
    .line 195
    goto :goto_0

    #@31
    .line 202
    .end local v2    # "sigma":F
    :pswitch_1
    const v4, 0x3f4ccccd    # 0.8f

    #@34
    mul-float/2addr v4, p2

    #@35
    neg-float v5, v0

    #@36
    mul-float/2addr v5, v0

    #@37
    const v6, 0x3db851ec    # 0.09f

    #@3a
    div-float/2addr v5, v6

    #@3b
    float-to-double v6, v5

    #@3c
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@3f
    move-result-wide v6

    #@40
    double-to-float v5, v6

    #@41
    sub-float v5, v10, v5

    #@43
    .line 203
    const/high16 v6, 0x3e800000    # 0.25f

    #@45
    add-float/2addr v6, v0

    #@46
    float-to-double v6, v6

    #@47
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    #@49
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@4c
    move-result-wide v6

    #@4d
    neg-double v6, v6

    #@4e
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@50
    mul-double/2addr v6, v8

    #@51
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@54
    move-result-wide v6

    #@55
    double-to-float v6, v6

    #@56
    add-float/2addr v6, v11

    #@57
    div-float v6, v10, v6

    #@59
    .line 202
    sub-float/2addr v5, v6

    #@5a
    mul-float v3, v4, v5

    #@5c
    .line 204
    goto :goto_0

    #@5d
    .line 214
    :pswitch_2
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    #@5f
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    #@62
    move-result-wide v4

    #@63
    mul-double/2addr v4, v6

    #@64
    mul-double/2addr v4, v6

    #@65
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@68
    move-result-wide v4

    #@69
    double-to-float v1, v4

    #@6a
    .line 215
    .local v1, "scale":F
    cmpl-float v4, v1, v11

    #@6c
    if-lez v4, :cond_0

    #@6e
    mul-float/2addr v0, v1

    #@6f
    .line 216
    :cond_0
    const v4, -0x40d9999a    # -0.65f

    #@72
    mul-float/2addr v4, p2

    #@73
    neg-float v5, v0

    #@74
    mul-float/2addr v5, v0

    #@75
    const v6, 0x3efae147    # 0.48999998f

    #@78
    div-float/2addr v5, v6

    #@79
    float-to-double v6, v5

    #@7a
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@7d
    move-result-wide v6

    #@7e
    double-to-float v5, v6

    #@7f
    mul-float v3, v4, v5

    #@81
    .line 217
    goto :goto_0

    #@82
    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getTexturePosition(FFF)[F
    .locals 18
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "amount"    # F

    #@0
    .prologue
    .line 241
    const/4 v15, 0x2

    #@1
    new-array v14, v15, [F

    #@3
    .local v14, "texture_pos":[F
    fill-array-data v14, :array_0

    #@6
    .line 242
    const/4 v6, 0x0

    #@7
    .line 243
    .local v6, "dist2":F
    const/high16 v10, 0x3f800000    # 1.0f

    #@9
    .line 244
    .local v10, "scale":F
    move-object/from16 v0, p0

    #@b
    iget v15, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@d
    const/16 v16, 0x1

    #@f
    move/from16 v0, v16

    #@11
    if-eq v15, v0, :cond_2

    #@13
    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getEffectAspectRatio()[F

    #@16
    move-result-object v7

    #@17
    .line 246
    .local v7, "e_aspect":[F
    const/4 v15, 0x0

    #@18
    aget v15, v7, v15

    #@1a
    const/16 v16, 0x1

    #@1c
    aget v16, v7, v16

    #@1e
    cmpg-float v15, v15, v16

    #@20
    if-gez v15, :cond_1

    #@22
    const/4 v15, 0x1

    #@23
    aget v2, v7, v15

    #@25
    .line 248
    .local v2, "as_ratio":F
    :goto_0
    mul-float v15, p1, p1

    #@27
    const/16 v16, 0x0

    #@29
    aget v16, v7, v16

    #@2b
    div-float v15, v15, v16

    #@2d
    const/16 v16, 0x0

    #@2f
    aget v16, v7, v16

    #@31
    div-float v15, v15, v16

    #@33
    .line 249
    mul-float v16, p2, p2

    #@35
    const/16 v17, 0x1

    #@37
    aget v17, v7, v17

    #@39
    div-float v16, v16, v17

    #@3b
    const/16 v17, 0x1

    #@3d
    aget v17, v7, v17

    #@3f
    div-float v16, v16, v17

    #@41
    .line 248
    add-float v15, v15, v16

    #@43
    float-to-double v0, v15

    #@44
    move-wide/from16 v16, v0

    #@46
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@49
    move-result-wide v16

    #@4a
    move-wide/from16 v0, v16

    #@4c
    double-to-float v5, v0

    #@4d
    .line 250
    .local v5, "dist":F
    const/high16 v15, 0x3f800000    # 1.0f

    #@4f
    cmpg-float v15, v5, v15

    #@51
    if-gtz v15, :cond_0

    #@53
    .line 251
    const/high16 v15, 0x3f800000    # 1.0f

    #@55
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v5, v15}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getDistortionScale(FF)F

    #@5a
    move-result v10

    #@5b
    .line 252
    const/4 v15, 0x0

    #@5c
    aput v10, v14, v15

    #@5e
    .line 253
    const/4 v15, 0x1

    #@5f
    aput v10, v14, v15

    #@61
    .line 278
    .end local v2    # "as_ratio":F
    .end local v7    # "e_aspect":[F
    :cond_0
    :goto_1
    return-object v14

    #@62
    .line 246
    .end local v5    # "dist":F
    .restart local v7    # "e_aspect":[F
    :cond_1
    const/4 v15, 0x0

    #@63
    aget v2, v7, v15

    #@65
    .restart local v2    # "as_ratio":F
    goto :goto_0

    #@66
    .line 261
    .end local v2    # "as_ratio":F
    .end local v7    # "e_aspect":[F
    :cond_2
    const/high16 v15, 0x40000000    # 2.0f

    #@68
    const/high16 v16, 0x3f800000    # 1.0f

    #@6a
    add-float v13, v15, v16

    #@6c
    .line 260
    .local v13, "size":F
    const/high16 v15, 0x3f800000    # 1.0f

    #@6e
    .line 262
    div-float v8, v15, v13

    #@70
    .line 263
    .local v8, "left":F
    const/high16 v15, 0x3f800000    # 1.0f

    #@72
    sub-float v9, v15, v8

    #@74
    .line 264
    .local v9, "right":F
    const/high16 v15, 0x3f000000    # 0.5f

    #@76
    sub-float v15, v8, v15

    #@78
    const/high16 v16, 0x40000000    # 2.0f

    #@7a
    mul-float v8, v15, v16

    #@7c
    .line 265
    const/high16 v15, 0x3f000000    # 0.5f

    #@7e
    sub-float v15, v9, v15

    #@80
    const/high16 v16, 0x40000000    # 2.0f

    #@82
    mul-float v9, v15, v16

    #@84
    .line 266
    sub-float v3, p1, v8

    #@86
    .line 267
    .local v3, "dL":F
    const/high16 v15, 0x40000000    # 2.0f

    #@88
    div-float v15, v13, v15

    #@8a
    mul-float v16, v3, v3

    #@8c
    mul-float v17, p2, p2

    #@8e
    add-float v16, v16, v17

    #@90
    move/from16 v0, v16

    #@92
    float-to-double v0, v0

    #@93
    move-wide/from16 v16, v0

    #@95
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@98
    move-result-wide v16

    #@99
    move-wide/from16 v0, v16

    #@9b
    double-to-float v0, v0

    #@9c
    move/from16 v16, v0

    #@9e
    mul-float v5, v15, v16

    #@a0
    .line 268
    .restart local v5    # "dist":F
    sub-float v4, p1, v9

    #@a2
    .line 269
    .local v4, "dR":F
    const/high16 v15, 0x40000000    # 2.0f

    #@a4
    div-float v15, v13, v15

    #@a6
    mul-float v16, v4, v4

    #@a8
    mul-float v17, p2, p2

    #@aa
    add-float v16, v16, v17

    #@ac
    move/from16 v0, v16

    #@ae
    float-to-double v0, v0

    #@af
    move-wide/from16 v16, v0

    #@b1
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    #@b4
    move-result-wide v16

    #@b5
    move-wide/from16 v0, v16

    #@b7
    double-to-float v0, v0

    #@b8
    move/from16 v16, v0

    #@ba
    mul-float v6, v15, v16

    #@bc
    .line 270
    const/high16 v15, 0x3f800000    # 1.0f

    #@be
    cmpg-float v15, v5, v15

    #@c0
    if-ltz v15, :cond_3

    #@c2
    const/high16 v15, 0x3f800000    # 1.0f

    #@c4
    cmpg-float v15, v6, v15

    #@c6
    if-gez v15, :cond_0

    #@c8
    .line 271
    :cond_3
    const/high16 v15, 0x3f800000    # 1.0f

    #@ca
    move-object/from16 v0, p0

    #@cc
    invoke-direct {v0, v5, v15}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getDistortionScale(FF)F

    #@cf
    move-result v11

    #@d0
    .line 272
    .local v11, "scale1":F
    const/high16 v15, 0x3f800000    # 1.0f

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-direct {v0, v6, v15}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->getDistortionScale(FF)F

    #@d7
    move-result v12

    #@d8
    .line 273
    .local v12, "scale2":F
    mul-float v15, v11, v11

    #@da
    mul-float v16, v12, v12

    #@dc
    add-float v15, v15, v16

    #@de
    .line 274
    add-float v16, v11, v12

    #@e0
    .line 273
    div-float v15, v15, v16

    #@e2
    const/16 v16, 0x0

    #@e4
    aput v15, v14, v16

    #@e6
    .line 275
    sub-float v15, v11, v12

    #@e8
    neg-float v15, v15

    #@e9
    mul-float/2addr v15, v8

    #@ea
    const/16 v16, 0x1

    #@ec
    aput v15, v14, v16

    #@ee
    goto/16 :goto_1

    #@f0
    .line 241
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 181
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@3
    .line 182
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 183
    invoke-direct {p0, p2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    #@e
    .line 180
    :cond_0
    return-void
.end method

.method getEffectAspectRatio()[F
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 223
    iget v0, p0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 237
    new-array v0, v1, [F

    #@8
    fill-array-data v0, :array_0

    #@b
    return-object v0

    #@c
    .line 225
    :pswitch_0
    new-array v0, v1, [F

    #@e
    fill-array-data v0, :array_1

    #@11
    return-object v0

    #@12
    .line 227
    :pswitch_1
    new-array v0, v1, [F

    #@14
    fill-array-data v0, :array_2

    #@17
    return-object v0

    #@18
    .line 229
    :pswitch_2
    new-array v0, v1, [F

    #@1a
    fill-array-data v0, :array_3

    #@1d
    return-object v0

    #@1e
    .line 231
    :pswitch_3
    new-array v0, v1, [F

    #@20
    fill-array-data v0, :array_4

    #@23
    return-object v0

    #@24
    .line 233
    :pswitch_4
    new-array v0, v1, [F

    #@26
    fill-array-data v0, :array_5

    #@29
    return-object v0

    #@2a
    .line 235
    :pswitch_5
    new-array v0, v1, [F

    #@2c
    fill-array-data v0, :array_6

    #@2f
    return-object v0

    #@30
    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch

    #@40
    .line 237
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    #@48
    .line 225
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    #@50
    .line 227
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    #@58
    .line 229
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    #@60
    .line 231
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    #@68
    .line 233
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    #@70
    .line 235
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 170
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 50
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 383
    const-string/jumbo v45, "image"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, v45

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v23

    #@b
    .line 384
    .local v23, "input":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/Frame;->getTimestamp()J

    #@e
    move-result-wide v46

    #@f
    move-wide/from16 v0, v46

    #@11
    move-object/from16 v2, p0

    #@13
    iput-wide v0, v2, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    #@15
    .line 386
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@18
    move-result-object v24

    #@19
    .line 388
    .local v24, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual/range {v24 .. v24}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1c
    move-result v44

    #@1d
    .line 389
    .local v44, "width":I
    invoke-virtual/range {v24 .. v24}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@20
    move-result v21

    #@21
    .line 390
    .local v21, "height":I
    move/from16 v0, v44

    #@23
    move/from16 v1, v21

    #@25
    if-le v0, v1, :cond_4

    #@27
    .line 391
    const/16 v45, 0x2

    #@29
    move/from16 v0, v45

    #@2b
    new-array v10, v0, [F

    #@2d
    const/high16 v45, 0x3f800000    # 1.0f

    #@2f
    const/16 v46, 0x0

    #@31
    aput v45, v10, v46

    #@33
    move/from16 v0, v21

    #@35
    int-to-float v0, v0

    #@36
    move/from16 v45, v0

    #@38
    move/from16 v0, v44

    #@3a
    int-to-float v0, v0

    #@3b
    move/from16 v46, v0

    #@3d
    div-float v45, v45, v46

    #@3f
    const/16 v46, 0x1

    #@41
    aput v45, v10, v46

    #@43
    .line 395
    .local v10, "aspectRatio":[F
    :goto_0
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@47
    move-object/from16 v45, v0

    #@49
    if-nez v45, :cond_5

    #@4b
    .line 396
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createProgram(Landroid/filterfw/core/FilterContext;)V

    #@4e
    .line 397
    move-object/from16 v0, p0

    #@50
    iput-object v10, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@52
    .line 398
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    #@55
    .line 405
    :cond_0
    :goto_1
    const-string/jumbo v45, "faces"

    #@58
    move-object/from16 v0, p0

    #@5a
    move-object/from16 v1, v45

    #@5c
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@5f
    move-result-object v20

    #@60
    .line 406
    .local v20, "facesFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@63
    move-result-object v19

    #@64
    check-cast v19, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@66
    .line 408
    .local v19, "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    const/16 v45, 0x2

    #@68
    move/from16 v0, v45

    #@6a
    new-array v14, v0, [F

    #@6c
    .line 409
    .local v14, "center":[F
    const/16 v45, 0x2

    #@6e
    move/from16 v0, v45

    #@70
    new-array v0, v0, [F

    #@72
    move-object/from16 v43, v0

    #@74
    .line 411
    .local v43, "weight":[F
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@77
    move-result v18

    #@78
    .line 412
    .local v18, "face_count":I
    if-lez v18, :cond_d

    #@7a
    .line 413
    move-object/from16 v0, p0

    #@7c
    iget v6, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@7e
    .line 414
    .local v6, "amount":F
    move-object/from16 v0, p0

    #@80
    iget-boolean v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mEnableAnimation:Z

    #@82
    move/from16 v45, v0

    #@84
    if-eqz v45, :cond_1

    #@86
    move-object/from16 v0, p0

    #@88
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@8a
    move/from16 v45, v0

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@90
    move/from16 v46, v0

    #@92
    cmpg-float v45, v45, v46

    #@94
    if-gez v45, :cond_1

    #@96
    .line 415
    move-object/from16 v0, p0

    #@98
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    #@9a
    move-wide/from16 v46, v0

    #@9c
    const-wide/16 v48, 0x0

    #@9e
    cmp-long v45, v46, v48

    #@a0
    if-lez v45, :cond_8

    #@a2
    .line 416
    const/high16 v25, 0x44fa0000    # 2000.0f

    #@a4
    .line 418
    .local v25, "kAnimationDuration":F
    move-object/from16 v0, p0

    #@a6
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@a8
    move/from16 v45, v0

    #@aa
    const/16 v46, 0x0

    #@ac
    cmpl-float v45, v45, v46

    #@ae
    if-nez v45, :cond_7

    #@b0
    .line 419
    move-object/from16 v0, p0

    #@b2
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    #@b4
    move-wide/from16 v46, v0

    #@b6
    move-wide/from16 v0, v46

    #@b8
    move-object/from16 v2, p0

    #@ba
    iput-wide v0, v2, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimationStartTimeStamp:J

    #@bc
    .line 420
    const v45, 0x3a83126f    # 0.001f

    #@bf
    move/from16 v0, v45

    #@c1
    move-object/from16 v1, p0

    #@c3
    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@c5
    .line 428
    .end local v25    # "kAnimationDuration":F
    :goto_2
    move-object/from16 v0, p0

    #@c7
    iget v6, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@c9
    .line 429
    move-object/from16 v0, p0

    #@cb
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@cd
    move/from16 v45, v0

    #@cf
    cmpl-float v45, v6, v45

    #@d1
    if-lez v45, :cond_1

    #@d3
    .line 430
    move-object/from16 v0, p0

    #@d5
    iget v6, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@d7
    .line 432
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@da
    move-result-object v45

    #@db
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@de
    move-result-object v46

    #@df
    invoke-virtual/range {v45 .. v46}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@e2
    move-result-object v12

    #@e3
    .line 433
    .local v12, "buf1":Landroid/filterfw/core/Frame;
    move-object/from16 v0, v23

    #@e5
    invoke-virtual {v12, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@e8
    .line 434
    const/4 v13, 0x0

    #@e9
    .line 435
    .local v13, "buf2":Landroid/filterfw/core/Frame;
    const/16 v45, 0x1

    #@eb
    move/from16 v0, v18

    #@ed
    move/from16 v1, v45

    #@ef
    if-le v0, v1, :cond_2

    #@f1
    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@f4
    move-result-object v45

    #@f5
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@f8
    move-result-object v46

    #@f9
    invoke-virtual/range {v45 .. v46}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@fc
    move-result-object v13

    #@fd
    .line 438
    .end local v13    # "buf2":Landroid/filterfw/core/Frame;
    :cond_2
    move-object/from16 v37, v23

    #@ff
    .local v37, "source":Landroid/filterfw/core/Frame;
    move-object/from16 v30, v12

    #@101
    .line 439
    .local v30, "output":Landroid/filterfw/core/Frame;
    const/16 v22, 0x0

    #@103
    .local v22, "i":I
    :goto_3
    move/from16 v0, v22

    #@105
    move/from16 v1, v18

    #@107
    if-ge v0, v1, :cond_b

    #@109
    .line 441
    const/16 v45, 0x1

    #@10b
    move/from16 v0, v18

    #@10d
    move/from16 v1, v45

    #@10f
    if-le v0, v1, :cond_3

    #@111
    if-lez v22, :cond_3

    #@113
    .line 442
    rem-int/lit8 v45, v22, 0x2

    #@115
    const/16 v46, 0x1

    #@117
    move/from16 v0, v45

    #@119
    move/from16 v1, v46

    #@11b
    if-ne v0, v1, :cond_9

    #@11d
    .line 443
    move-object/from16 v37, v12

    #@11f
    .line 444
    move-object/from16 v30, v13

    #@121
    .line 445
    move-object/from16 v0, v37

    #@123
    invoke-virtual {v13, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@126
    .line 453
    :cond_3
    :goto_4
    const/16 v45, 0x2

    #@128
    move/from16 v0, v45

    #@12a
    new-array v0, v0, [F

    #@12c
    move-object/from16 v27, v0

    #@12e
    move-object/from16 v0, v19

    #@130
    move/from16 v1, v22

    #@132
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@135
    move-result v45

    #@136
    const/16 v46, 0x0

    #@138
    aput v45, v27, v46

    #@13a
    move-object/from16 v0, v19

    #@13c
    move/from16 v1, v22

    #@13e
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@141
    move-result v45

    #@142
    const/16 v46, 0x1

    #@144
    aput v45, v27, v46

    #@146
    .line 454
    .local v27, "leftEye":[F
    const/16 v45, 0x2

    #@148
    move/from16 v0, v45

    #@14a
    new-array v0, v0, [F

    #@14c
    move-object/from16 v34, v0

    #@14e
    move-object/from16 v0, v19

    #@150
    move/from16 v1, v22

    #@152
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@155
    move-result v45

    #@156
    const/16 v46, 0x0

    #@158
    aput v45, v34, v46

    #@15a
    move-object/from16 v0, v19

    #@15c
    move/from16 v1, v22

    #@15e
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@161
    move-result v45

    #@162
    const/16 v46, 0x1

    #@164
    aput v45, v34, v46

    #@166
    .line 455
    .local v34, "rightEye":[F
    const/16 v45, 0x2

    #@168
    move/from16 v0, v45

    #@16a
    new-array v0, v0, [F

    #@16c
    move-object/from16 v29, v0

    #@16e
    move-object/from16 v0, v19

    #@170
    move/from16 v1, v22

    #@172
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@175
    move-result v45

    #@176
    const/16 v46, 0x0

    #@178
    aput v45, v29, v46

    #@17a
    move-object/from16 v0, v19

    #@17c
    move/from16 v1, v22

    #@17e
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@181
    move-result v45

    #@182
    const/16 v46, 0x1

    #@184
    aput v45, v29, v46

    #@186
    .line 456
    .local v29, "mouth":[F
    const/16 v45, 0x1

    #@188
    aget v45, v34, v45

    #@18a
    const/16 v46, 0x1

    #@18c
    aget v46, v27, v46

    #@18e
    sub-float v45, v45, v46

    #@190
    const/16 v46, 0x1

    #@192
    aget v46, v10, v46

    #@194
    mul-float v45, v45, v46

    #@196
    move/from16 v0, v45

    #@198
    float-to-double v0, v0

    #@199
    move-wide/from16 v46, v0

    #@19b
    .line 457
    const/16 v45, 0x0

    #@19d
    aget v45, v34, v45

    #@19f
    const/16 v48, 0x0

    #@1a1
    aget v48, v27, v48

    #@1a3
    sub-float v45, v45, v48

    #@1a5
    const/16 v48, 0x0

    #@1a7
    aget v48, v10, v48

    #@1a9
    mul-float v45, v45, v48

    #@1ab
    move/from16 v0, v45

    #@1ad
    float-to-double v0, v0

    #@1ae
    move-wide/from16 v48, v0

    #@1b0
    .line 456
    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->atan2(DD)D

    #@1b3
    move-result-wide v46

    #@1b4
    move-wide/from16 v0, v46

    #@1b6
    double-to-float v8, v0

    #@1b7
    .line 458
    .local v8, "angleEyes":F
    const/16 v45, 0x0

    #@1b9
    aget v45, v34, v45

    #@1bb
    const/16 v46, 0x0

    #@1bd
    aget v46, v27, v46

    #@1bf
    add-float v45, v45, v46

    #@1c1
    const/high16 v46, 0x40000000    # 2.0f

    #@1c3
    div-float v45, v45, v46

    #@1c5
    const/16 v46, 0x0

    #@1c7
    aget v46, v29, v46

    #@1c9
    sub-float v41, v45, v46

    #@1cb
    .line 459
    .local v41, "v_axis_x":F
    const/16 v45, 0x1

    #@1cd
    aget v45, v34, v45

    #@1cf
    const/16 v46, 0x1

    #@1d1
    aget v46, v27, v46

    #@1d3
    add-float v45, v45, v46

    #@1d5
    const/high16 v46, 0x40000000    # 2.0f

    #@1d7
    div-float v45, v45, v46

    #@1d9
    const/16 v46, 0x1

    #@1db
    aget v46, v29, v46

    #@1dd
    sub-float v42, v45, v46

    #@1df
    .line 460
    .local v42, "v_axis_y":F
    move/from16 v0, v42

    #@1e1
    float-to-double v0, v0

    #@1e2
    move-wide/from16 v46, v0

    #@1e4
    move/from16 v0, v41

    #@1e6
    float-to-double v0, v0

    #@1e7
    move-wide/from16 v48, v0

    #@1e9
    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->atan2(DD)D

    #@1ec
    move-result-wide v46

    #@1ed
    move-wide/from16 v0, v46

    #@1ef
    double-to-float v9, v0

    #@1f0
    .line 461
    .local v9, "angleFace":F
    float-to-double v0, v9

    #@1f1
    move-wide/from16 v46, v0

    #@1f3
    const-wide v48, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@1f8
    sub-double v46, v46, v48

    #@1fa
    move-wide/from16 v0, v46

    #@1fc
    double-to-float v9, v0

    #@1fd
    .line 463
    const/16 v45, 0x0

    #@1ff
    aget v45, v27, v45

    #@201
    const/16 v46, 0x0

    #@203
    aget v46, v34, v46

    #@205
    sub-float v45, v45, v46

    #@207
    const/16 v46, 0x0

    #@209
    aget v46, v10, v46

    #@20b
    mul-float v15, v45, v46

    #@20d
    .line 464
    .local v15, "dx":F
    const/16 v45, 0x1

    #@20f
    aget v45, v27, v45

    #@211
    const/16 v46, 0x1

    #@213
    aget v46, v34, v46

    #@215
    sub-float v45, v45, v46

    #@217
    const/16 v46, 0x1

    #@219
    aget v46, v10, v46

    #@21b
    mul-float v16, v45, v46

    #@21d
    .line 465
    .local v16, "dy":F
    mul-float v45, v15, v15

    #@21f
    mul-float v46, v16, v16

    #@221
    add-float v45, v45, v46

    #@223
    move/from16 v0, v45

    #@225
    float-to-double v0, v0

    #@226
    move-wide/from16 v46, v0

    #@228
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    #@22b
    move-result-wide v46

    #@22c
    move-wide/from16 v0, v46

    #@22e
    double-to-float v0, v0

    #@22f
    move/from16 v28, v0

    #@231
    .line 467
    .local v28, "length":F
    move-object/from16 v0, p0

    #@233
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@235
    move/from16 v45, v0

    #@237
    const/16 v46, 0x1

    #@239
    move/from16 v0, v45

    #@23b
    move/from16 v1, v46

    #@23d
    if-ne v0, v1, :cond_a

    #@23f
    .line 468
    const/16 v45, 0x1

    #@241
    aget v45, v27, v45

    #@243
    sub-float v45, v45, v28

    #@245
    const/16 v46, 0x1

    #@247
    aget v46, v34, v46

    #@249
    sub-float v46, v46, v28

    #@24b
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->min(FF)F

    #@24e
    move-result v40

    #@24f
    .line 469
    .local v40, "top":F
    const/16 v45, 0x0

    #@251
    aget v45, v27, v45

    #@253
    sub-float v45, v45, v28

    #@255
    const/16 v46, 0x0

    #@257
    aget v46, v34, v46

    #@259
    sub-float v46, v46, v28

    #@25b
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->min(FF)F

    #@25e
    move-result v26

    #@25f
    .line 471
    .local v26, "left":F
    const/16 v45, 0x1

    #@261
    aget v45, v27, v45

    #@263
    add-float v45, v45, v28

    #@265
    const/16 v46, 0x1

    #@267
    aget v46, v34, v46

    #@269
    add-float v46, v46, v28

    #@26b
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    #@26e
    move-result v11

    #@26f
    .line 472
    .local v11, "bottom":F
    const/16 v45, 0x0

    #@271
    aget v45, v27, v45

    #@273
    add-float v45, v45, v28

    #@275
    const/16 v46, 0x0

    #@277
    aget v46, v34, v46

    #@279
    add-float v46, v46, v28

    #@27b
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    #@27e
    move-result v33

    #@27f
    .line 474
    .local v33, "right":F
    new-instance v31, Landroid/filterfw/geometry/Rectangle;

    #@281
    sub-float v45, v33, v26

    #@283
    sub-float v46, v11, v40

    #@285
    move-object/from16 v0, v31

    #@287
    move/from16 v1, v26

    #@289
    move/from16 v2, v40

    #@28b
    move/from16 v3, v45

    #@28d
    move/from16 v4, v46

    #@28f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@292
    .line 475
    .local v31, "rect":Landroid/filterfw/geometry/Rectangle;
    const/16 v45, 0x0

    #@294
    const/16 v46, 0x0

    #@296
    move-object/from16 v0, v31

    #@298
    move/from16 v1, v45

    #@29a
    move/from16 v2, v46

    #@29c
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@29f
    move-result-object v32

    #@2a0
    .line 477
    .local v32, "region":Landroid/filterfw/geometry/Quad;
    const/16 v45, 0x0

    #@2a2
    aget v45, v27, v45

    #@2a4
    const/16 v46, 0x0

    #@2a6
    aget v46, v34, v46

    #@2a8
    add-float v45, v45, v46

    #@2aa
    const/high16 v46, 0x40000000    # 2.0f

    #@2ac
    div-float v45, v45, v46

    #@2ae
    const/16 v46, 0x0

    #@2b0
    aput v45, v14, v46

    #@2b2
    .line 478
    const/16 v45, 0x1

    #@2b4
    aget v45, v27, v45

    #@2b6
    const/16 v46, 0x1

    #@2b8
    aget v46, v34, v46

    #@2ba
    add-float v45, v45, v46

    #@2bc
    const/high16 v46, 0x40000000    # 2.0f

    #@2be
    div-float v45, v45, v46

    #@2c0
    const/16 v46, 0x1

    #@2c2
    aput v45, v14, v46

    #@2c4
    .line 479
    move-object/from16 v0, p0

    #@2c6
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@2c8
    move-object/from16 v45, v0

    #@2ca
    const-string/jumbo v46, "center"

    #@2cd
    move-object/from16 v0, v45

    #@2cf
    move-object/from16 v1, v46

    #@2d1
    invoke-virtual {v0, v1, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2d4
    .line 480
    const/16 v45, 0x4

    #@2d6
    move/from16 v0, v45

    #@2d8
    new-array v0, v0, [F

    #@2da
    move-object/from16 v35, v0

    #@2dc
    float-to-double v0, v8

    #@2dd
    move-wide/from16 v46, v0

    #@2df
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@2e2
    move-result-wide v46

    #@2e3
    move-wide/from16 v0, v46

    #@2e5
    double-to-float v0, v0

    #@2e6
    move/from16 v45, v0

    #@2e8
    const/16 v46, 0x0

    #@2ea
    aput v45, v35, v46

    #@2ec
    float-to-double v0, v8

    #@2ed
    move-wide/from16 v46, v0

    #@2ef
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@2f2
    move-result-wide v46

    #@2f3
    move-wide/from16 v0, v46

    #@2f5
    double-to-float v0, v0

    #@2f6
    move/from16 v45, v0

    #@2f8
    const/16 v46, 0x1

    #@2fa
    aput v45, v35, v46

    #@2fc
    .line 481
    float-to-double v0, v8

    #@2fd
    move-wide/from16 v46, v0

    #@2ff
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@302
    move-result-wide v46

    #@303
    move-wide/from16 v0, v46

    #@305
    neg-double v0, v0

    #@306
    move-wide/from16 v46, v0

    #@308
    move-wide/from16 v0, v46

    #@30a
    double-to-float v0, v0

    #@30b
    move/from16 v45, v0

    #@30d
    const/16 v46, 0x2

    #@30f
    aput v45, v35, v46

    #@311
    float-to-double v0, v8

    #@312
    move-wide/from16 v46, v0

    #@314
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@317
    move-result-wide v46

    #@318
    move-wide/from16 v0, v46

    #@31a
    double-to-float v0, v0

    #@31b
    move/from16 v45, v0

    #@31d
    const/16 v46, 0x3

    #@31f
    aput v45, v35, v46

    #@321
    .line 482
    .local v35, "rotate":[F
    move-object/from16 v0, p0

    #@323
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@325
    move-object/from16 v45, v0

    #@327
    const-string/jumbo v46, "rotate"

    #@32a
    move-object/from16 v0, v45

    #@32c
    move-object/from16 v1, v46

    #@32e
    move-object/from16 v2, v35

    #@330
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@333
    .line 483
    const/16 v45, 0x2

    #@335
    move/from16 v0, v45

    #@337
    new-array v0, v0, [F

    #@339
    move-object/from16 v36, v0

    #@33b
    const/16 v45, 0x0

    #@33d
    aget v45, v10, v45

    #@33f
    div-float v45, v28, v45

    #@341
    const/16 v46, 0x0

    #@343
    aput v45, v36, v46

    #@345
    const/16 v45, 0x1

    #@347
    aget v45, v10, v45

    #@349
    div-float v45, v28, v45

    #@34b
    const/16 v46, 0x1

    #@34d
    aput v45, v36, v46

    #@34f
    .line 484
    .local v36, "scales":[F
    move-object/from16 v0, p0

    #@351
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@353
    move-object/from16 v45, v0

    #@355
    const-string/jumbo v46, "weight"

    #@358
    move-object/from16 v0, v45

    #@35a
    move-object/from16 v1, v46

    #@35c
    move-object/from16 v2, v36

    #@35e
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@361
    .line 485
    move-object/from16 v0, p0

    #@363
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@365
    move-object/from16 v45, v0

    #@367
    const-string/jumbo v46, "amount"

    #@36a
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@36d
    move-result-object v47

    #@36e
    invoke-virtual/range {v45 .. v47}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@371
    .line 487
    move-object/from16 v0, p0

    #@373
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@375
    move-object/from16 v45, v0

    #@377
    move-object/from16 v0, v45

    #@379
    move-object/from16 v1, v32

    #@37b
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@37e
    .line 488
    move-object/from16 v0, p0

    #@380
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@382
    move-object/from16 v45, v0

    #@384
    move-object/from16 v0, v45

    #@386
    move-object/from16 v1, v32

    #@388
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@38b
    .line 491
    move-object/from16 v0, p0

    #@38d
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@38f
    move-object/from16 v45, v0

    #@391
    move-object/from16 v0, v45

    #@393
    move-object/from16 v1, v37

    #@395
    move-object/from16 v2, v30

    #@397
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@39a
    .line 439
    .end local v11    # "bottom":F
    .end local v26    # "left":F
    .end local v33    # "right":F
    .end local v36    # "scales":[F
    .end local v40    # "top":F
    :goto_5
    add-int/lit8 v22, v22, 0x1

    #@39c
    goto/16 :goto_3

    #@39e
    .line 393
    .end local v6    # "amount":F
    .end local v8    # "angleEyes":F
    .end local v9    # "angleFace":F
    .end local v10    # "aspectRatio":[F
    .end local v12    # "buf1":Landroid/filterfw/core/Frame;
    .end local v14    # "center":[F
    .end local v15    # "dx":F
    .end local v16    # "dy":F
    .end local v18    # "face_count":I
    .end local v19    # "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .end local v20    # "facesFrame":Landroid/filterfw/core/Frame;
    .end local v22    # "i":I
    .end local v27    # "leftEye":[F
    .end local v28    # "length":F
    .end local v29    # "mouth":[F
    .end local v30    # "output":Landroid/filterfw/core/Frame;
    .end local v31    # "rect":Landroid/filterfw/geometry/Rectangle;
    .end local v32    # "region":Landroid/filterfw/geometry/Quad;
    .end local v34    # "rightEye":[F
    .end local v35    # "rotate":[F
    .end local v37    # "source":Landroid/filterfw/core/Frame;
    .end local v41    # "v_axis_x":F
    .end local v42    # "v_axis_y":F
    .end local v43    # "weight":[F
    :cond_4
    const/16 v45, 0x2

    #@3a0
    move/from16 v0, v45

    #@3a2
    new-array v10, v0, [F

    #@3a4
    move/from16 v0, v44

    #@3a6
    int-to-float v0, v0

    #@3a7
    move/from16 v45, v0

    #@3a9
    move/from16 v0, v21

    #@3ab
    int-to-float v0, v0

    #@3ac
    move/from16 v46, v0

    #@3ae
    div-float v45, v45, v46

    #@3b0
    const/16 v46, 0x0

    #@3b2
    aput v45, v10, v46

    #@3b4
    const/high16 v45, 0x3f800000    # 1.0f

    #@3b6
    const/16 v46, 0x1

    #@3b8
    aput v45, v10, v46

    #@3ba
    .restart local v10    # "aspectRatio":[F
    goto/16 :goto_0

    #@3bc
    .line 400
    :cond_5
    const/16 v45, 0x0

    #@3be
    aget v45, v10, v45

    #@3c0
    move-object/from16 v0, p0

    #@3c2
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@3c4
    move-object/from16 v46, v0

    #@3c6
    const/16 v47, 0x0

    #@3c8
    aget v46, v46, v47

    #@3ca
    cmpl-float v45, v45, v46

    #@3cc
    if-nez v45, :cond_6

    #@3ce
    const/16 v45, 0x1

    #@3d0
    aget v45, v10, v45

    #@3d2
    move-object/from16 v0, p0

    #@3d4
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@3d6
    move-object/from16 v46, v0

    #@3d8
    const/16 v47, 0x1

    #@3da
    aget v46, v46, v47

    #@3dc
    cmpl-float v45, v45, v46

    #@3de
    if-eqz v45, :cond_0

    #@3e0
    .line 401
    :cond_6
    move-object/from16 v0, p0

    #@3e2
    iput-object v10, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@3e4
    .line 402
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    #@3e7
    goto/16 :goto_1

    #@3e9
    .line 422
    .restart local v6    # "amount":F
    .restart local v14    # "center":[F
    .restart local v18    # "face_count":I
    .restart local v19    # "faces":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    .restart local v20    # "facesFrame":Landroid/filterfw/core/Frame;
    .restart local v25    # "kAnimationDuration":F
    .restart local v43    # "weight":[F
    :cond_7
    move-object/from16 v0, p0

    #@3eb
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    #@3ed
    move-wide/from16 v46, v0

    #@3ef
    move-object/from16 v0, p0

    #@3f1
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimationStartTimeStamp:J

    #@3f3
    move-wide/from16 v48, v0

    #@3f5
    sub-long v38, v46, v48

    #@3f7
    .line 423
    .local v38, "t":J
    const-wide/32 v46, 0xf4240

    #@3fa
    div-long v38, v38, v46

    #@3fc
    .line 424
    move-wide/from16 v0, v38

    #@3fe
    long-to-float v0, v0

    #@3ff
    move/from16 v45, v0

    #@401
    const/high16 v46, 0x44fa0000    # 2000.0f

    #@403
    div-float v45, v45, v46

    #@405
    move-object/from16 v0, p0

    #@407
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@409
    move/from16 v46, v0

    #@40b
    mul-float v45, v45, v46

    #@40d
    move/from16 v0, v45

    #@40f
    move-object/from16 v1, p0

    #@411
    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@413
    goto/16 :goto_2

    #@415
    .line 427
    .end local v25    # "kAnimationDuration":F
    .end local v38    # "t":J
    :cond_8
    move-object/from16 v0, p0

    #@417
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@419
    move/from16 v45, v0

    #@41b
    const v46, 0x3cf5c28f    # 0.03f

    #@41e
    add-float v45, v45, v46

    #@420
    move/from16 v0, v45

    #@422
    move-object/from16 v1, p0

    #@424
    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@426
    goto/16 :goto_2

    #@428
    .line 447
    .restart local v12    # "buf1":Landroid/filterfw/core/Frame;
    .restart local v22    # "i":I
    .restart local v30    # "output":Landroid/filterfw/core/Frame;
    .restart local v37    # "source":Landroid/filterfw/core/Frame;
    :cond_9
    move-object/from16 v37, v13

    #@42a
    .line 448
    move-object/from16 v30, v12

    #@42c
    .line 449
    move-object/from16 v0, v37

    #@42e
    invoke-virtual {v12, v0}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@431
    goto/16 :goto_4

    #@433
    .line 494
    .restart local v8    # "angleEyes":F
    .restart local v9    # "angleFace":F
    .restart local v15    # "dx":F
    .restart local v16    # "dy":F
    .restart local v27    # "leftEye":[F
    .restart local v28    # "length":F
    .restart local v29    # "mouth":[F
    .restart local v34    # "rightEye":[F
    .restart local v41    # "v_axis_x":F
    .restart local v42    # "v_axis_y":F
    :cond_a
    move v7, v9

    #@434
    .line 495
    .local v7, "angle":F
    const/high16 v17, 0x3f800000    # 1.0f

    #@436
    .line 496
    .local v17, "effectSize":F
    move-object/from16 v0, p0

    #@438
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@43a
    move/from16 v45, v0

    #@43c
    packed-switch v45, :pswitch_data_0

    #@43f
    .line 538
    :pswitch_0
    new-instance v45, Ljava/lang/RuntimeException;

    #@441
    new-instance v46, Ljava/lang/StringBuilder;

    #@443
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@446
    const-string/jumbo v47, "Undefined effect: "

    #@449
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44c
    move-result-object v46

    #@44d
    move-object/from16 v0, p0

    #@44f
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@451
    move/from16 v47, v0

    #@453
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@456
    move-result-object v46

    #@457
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45a
    move-result-object v46

    #@45b
    invoke-direct/range {v45 .. v46}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45e
    throw v45

    #@45f
    .line 499
    :pswitch_1
    const/16 v45, 0x0

    #@461
    aget v45, v27, v45

    #@463
    const/high16 v46, 0x3f000000    # 0.5f

    #@465
    mul-float v45, v45, v46

    #@467
    const/16 v46, 0x0

    #@469
    aget v46, v34, v46

    #@46b
    const/high16 v47, 0x3f000000    # 0.5f

    #@46d
    mul-float v46, v46, v47

    #@46f
    add-float v45, v45, v46

    #@471
    const/16 v46, 0x0

    #@473
    aget v46, v29, v46

    #@475
    const v47, 0x38d1b717    # 1.0E-4f

    #@478
    mul-float v46, v46, v47

    #@47a
    add-float v45, v45, v46

    #@47c
    const/16 v46, 0x0

    #@47e
    aput v45, v14, v46

    #@480
    .line 500
    const/16 v45, 0x1

    #@482
    aget v45, v27, v45

    #@484
    const/high16 v46, 0x3f000000    # 0.5f

    #@486
    mul-float v45, v45, v46

    #@488
    const/16 v46, 0x1

    #@48a
    aget v46, v34, v46

    #@48c
    const/high16 v47, 0x3f000000    # 0.5f

    #@48e
    mul-float v46, v46, v47

    #@490
    add-float v45, v45, v46

    #@492
    const/16 v46, 0x1

    #@494
    aget v46, v29, v46

    #@496
    const v47, 0x38d1b717    # 1.0E-4f

    #@499
    mul-float v46, v46, v47

    #@49b
    add-float v45, v45, v46

    #@49d
    const/16 v46, 0x1

    #@49f
    aput v45, v14, v46

    #@4a1
    .line 501
    const/high16 v17, 0x3f800000    # 1.0f

    #@4a3
    .line 503
    move v7, v8

    #@4a4
    .line 541
    :goto_6
    mul-float v45, v17, v28

    #@4a6
    const/16 v46, 0x0

    #@4a8
    aget v46, v10, v46

    #@4aa
    div-float v45, v45, v46

    #@4ac
    const/16 v46, 0x0

    #@4ae
    aput v45, v43, v46

    #@4b0
    .line 542
    mul-float v45, v17, v28

    #@4b2
    const/16 v46, 0x1

    #@4b4
    aget v46, v10, v46

    #@4b6
    div-float v45, v45, v46

    #@4b8
    const/16 v46, 0x1

    #@4ba
    aput v45, v43, v46

    #@4bc
    .line 543
    new-instance v31, Landroid/filterfw/geometry/Rectangle;

    #@4be
    .line 544
    const/16 v45, 0x0

    #@4c0
    aget v45, v43, v45

    #@4c2
    const/high16 v46, -0x40800000    # -1.0f

    #@4c4
    mul-float v45, v45, v46

    #@4c6
    const/16 v46, 0x1

    #@4c8
    aget v46, v43, v46

    #@4ca
    const/high16 v47, -0x40800000    # -1.0f

    #@4cc
    mul-float v46, v46, v47

    #@4ce
    const/16 v47, 0x0

    #@4d0
    aget v47, v43, v47

    #@4d2
    const/high16 v48, 0x40000000    # 2.0f

    #@4d4
    mul-float v47, v47, v48

    #@4d6
    const/16 v48, 0x1

    #@4d8
    aget v48, v43, v48

    #@4da
    const/high16 v49, 0x40000000    # 2.0f

    #@4dc
    mul-float v48, v48, v49

    #@4de
    .line 543
    move-object/from16 v0, v31

    #@4e0
    move/from16 v1, v45

    #@4e2
    move/from16 v2, v46

    #@4e4
    move/from16 v3, v47

    #@4e6
    move/from16 v4, v48

    #@4e8
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@4eb
    .line 546
    .restart local v31    # "rect":Landroid/filterfw/geometry/Rectangle;
    const/16 v45, 0x0

    #@4ed
    aget v45, v14, v45

    #@4ef
    const/16 v46, 0x1

    #@4f1
    aget v46, v14, v46

    #@4f3
    move-object/from16 v0, v31

    #@4f5
    move/from16 v1, v45

    #@4f7
    move/from16 v2, v46

    #@4f9
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@4fc
    move-result-object v32

    #@4fd
    .line 549
    .restart local v32    # "region":Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    #@4ff
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@501
    move-object/from16 v45, v0

    #@503
    const-string/jumbo v46, "center"

    #@506
    move-object/from16 v0, v45

    #@508
    move-object/from16 v1, v46

    #@50a
    invoke-virtual {v0, v1, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@50d
    .line 550
    move-object/from16 v0, p0

    #@50f
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@511
    move-object/from16 v45, v0

    #@513
    const-string/jumbo v46, "weight"

    #@516
    move-object/from16 v0, v45

    #@518
    move-object/from16 v1, v46

    #@51a
    move-object/from16 v2, v43

    #@51c
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@51f
    .line 551
    const/16 v45, 0x4

    #@521
    move/from16 v0, v45

    #@523
    new-array v0, v0, [F

    #@525
    move-object/from16 v35, v0

    #@527
    float-to-double v0, v7

    #@528
    move-wide/from16 v46, v0

    #@52a
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@52d
    move-result-wide v46

    #@52e
    move-wide/from16 v0, v46

    #@530
    double-to-float v0, v0

    #@531
    move/from16 v45, v0

    #@533
    const/16 v46, 0x0

    #@535
    aput v45, v35, v46

    #@537
    float-to-double v0, v7

    #@538
    move-wide/from16 v46, v0

    #@53a
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@53d
    move-result-wide v46

    #@53e
    move-wide/from16 v0, v46

    #@540
    double-to-float v0, v0

    #@541
    move/from16 v45, v0

    #@543
    const/16 v46, 0x1

    #@545
    aput v45, v35, v46

    #@547
    .line 552
    float-to-double v0, v7

    #@548
    move-wide/from16 v46, v0

    #@54a
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@54d
    move-result-wide v46

    #@54e
    move-wide/from16 v0, v46

    #@550
    neg-double v0, v0

    #@551
    move-wide/from16 v46, v0

    #@553
    move-wide/from16 v0, v46

    #@555
    double-to-float v0, v0

    #@556
    move/from16 v45, v0

    #@558
    const/16 v46, 0x2

    #@55a
    aput v45, v35, v46

    #@55c
    float-to-double v0, v7

    #@55d
    move-wide/from16 v46, v0

    #@55f
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@562
    move-result-wide v46

    #@563
    move-wide/from16 v0, v46

    #@565
    double-to-float v0, v0

    #@566
    move/from16 v45, v0

    #@568
    const/16 v46, 0x3

    #@56a
    aput v45, v35, v46

    #@56c
    .line 553
    .restart local v35    # "rotate":[F
    move-object/from16 v0, p0

    #@56e
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@570
    move-object/from16 v45, v0

    #@572
    const-string/jumbo v46, "rotate"

    #@575
    move-object/from16 v0, v45

    #@577
    move-object/from16 v1, v46

    #@579
    move-object/from16 v2, v35

    #@57b
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@57e
    .line 554
    move-object/from16 v0, p0

    #@580
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@582
    move-object/from16 v45, v0

    #@584
    const-string/jumbo v46, "amount"

    #@587
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@58a
    move-result-object v47

    #@58b
    invoke-virtual/range {v45 .. v47}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@58e
    .line 556
    move-object/from16 v0, p0

    #@590
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@592
    move-object/from16 v45, v0

    #@594
    move-object/from16 v0, v45

    #@596
    move-object/from16 v1, v32

    #@598
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@59b
    .line 557
    move-object/from16 v0, p0

    #@59d
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@59f
    move-object/from16 v45, v0

    #@5a1
    move-object/from16 v0, v45

    #@5a3
    move-object/from16 v1, v32

    #@5a5
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@5a8
    .line 560
    move-object/from16 v0, p0

    #@5aa
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@5ac
    move-object/from16 v45, v0

    #@5ae
    move-object/from16 v0, v45

    #@5b0
    move-object/from16 v1, v37

    #@5b2
    move-object/from16 v2, v30

    #@5b4
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@5b7
    goto/16 :goto_5

    #@5b9
    .line 509
    .end local v31    # "rect":Landroid/filterfw/geometry/Rectangle;
    .end local v32    # "region":Landroid/filterfw/geometry/Quad;
    .end local v35    # "rotate":[F
    :pswitch_2
    const/16 v45, 0x0

    #@5bb
    aget v45, v29, v45

    #@5bd
    const v46, 0x3d75c28f    # 0.06f

    #@5c0
    mul-float v46, v46, v41

    #@5c2
    sub-float v45, v45, v46

    #@5c4
    const/16 v46, 0x0

    #@5c6
    aput v45, v14, v46

    #@5c8
    .line 510
    const/16 v45, 0x1

    #@5ca
    aget v45, v29, v45

    #@5cc
    const v46, 0x3d75c28f    # 0.06f

    #@5cf
    mul-float v46, v46, v42

    #@5d1
    sub-float v45, v45, v46

    #@5d3
    const/16 v46, 0x1

    #@5d5
    aput v45, v14, v46

    #@5d7
    .line 511
    const v17, 0x3f333333    # 0.7f

    #@5da
    .line 512
    goto/16 :goto_6

    #@5dc
    .line 517
    :pswitch_3
    const/16 v45, 0x0

    #@5de
    aget v45, v29, v45

    #@5e0
    const v46, 0x3d75c28f    # 0.06f

    #@5e3
    mul-float v46, v46, v41

    #@5e5
    sub-float v45, v45, v46

    #@5e7
    const/16 v46, 0x0

    #@5e9
    aput v45, v14, v46

    #@5eb
    .line 518
    const/16 v45, 0x1

    #@5ed
    aget v45, v29, v45

    #@5ef
    const v46, 0x3d75c28f    # 0.06f

    #@5f2
    mul-float v46, v46, v42

    #@5f4
    sub-float v45, v45, v46

    #@5f6
    const/16 v46, 0x1

    #@5f8
    aput v45, v14, v46

    #@5fa
    .line 519
    const/high16 v17, 0x40200000    # 2.5f

    #@5fc
    .line 520
    goto/16 :goto_6

    #@5fe
    .line 525
    :pswitch_4
    const/16 v45, 0x0

    #@600
    aget v45, v27, v45

    #@602
    const/high16 v46, 0x3e800000    # 0.25f

    #@604
    mul-float v45, v45, v46

    #@606
    const/16 v46, 0x0

    #@608
    aget v46, v34, v46

    #@60a
    const/high16 v47, 0x3e800000    # 0.25f

    #@60c
    mul-float v46, v46, v47

    #@60e
    add-float v45, v45, v46

    #@610
    const/16 v46, 0x0

    #@612
    aget v46, v29, v46

    #@614
    const/high16 v47, 0x3f000000    # 0.5f

    #@616
    mul-float v46, v46, v47

    #@618
    add-float v45, v45, v46

    #@61a
    const/16 v46, 0x0

    #@61c
    aput v45, v14, v46

    #@61e
    .line 526
    const/16 v45, 0x1

    #@620
    aget v45, v27, v45

    #@622
    const/high16 v46, 0x3e800000    # 0.25f

    #@624
    mul-float v45, v45, v46

    #@626
    const/16 v46, 0x1

    #@628
    aget v46, v34, v46

    #@62a
    const/high16 v47, 0x3e800000    # 0.25f

    #@62c
    mul-float v46, v46, v47

    #@62e
    add-float v45, v45, v46

    #@630
    const/16 v46, 0x1

    #@632
    aget v46, v29, v46

    #@634
    const/high16 v47, 0x3f000000    # 0.5f

    #@636
    mul-float v46, v46, v47

    #@638
    add-float v45, v45, v46

    #@63a
    const/16 v46, 0x1

    #@63c
    aput v45, v14, v46

    #@63e
    .line 527
    const v17, 0x3f8ccccd    # 1.1f

    #@641
    .line 528
    goto/16 :goto_6

    #@643
    .line 533
    :pswitch_5
    const/16 v45, 0x0

    #@645
    aget v45, v27, v45

    #@647
    const/high16 v46, 0x3e800000    # 0.25f

    #@649
    mul-float v45, v45, v46

    #@64b
    const/16 v46, 0x0

    #@64d
    aget v46, v34, v46

    #@64f
    const/high16 v47, 0x3e800000    # 0.25f

    #@651
    mul-float v46, v46, v47

    #@653
    add-float v45, v45, v46

    #@655
    const/16 v46, 0x0

    #@657
    aget v46, v29, v46

    #@659
    const/high16 v47, 0x3f000000    # 0.5f

    #@65b
    mul-float v46, v46, v47

    #@65d
    add-float v45, v45, v46

    #@65f
    const/16 v46, 0x0

    #@661
    aput v45, v14, v46

    #@663
    .line 534
    const/16 v45, 0x1

    #@665
    aget v45, v27, v45

    #@667
    const/high16 v46, 0x3e800000    # 0.25f

    #@669
    mul-float v45, v45, v46

    #@66b
    const/16 v46, 0x1

    #@66d
    aget v46, v34, v46

    #@66f
    const/high16 v47, 0x3e800000    # 0.25f

    #@671
    mul-float v46, v46, v47

    #@673
    add-float v45, v45, v46

    #@675
    const/16 v46, 0x1

    #@677
    aget v46, v29, v46

    #@679
    const/high16 v47, 0x3f000000    # 0.5f

    #@67b
    mul-float v46, v46, v47

    #@67d
    add-float v45, v45, v46

    #@67f
    const/16 v46, 0x1

    #@681
    aput v45, v14, v46

    #@683
    .line 535
    const/high16 v17, 0x40000000    # 2.0f

    #@685
    .line 536
    goto/16 :goto_6

    #@687
    .line 563
    .end local v7    # "angle":F
    .end local v8    # "angleEyes":F
    .end local v9    # "angleFace":F
    .end local v15    # "dx":F
    .end local v16    # "dy":F
    .end local v17    # "effectSize":F
    .end local v27    # "leftEye":[F
    .end local v28    # "length":F
    .end local v29    # "mouth":[F
    .end local v34    # "rightEye":[F
    .end local v41    # "v_axis_x":F
    .end local v42    # "v_axis_y":F
    :cond_b
    const-string/jumbo v45, "outimage"

    #@68a
    move-object/from16 v0, p0

    #@68c
    move-object/from16 v1, v45

    #@68e
    move-object/from16 v2, v30

    #@690
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@693
    .line 564
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@696
    .line 565
    if-eqz v13, :cond_c

    #@698
    .line 566
    invoke-virtual {v13}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@69b
    .line 381
    .end local v6    # "amount":F
    .end local v12    # "buf1":Landroid/filterfw/core/Frame;
    .end local v22    # "i":I
    .end local v30    # "output":Landroid/filterfw/core/Frame;
    .end local v37    # "source":Landroid/filterfw/core/Frame;
    :cond_c
    :goto_7
    return-void

    #@69c
    .line 568
    :cond_d
    const-string/jumbo v45, "outimage"

    #@69f
    move-object/from16 v0, p0

    #@6a1
    move-object/from16 v1, v45

    #@6a3
    move-object/from16 v2, v23

    #@6a5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@6a8
    goto :goto_7

    #@6a9
    .line 496
    nop

    #@6aa
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
    .line 157
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v1

    #@5
    .line 159
    .local v1, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@7
    .line 160
    const/4 v3, 0x2

    #@8
    .line 159
    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 163
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "image"

    #@f
    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@12
    .line 164
    const-string/jumbo v2, "faces"

    #@15
    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 165
    const-string/jumbo v2, "outimage"

    #@1b
    const-string/jumbo v3, "image"

    #@1e
    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 155
    return-void
.end method

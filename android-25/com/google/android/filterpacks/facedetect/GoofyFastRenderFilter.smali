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
    add-float v4, p1, v5

    #@19
    neg-float v4, v4

    #@1a
    add-float/2addr v5, p1

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
    neg-float v5, p1

    #@36
    mul-float/2addr v5, p1

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
    add-float/2addr v6, p1

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
    mul-float v0, p1, v1

    #@70
    .line 216
    :cond_0
    const v4, -0x40d9999a    # -0.65f

    #@73
    mul-float/2addr v4, p2

    #@74
    neg-float v5, v0

    #@75
    mul-float/2addr v5, v0

    #@76
    const v6, 0x3efae147    # 0.48999998f

    #@79
    div-float/2addr v5, v6

    #@7a
    float-to-double v6, v5

    #@7b
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@7e
    move-result-wide v6

    #@7f
    double-to-float v5, v6

    #@80
    mul-float v3, v4, v5

    #@82
    .line 217
    goto :goto_0

    #@83
    .line 190
    nop

    #@84
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
    invoke-virtual {v13, v12}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@124
    .line 453
    :cond_3
    :goto_4
    const/16 v45, 0x2

    #@126
    move/from16 v0, v45

    #@128
    new-array v0, v0, [F

    #@12a
    move-object/from16 v27, v0

    #@12c
    move-object/from16 v0, v19

    #@12e
    move/from16 v1, v22

    #@130
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@133
    move-result v45

    #@134
    const/16 v46, 0x0

    #@136
    aput v45, v27, v46

    #@138
    move-object/from16 v0, v19

    #@13a
    move/from16 v1, v22

    #@13c
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@13f
    move-result v45

    #@140
    const/16 v46, 0x1

    #@142
    aput v45, v27, v46

    #@144
    .line 454
    .local v27, "leftEye":[F
    const/16 v45, 0x2

    #@146
    move/from16 v0, v45

    #@148
    new-array v0, v0, [F

    #@14a
    move-object/from16 v34, v0

    #@14c
    move-object/from16 v0, v19

    #@14e
    move/from16 v1, v22

    #@150
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@153
    move-result v45

    #@154
    const/16 v46, 0x0

    #@156
    aput v45, v34, v46

    #@158
    move-object/from16 v0, v19

    #@15a
    move/from16 v1, v22

    #@15c
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@15f
    move-result v45

    #@160
    const/16 v46, 0x1

    #@162
    aput v45, v34, v46

    #@164
    .line 455
    .local v34, "rightEye":[F
    const/16 v45, 0x2

    #@166
    move/from16 v0, v45

    #@168
    new-array v0, v0, [F

    #@16a
    move-object/from16 v29, v0

    #@16c
    move-object/from16 v0, v19

    #@16e
    move/from16 v1, v22

    #@170
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthX(I)F

    #@173
    move-result v45

    #@174
    const/16 v46, 0x0

    #@176
    aput v45, v29, v46

    #@178
    move-object/from16 v0, v19

    #@17a
    move/from16 v1, v22

    #@17c
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getMouthY(I)F

    #@17f
    move-result v45

    #@180
    const/16 v46, 0x1

    #@182
    aput v45, v29, v46

    #@184
    .line 456
    .local v29, "mouth":[F
    const/16 v45, 0x1

    #@186
    aget v45, v34, v45

    #@188
    const/16 v46, 0x1

    #@18a
    aget v46, v27, v46

    #@18c
    sub-float v45, v45, v46

    #@18e
    const/16 v46, 0x1

    #@190
    aget v46, v10, v46

    #@192
    mul-float v45, v45, v46

    #@194
    move/from16 v0, v45

    #@196
    float-to-double v0, v0

    #@197
    move-wide/from16 v46, v0

    #@199
    .line 457
    const/16 v45, 0x0

    #@19b
    aget v45, v34, v45

    #@19d
    const/16 v48, 0x0

    #@19f
    aget v48, v27, v48

    #@1a1
    sub-float v45, v45, v48

    #@1a3
    const/16 v48, 0x0

    #@1a5
    aget v48, v10, v48

    #@1a7
    mul-float v45, v45, v48

    #@1a9
    move/from16 v0, v45

    #@1ab
    float-to-double v0, v0

    #@1ac
    move-wide/from16 v48, v0

    #@1ae
    .line 456
    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->atan2(DD)D

    #@1b1
    move-result-wide v46

    #@1b2
    move-wide/from16 v0, v46

    #@1b4
    double-to-float v8, v0

    #@1b5
    .line 458
    .local v8, "angleEyes":F
    const/16 v45, 0x0

    #@1b7
    aget v45, v34, v45

    #@1b9
    const/16 v46, 0x0

    #@1bb
    aget v46, v27, v46

    #@1bd
    add-float v45, v45, v46

    #@1bf
    const/high16 v46, 0x40000000    # 2.0f

    #@1c1
    div-float v45, v45, v46

    #@1c3
    const/16 v46, 0x0

    #@1c5
    aget v46, v29, v46

    #@1c7
    sub-float v41, v45, v46

    #@1c9
    .line 459
    .local v41, "v_axis_x":F
    const/16 v45, 0x1

    #@1cb
    aget v45, v34, v45

    #@1cd
    const/16 v46, 0x1

    #@1cf
    aget v46, v27, v46

    #@1d1
    add-float v45, v45, v46

    #@1d3
    const/high16 v46, 0x40000000    # 2.0f

    #@1d5
    div-float v45, v45, v46

    #@1d7
    const/16 v46, 0x1

    #@1d9
    aget v46, v29, v46

    #@1db
    sub-float v42, v45, v46

    #@1dd
    .line 460
    .local v42, "v_axis_y":F
    move/from16 v0, v42

    #@1df
    float-to-double v0, v0

    #@1e0
    move-wide/from16 v46, v0

    #@1e2
    move/from16 v0, v41

    #@1e4
    float-to-double v0, v0

    #@1e5
    move-wide/from16 v48, v0

    #@1e7
    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->atan2(DD)D

    #@1ea
    move-result-wide v46

    #@1eb
    move-wide/from16 v0, v46

    #@1ed
    double-to-float v9, v0

    #@1ee
    .line 461
    .local v9, "angleFace":F
    float-to-double v0, v9

    #@1ef
    move-wide/from16 v46, v0

    #@1f1
    const-wide v48, 0x3ff921fb54442d18L    # 1.5707963267948966

    #@1f6
    sub-double v46, v46, v48

    #@1f8
    move-wide/from16 v0, v46

    #@1fa
    double-to-float v9, v0

    #@1fb
    .line 463
    const/16 v45, 0x0

    #@1fd
    aget v45, v27, v45

    #@1ff
    const/16 v46, 0x0

    #@201
    aget v46, v34, v46

    #@203
    sub-float v45, v45, v46

    #@205
    const/16 v46, 0x0

    #@207
    aget v46, v10, v46

    #@209
    mul-float v15, v45, v46

    #@20b
    .line 464
    .local v15, "dx":F
    const/16 v45, 0x1

    #@20d
    aget v45, v27, v45

    #@20f
    const/16 v46, 0x1

    #@211
    aget v46, v34, v46

    #@213
    sub-float v45, v45, v46

    #@215
    const/16 v46, 0x1

    #@217
    aget v46, v10, v46

    #@219
    mul-float v16, v45, v46

    #@21b
    .line 465
    .local v16, "dy":F
    mul-float v45, v15, v15

    #@21d
    mul-float v46, v16, v16

    #@21f
    add-float v45, v45, v46

    #@221
    move/from16 v0, v45

    #@223
    float-to-double v0, v0

    #@224
    move-wide/from16 v46, v0

    #@226
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    #@229
    move-result-wide v46

    #@22a
    move-wide/from16 v0, v46

    #@22c
    double-to-float v0, v0

    #@22d
    move/from16 v28, v0

    #@22f
    .line 467
    .local v28, "length":F
    move-object/from16 v0, p0

    #@231
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@233
    move/from16 v45, v0

    #@235
    const/16 v46, 0x1

    #@237
    move/from16 v0, v45

    #@239
    move/from16 v1, v46

    #@23b
    if-ne v0, v1, :cond_a

    #@23d
    .line 468
    const/16 v45, 0x1

    #@23f
    aget v45, v27, v45

    #@241
    sub-float v45, v45, v28

    #@243
    const/16 v46, 0x1

    #@245
    aget v46, v34, v46

    #@247
    sub-float v46, v46, v28

    #@249
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->min(FF)F

    #@24c
    move-result v40

    #@24d
    .line 469
    .local v40, "top":F
    const/16 v45, 0x0

    #@24f
    aget v45, v27, v45

    #@251
    sub-float v45, v45, v28

    #@253
    const/16 v46, 0x0

    #@255
    aget v46, v34, v46

    #@257
    sub-float v46, v46, v28

    #@259
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->min(FF)F

    #@25c
    move-result v26

    #@25d
    .line 471
    .local v26, "left":F
    const/16 v45, 0x1

    #@25f
    aget v45, v27, v45

    #@261
    add-float v45, v45, v28

    #@263
    const/16 v46, 0x1

    #@265
    aget v46, v34, v46

    #@267
    add-float v46, v46, v28

    #@269
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    #@26c
    move-result v11

    #@26d
    .line 472
    .local v11, "bottom":F
    const/16 v45, 0x0

    #@26f
    aget v45, v27, v45

    #@271
    add-float v45, v45, v28

    #@273
    const/16 v46, 0x0

    #@275
    aget v46, v34, v46

    #@277
    add-float v46, v46, v28

    #@279
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(FF)F

    #@27c
    move-result v33

    #@27d
    .line 474
    .local v33, "right":F
    new-instance v31, Landroid/filterfw/geometry/Rectangle;

    #@27f
    sub-float v45, v33, v26

    #@281
    sub-float v46, v11, v40

    #@283
    move-object/from16 v0, v31

    #@285
    move/from16 v1, v26

    #@287
    move/from16 v2, v40

    #@289
    move/from16 v3, v45

    #@28b
    move/from16 v4, v46

    #@28d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@290
    .line 475
    .local v31, "rect":Landroid/filterfw/geometry/Rectangle;
    const/16 v45, 0x0

    #@292
    const/16 v46, 0x0

    #@294
    move-object/from16 v0, v31

    #@296
    move/from16 v1, v45

    #@298
    move/from16 v2, v46

    #@29a
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@29d
    move-result-object v32

    #@29e
    .line 477
    .local v32, "region":Landroid/filterfw/geometry/Quad;
    const/16 v45, 0x0

    #@2a0
    aget v45, v27, v45

    #@2a2
    const/16 v46, 0x0

    #@2a4
    aget v46, v34, v46

    #@2a6
    add-float v45, v45, v46

    #@2a8
    const/high16 v46, 0x40000000    # 2.0f

    #@2aa
    div-float v45, v45, v46

    #@2ac
    const/16 v46, 0x0

    #@2ae
    aput v45, v14, v46

    #@2b0
    .line 478
    const/16 v45, 0x1

    #@2b2
    aget v45, v27, v45

    #@2b4
    const/16 v46, 0x1

    #@2b6
    aget v46, v34, v46

    #@2b8
    add-float v45, v45, v46

    #@2ba
    const/high16 v46, 0x40000000    # 2.0f

    #@2bc
    div-float v45, v45, v46

    #@2be
    const/16 v46, 0x1

    #@2c0
    aput v45, v14, v46

    #@2c2
    .line 479
    move-object/from16 v0, p0

    #@2c4
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@2c6
    move-object/from16 v45, v0

    #@2c8
    const-string/jumbo v46, "center"

    #@2cb
    move-object/from16 v0, v45

    #@2cd
    move-object/from16 v1, v46

    #@2cf
    invoke-virtual {v0, v1, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2d2
    .line 480
    const/16 v45, 0x4

    #@2d4
    move/from16 v0, v45

    #@2d6
    new-array v0, v0, [F

    #@2d8
    move-object/from16 v35, v0

    #@2da
    float-to-double v0, v8

    #@2db
    move-wide/from16 v46, v0

    #@2dd
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@2e0
    move-result-wide v46

    #@2e1
    move-wide/from16 v0, v46

    #@2e3
    double-to-float v0, v0

    #@2e4
    move/from16 v45, v0

    #@2e6
    const/16 v46, 0x0

    #@2e8
    aput v45, v35, v46

    #@2ea
    float-to-double v0, v8

    #@2eb
    move-wide/from16 v46, v0

    #@2ed
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@2f0
    move-result-wide v46

    #@2f1
    move-wide/from16 v0, v46

    #@2f3
    double-to-float v0, v0

    #@2f4
    move/from16 v45, v0

    #@2f6
    const/16 v46, 0x1

    #@2f8
    aput v45, v35, v46

    #@2fa
    .line 481
    float-to-double v0, v8

    #@2fb
    move-wide/from16 v46, v0

    #@2fd
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@300
    move-result-wide v46

    #@301
    move-wide/from16 v0, v46

    #@303
    neg-double v0, v0

    #@304
    move-wide/from16 v46, v0

    #@306
    move-wide/from16 v0, v46

    #@308
    double-to-float v0, v0

    #@309
    move/from16 v45, v0

    #@30b
    const/16 v46, 0x2

    #@30d
    aput v45, v35, v46

    #@30f
    float-to-double v0, v8

    #@310
    move-wide/from16 v46, v0

    #@312
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@315
    move-result-wide v46

    #@316
    move-wide/from16 v0, v46

    #@318
    double-to-float v0, v0

    #@319
    move/from16 v45, v0

    #@31b
    const/16 v46, 0x3

    #@31d
    aput v45, v35, v46

    #@31f
    .line 482
    .local v35, "rotate":[F
    move-object/from16 v0, p0

    #@321
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@323
    move-object/from16 v45, v0

    #@325
    const-string/jumbo v46, "rotate"

    #@328
    move-object/from16 v0, v45

    #@32a
    move-object/from16 v1, v46

    #@32c
    move-object/from16 v2, v35

    #@32e
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@331
    .line 483
    const/16 v45, 0x2

    #@333
    move/from16 v0, v45

    #@335
    new-array v0, v0, [F

    #@337
    move-object/from16 v36, v0

    #@339
    const/16 v45, 0x0

    #@33b
    aget v45, v10, v45

    #@33d
    div-float v45, v28, v45

    #@33f
    const/16 v46, 0x0

    #@341
    aput v45, v36, v46

    #@343
    const/16 v45, 0x1

    #@345
    aget v45, v10, v45

    #@347
    div-float v45, v28, v45

    #@349
    const/16 v46, 0x1

    #@34b
    aput v45, v36, v46

    #@34d
    .line 484
    .local v36, "scales":[F
    move-object/from16 v0, p0

    #@34f
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@351
    move-object/from16 v45, v0

    #@353
    const-string/jumbo v46, "weight"

    #@356
    move-object/from16 v0, v45

    #@358
    move-object/from16 v1, v46

    #@35a
    move-object/from16 v2, v36

    #@35c
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@35f
    .line 485
    move-object/from16 v0, p0

    #@361
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@363
    move-object/from16 v45, v0

    #@365
    const-string/jumbo v46, "amount"

    #@368
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@36b
    move-result-object v47

    #@36c
    invoke-virtual/range {v45 .. v47}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@36f
    .line 487
    move-object/from16 v0, p0

    #@371
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@373
    move-object/from16 v45, v0

    #@375
    move-object/from16 v0, v45

    #@377
    move-object/from16 v1, v32

    #@379
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@37c
    .line 488
    move-object/from16 v0, p0

    #@37e
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@380
    move-object/from16 v45, v0

    #@382
    move-object/from16 v0, v45

    #@384
    move-object/from16 v1, v32

    #@386
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@389
    .line 491
    move-object/from16 v0, p0

    #@38b
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mBigEyesProgram:Landroid/filterfw/core/ShaderProgram;

    #@38d
    move-object/from16 v45, v0

    #@38f
    move-object/from16 v0, v45

    #@391
    move-object/from16 v1, v37

    #@393
    move-object/from16 v2, v30

    #@395
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@398
    .line 439
    .end local v11    # "bottom":F
    .end local v26    # "left":F
    .end local v33    # "right":F
    .end local v36    # "scales":[F
    .end local v40    # "top":F
    :goto_5
    add-int/lit8 v22, v22, 0x1

    #@39a
    goto/16 :goto_3

    #@39c
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

    #@39e
    move/from16 v0, v45

    #@3a0
    new-array v10, v0, [F

    #@3a2
    move/from16 v0, v44

    #@3a4
    int-to-float v0, v0

    #@3a5
    move/from16 v45, v0

    #@3a7
    move/from16 v0, v21

    #@3a9
    int-to-float v0, v0

    #@3aa
    move/from16 v46, v0

    #@3ac
    div-float v45, v45, v46

    #@3ae
    const/16 v46, 0x0

    #@3b0
    aput v45, v10, v46

    #@3b2
    const/high16 v45, 0x3f800000    # 1.0f

    #@3b4
    const/16 v46, 0x1

    #@3b6
    aput v45, v10, v46

    #@3b8
    .restart local v10    # "aspectRatio":[F
    goto/16 :goto_0

    #@3ba
    .line 400
    :cond_5
    const/16 v45, 0x0

    #@3bc
    aget v45, v10, v45

    #@3be
    move-object/from16 v0, p0

    #@3c0
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@3c2
    move-object/from16 v46, v0

    #@3c4
    const/16 v47, 0x0

    #@3c6
    aget v46, v46, v47

    #@3c8
    cmpl-float v45, v45, v46

    #@3ca
    if-nez v45, :cond_6

    #@3cc
    const/16 v45, 0x1

    #@3ce
    aget v45, v10, v45

    #@3d0
    move-object/from16 v0, p0

    #@3d2
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@3d4
    move-object/from16 v46, v0

    #@3d6
    const/16 v47, 0x1

    #@3d8
    aget v46, v46, v47

    #@3da
    cmpl-float v45, v45, v46

    #@3dc
    if-eqz v45, :cond_0

    #@3de
    .line 401
    :cond_6
    move-object/from16 v0, p0

    #@3e0
    iput-object v10, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAspect:[F

    #@3e2
    .line 402
    invoke-direct/range {p0 .. p1}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->createMesh(Landroid/filterfw/core/FilterContext;)V

    #@3e5
    goto/16 :goto_1

    #@3e7
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

    #@3e9
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentTimeStamp:J

    #@3eb
    move-wide/from16 v46, v0

    #@3ed
    move-object/from16 v0, p0

    #@3ef
    iget-wide v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimationStartTimeStamp:J

    #@3f1
    move-wide/from16 v48, v0

    #@3f3
    sub-long v38, v46, v48

    #@3f5
    .line 423
    .local v38, "t":J
    const-wide/32 v46, 0xf4240

    #@3f8
    div-long v38, v38, v46

    #@3fa
    .line 424
    move-wide/from16 v0, v38

    #@3fc
    long-to-float v0, v0

    #@3fd
    move/from16 v45, v0

    #@3ff
    const/high16 v46, 0x44fa0000    # 2000.0f

    #@401
    div-float v45, v45, v46

    #@403
    move-object/from16 v0, p0

    #@405
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mDistortionAmount:F

    #@407
    move/from16 v46, v0

    #@409
    mul-float v45, v45, v46

    #@40b
    move/from16 v0, v45

    #@40d
    move-object/from16 v1, p0

    #@40f
    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@411
    goto/16 :goto_2

    #@413
    .line 427
    .end local v25    # "kAnimationDuration":F
    .end local v38    # "t":J
    :cond_8
    move-object/from16 v0, p0

    #@415
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@417
    move/from16 v45, v0

    #@419
    const v46, 0x3cf5c28f    # 0.03f

    #@41c
    add-float v45, v45, v46

    #@41e
    move/from16 v0, v45

    #@420
    move-object/from16 v1, p0

    #@422
    iput v0, v1, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mAnimateCurrent:F

    #@424
    goto/16 :goto_2

    #@426
    .line 447
    .restart local v12    # "buf1":Landroid/filterfw/core/Frame;
    .restart local v22    # "i":I
    .restart local v30    # "output":Landroid/filterfw/core/Frame;
    .restart local v37    # "source":Landroid/filterfw/core/Frame;
    :cond_9
    move-object/from16 v37, v13

    #@428
    .line 448
    move-object/from16 v30, v12

    #@42a
    .line 449
    invoke-virtual {v12, v13}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@42d
    goto/16 :goto_4

    #@42f
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

    #@430
    .line 495
    .local v7, "angle":F
    const/high16 v17, 0x3f800000    # 1.0f

    #@432
    .line 496
    .local v17, "effectSize":F
    move-object/from16 v0, p0

    #@434
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@436
    move/from16 v45, v0

    #@438
    packed-switch v45, :pswitch_data_0

    #@43b
    .line 538
    :pswitch_0
    new-instance v45, Ljava/lang/RuntimeException;

    #@43d
    new-instance v46, Ljava/lang/StringBuilder;

    #@43f
    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    #@442
    const-string/jumbo v47, "Undefined effect: "

    #@445
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@448
    move-result-object v46

    #@449
    move-object/from16 v0, p0

    #@44b
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mCurrentEffect:I

    #@44d
    move/from16 v47, v0

    #@44f
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@452
    move-result-object v46

    #@453
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@456
    move-result-object v46

    #@457
    invoke-direct/range {v45 .. v46}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@45a
    throw v45

    #@45b
    .line 499
    :pswitch_1
    const/16 v45, 0x0

    #@45d
    aget v45, v27, v45

    #@45f
    const/high16 v46, 0x3f000000    # 0.5f

    #@461
    mul-float v45, v45, v46

    #@463
    const/16 v46, 0x0

    #@465
    aget v46, v34, v46

    #@467
    const/high16 v47, 0x3f000000    # 0.5f

    #@469
    mul-float v46, v46, v47

    #@46b
    add-float v45, v45, v46

    #@46d
    const/16 v46, 0x0

    #@46f
    aget v46, v29, v46

    #@471
    const v47, 0x38d1b717    # 1.0E-4f

    #@474
    mul-float v46, v46, v47

    #@476
    add-float v45, v45, v46

    #@478
    const/16 v46, 0x0

    #@47a
    aput v45, v14, v46

    #@47c
    .line 500
    const/16 v45, 0x1

    #@47e
    aget v45, v27, v45

    #@480
    const/high16 v46, 0x3f000000    # 0.5f

    #@482
    mul-float v45, v45, v46

    #@484
    const/16 v46, 0x1

    #@486
    aget v46, v34, v46

    #@488
    const/high16 v47, 0x3f000000    # 0.5f

    #@48a
    mul-float v46, v46, v47

    #@48c
    add-float v45, v45, v46

    #@48e
    const/16 v46, 0x1

    #@490
    aget v46, v29, v46

    #@492
    const v47, 0x38d1b717    # 1.0E-4f

    #@495
    mul-float v46, v46, v47

    #@497
    add-float v45, v45, v46

    #@499
    const/16 v46, 0x1

    #@49b
    aput v45, v14, v46

    #@49d
    .line 501
    const/high16 v17, 0x3f800000    # 1.0f

    #@49f
    .line 503
    move v7, v8

    #@4a0
    .line 541
    :goto_6
    mul-float v45, v17, v28

    #@4a2
    const/16 v46, 0x0

    #@4a4
    aget v46, v10, v46

    #@4a6
    div-float v45, v45, v46

    #@4a8
    const/16 v46, 0x0

    #@4aa
    aput v45, v43, v46

    #@4ac
    .line 542
    mul-float v45, v17, v28

    #@4ae
    const/16 v46, 0x1

    #@4b0
    aget v46, v10, v46

    #@4b2
    div-float v45, v45, v46

    #@4b4
    const/16 v46, 0x1

    #@4b6
    aput v45, v43, v46

    #@4b8
    .line 543
    new-instance v31, Landroid/filterfw/geometry/Rectangle;

    #@4ba
    .line 544
    const/16 v45, 0x0

    #@4bc
    aget v45, v43, v45

    #@4be
    const/high16 v46, -0x40800000    # -1.0f

    #@4c0
    mul-float v45, v45, v46

    #@4c2
    const/16 v46, 0x1

    #@4c4
    aget v46, v43, v46

    #@4c6
    const/high16 v47, -0x40800000    # -1.0f

    #@4c8
    mul-float v46, v46, v47

    #@4ca
    const/16 v47, 0x0

    #@4cc
    aget v47, v43, v47

    #@4ce
    const/high16 v48, 0x40000000    # 2.0f

    #@4d0
    mul-float v47, v47, v48

    #@4d2
    const/16 v48, 0x1

    #@4d4
    aget v48, v43, v48

    #@4d6
    const/high16 v49, 0x40000000    # 2.0f

    #@4d8
    mul-float v48, v48, v49

    #@4da
    .line 543
    move-object/from16 v0, v31

    #@4dc
    move/from16 v1, v45

    #@4de
    move/from16 v2, v46

    #@4e0
    move/from16 v3, v47

    #@4e2
    move/from16 v4, v48

    #@4e4
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Rectangle;-><init>(FFFF)V

    #@4e7
    .line 546
    .restart local v31    # "rect":Landroid/filterfw/geometry/Rectangle;
    const/16 v45, 0x0

    #@4e9
    aget v45, v14, v45

    #@4eb
    const/16 v46, 0x1

    #@4ed
    aget v46, v14, v46

    #@4ef
    move-object/from16 v0, v31

    #@4f1
    move/from16 v1, v45

    #@4f3
    move/from16 v2, v46

    #@4f5
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Rectangle;->translated(FF)Landroid/filterfw/geometry/Quad;

    #@4f8
    move-result-object v32

    #@4f9
    .line 549
    .restart local v32    # "region":Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, p0

    #@4fb
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@4fd
    move-object/from16 v45, v0

    #@4ff
    const-string/jumbo v46, "center"

    #@502
    move-object/from16 v0, v45

    #@504
    move-object/from16 v1, v46

    #@506
    invoke-virtual {v0, v1, v14}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@509
    .line 550
    move-object/from16 v0, p0

    #@50b
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@50d
    move-object/from16 v45, v0

    #@50f
    const-string/jumbo v46, "weight"

    #@512
    move-object/from16 v0, v45

    #@514
    move-object/from16 v1, v46

    #@516
    move-object/from16 v2, v43

    #@518
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@51b
    .line 551
    const/16 v45, 0x4

    #@51d
    move/from16 v0, v45

    #@51f
    new-array v0, v0, [F

    #@521
    move-object/from16 v35, v0

    #@523
    float-to-double v0, v7

    #@524
    move-wide/from16 v46, v0

    #@526
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@529
    move-result-wide v46

    #@52a
    move-wide/from16 v0, v46

    #@52c
    double-to-float v0, v0

    #@52d
    move/from16 v45, v0

    #@52f
    const/16 v46, 0x0

    #@531
    aput v45, v35, v46

    #@533
    float-to-double v0, v7

    #@534
    move-wide/from16 v46, v0

    #@536
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@539
    move-result-wide v46

    #@53a
    move-wide/from16 v0, v46

    #@53c
    double-to-float v0, v0

    #@53d
    move/from16 v45, v0

    #@53f
    const/16 v46, 0x1

    #@541
    aput v45, v35, v46

    #@543
    .line 552
    float-to-double v0, v7

    #@544
    move-wide/from16 v46, v0

    #@546
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sin(D)D

    #@549
    move-result-wide v46

    #@54a
    move-wide/from16 v0, v46

    #@54c
    neg-double v0, v0

    #@54d
    move-wide/from16 v46, v0

    #@54f
    move-wide/from16 v0, v46

    #@551
    double-to-float v0, v0

    #@552
    move/from16 v45, v0

    #@554
    const/16 v46, 0x2

    #@556
    aput v45, v35, v46

    #@558
    float-to-double v0, v7

    #@559
    move-wide/from16 v46, v0

    #@55b
    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->cos(D)D

    #@55e
    move-result-wide v46

    #@55f
    move-wide/from16 v0, v46

    #@561
    double-to-float v0, v0

    #@562
    move/from16 v45, v0

    #@564
    const/16 v46, 0x3

    #@566
    aput v45, v35, v46

    #@568
    .line 553
    .restart local v35    # "rotate":[F
    move-object/from16 v0, p0

    #@56a
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@56c
    move-object/from16 v45, v0

    #@56e
    const-string/jumbo v46, "rotate"

    #@571
    move-object/from16 v0, v45

    #@573
    move-object/from16 v1, v46

    #@575
    move-object/from16 v2, v35

    #@577
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@57a
    .line 554
    move-object/from16 v0, p0

    #@57c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@57e
    move-object/from16 v45, v0

    #@580
    const-string/jumbo v46, "amount"

    #@583
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@586
    move-result-object v47

    #@587
    invoke-virtual/range {v45 .. v47}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@58a
    .line 556
    move-object/from16 v0, p0

    #@58c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@58e
    move-object/from16 v45, v0

    #@590
    move-object/from16 v0, v45

    #@592
    move-object/from16 v1, v32

    #@594
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    #@597
    .line 557
    move-object/from16 v0, p0

    #@599
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@59b
    move-object/from16 v45, v0

    #@59d
    move-object/from16 v0, v45

    #@59f
    move-object/from16 v1, v32

    #@5a1
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@5a4
    .line 560
    move-object/from16 v0, p0

    #@5a6
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->mIdentityProgram:Landroid/filterfw/core/ShaderProgram;

    #@5a8
    move-object/from16 v45, v0

    #@5aa
    move-object/from16 v0, v45

    #@5ac
    move-object/from16 v1, v37

    #@5ae
    move-object/from16 v2, v30

    #@5b0
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@5b3
    goto/16 :goto_5

    #@5b5
    .line 509
    .end local v31    # "rect":Landroid/filterfw/geometry/Rectangle;
    .end local v32    # "region":Landroid/filterfw/geometry/Quad;
    .end local v35    # "rotate":[F
    :pswitch_2
    const/16 v45, 0x0

    #@5b7
    aget v45, v29, v45

    #@5b9
    const v46, 0x3d75c28f    # 0.06f

    #@5bc
    mul-float v46, v46, v41

    #@5be
    sub-float v45, v45, v46

    #@5c0
    const/16 v46, 0x0

    #@5c2
    aput v45, v14, v46

    #@5c4
    .line 510
    const/16 v45, 0x1

    #@5c6
    aget v45, v29, v45

    #@5c8
    const v46, 0x3d75c28f    # 0.06f

    #@5cb
    mul-float v46, v46, v42

    #@5cd
    sub-float v45, v45, v46

    #@5cf
    const/16 v46, 0x1

    #@5d1
    aput v45, v14, v46

    #@5d3
    .line 511
    const v17, 0x3f333333    # 0.7f

    #@5d6
    .line 512
    goto/16 :goto_6

    #@5d8
    .line 517
    :pswitch_3
    const/16 v45, 0x0

    #@5da
    aget v45, v29, v45

    #@5dc
    const v46, 0x3d75c28f    # 0.06f

    #@5df
    mul-float v46, v46, v41

    #@5e1
    sub-float v45, v45, v46

    #@5e3
    const/16 v46, 0x0

    #@5e5
    aput v45, v14, v46

    #@5e7
    .line 518
    const/16 v45, 0x1

    #@5e9
    aget v45, v29, v45

    #@5eb
    const v46, 0x3d75c28f    # 0.06f

    #@5ee
    mul-float v46, v46, v42

    #@5f0
    sub-float v45, v45, v46

    #@5f2
    const/16 v46, 0x1

    #@5f4
    aput v45, v14, v46

    #@5f6
    .line 519
    const/high16 v17, 0x40200000    # 2.5f

    #@5f8
    .line 520
    goto/16 :goto_6

    #@5fa
    .line 525
    :pswitch_4
    const/16 v45, 0x0

    #@5fc
    aget v45, v27, v45

    #@5fe
    const/high16 v46, 0x3e800000    # 0.25f

    #@600
    mul-float v45, v45, v46

    #@602
    const/16 v46, 0x0

    #@604
    aget v46, v34, v46

    #@606
    const/high16 v47, 0x3e800000    # 0.25f

    #@608
    mul-float v46, v46, v47

    #@60a
    add-float v45, v45, v46

    #@60c
    const/16 v46, 0x0

    #@60e
    aget v46, v29, v46

    #@610
    const/high16 v47, 0x3f000000    # 0.5f

    #@612
    mul-float v46, v46, v47

    #@614
    add-float v45, v45, v46

    #@616
    const/16 v46, 0x0

    #@618
    aput v45, v14, v46

    #@61a
    .line 526
    const/16 v45, 0x1

    #@61c
    aget v45, v27, v45

    #@61e
    const/high16 v46, 0x3e800000    # 0.25f

    #@620
    mul-float v45, v45, v46

    #@622
    const/16 v46, 0x1

    #@624
    aget v46, v34, v46

    #@626
    const/high16 v47, 0x3e800000    # 0.25f

    #@628
    mul-float v46, v46, v47

    #@62a
    add-float v45, v45, v46

    #@62c
    const/16 v46, 0x1

    #@62e
    aget v46, v29, v46

    #@630
    const/high16 v47, 0x3f000000    # 0.5f

    #@632
    mul-float v46, v46, v47

    #@634
    add-float v45, v45, v46

    #@636
    const/16 v46, 0x1

    #@638
    aput v45, v14, v46

    #@63a
    .line 527
    const v17, 0x3f8ccccd    # 1.1f

    #@63d
    .line 528
    goto/16 :goto_6

    #@63f
    .line 533
    :pswitch_5
    const/16 v45, 0x0

    #@641
    aget v45, v27, v45

    #@643
    const/high16 v46, 0x3e800000    # 0.25f

    #@645
    mul-float v45, v45, v46

    #@647
    const/16 v46, 0x0

    #@649
    aget v46, v34, v46

    #@64b
    const/high16 v47, 0x3e800000    # 0.25f

    #@64d
    mul-float v46, v46, v47

    #@64f
    add-float v45, v45, v46

    #@651
    const/16 v46, 0x0

    #@653
    aget v46, v29, v46

    #@655
    const/high16 v47, 0x3f000000    # 0.5f

    #@657
    mul-float v46, v46, v47

    #@659
    add-float v45, v45, v46

    #@65b
    const/16 v46, 0x0

    #@65d
    aput v45, v14, v46

    #@65f
    .line 534
    const/16 v45, 0x1

    #@661
    aget v45, v27, v45

    #@663
    const/high16 v46, 0x3e800000    # 0.25f

    #@665
    mul-float v45, v45, v46

    #@667
    const/16 v46, 0x1

    #@669
    aget v46, v34, v46

    #@66b
    const/high16 v47, 0x3e800000    # 0.25f

    #@66d
    mul-float v46, v46, v47

    #@66f
    add-float v45, v45, v46

    #@671
    const/16 v46, 0x1

    #@673
    aget v46, v29, v46

    #@675
    const/high16 v47, 0x3f000000    # 0.5f

    #@677
    mul-float v46, v46, v47

    #@679
    add-float v45, v45, v46

    #@67b
    const/16 v46, 0x1

    #@67d
    aput v45, v14, v46

    #@67f
    .line 535
    const/high16 v17, 0x40000000    # 2.0f

    #@681
    .line 536
    goto/16 :goto_6

    #@683
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

    #@686
    move-object/from16 v0, p0

    #@688
    move-object/from16 v1, v45

    #@68a
    move-object/from16 v2, v30

    #@68c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@68f
    .line 564
    invoke-virtual {v12}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@692
    .line 565
    if-eqz v13, :cond_c

    #@694
    .line 566
    invoke-virtual {v13}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@697
    .line 381
    .end local v6    # "amount":F
    .end local v12    # "buf1":Landroid/filterfw/core/Frame;
    .end local v22    # "i":I
    .end local v30    # "output":Landroid/filterfw/core/Frame;
    .end local v37    # "source":Landroid/filterfw/core/Frame;
    :cond_c
    :goto_7
    return-void

    #@698
    .line 568
    :cond_d
    const-string/jumbo v45, "outimage"

    #@69b
    move-object/from16 v0, p0

    #@69d
    move-object/from16 v1, v45

    #@69f
    move-object/from16 v2, v23

    #@6a1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/GoofyFastRenderFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@6a4
    goto :goto_7

    #@6a5
    .line 496
    nop

    #@6a6
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

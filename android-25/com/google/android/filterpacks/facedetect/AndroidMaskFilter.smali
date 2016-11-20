.class public Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;
.super Landroid/filterfw/core/Filter;
.source "AndroidMaskFilter.java"


# instance fields
.field private mAndroidCenterX:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "EyeCenterX"
    .end annotation
.end field

.field private mAndroidCenterY:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "EyeCenterY"
    .end annotation
.end field

.field private mAndroidEyeDist:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "EyeDistance"
    .end annotation
.end field

.field private mOverlayProgram:Landroid/filterfw/core/ShaderProgram;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 52
    return-void
.end method

.method private rotate2D([F[FF)[F
    .locals 8
    .param p1, "x"    # [F
    .param p2, "center"    # [F
    .param p3, "angle"    # F

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 84
    new-array v1, v4, [F

    #@5
    aget v2, p1, v6

    #@7
    aget v3, p2, v6

    #@9
    sub-float/2addr v2, v3

    #@a
    aput v2, v1, v6

    #@c
    aget v2, p1, v7

    #@e
    aget v3, p2, v7

    #@10
    sub-float/2addr v2, v3

    #@11
    aput v2, v1, v7

    #@13
    .line 85
    .local v1, "xx":[F
    new-array v0, v4, [F

    #@15
    aget v2, v1, v6

    #@17
    float-to-double v4, p3

    #@18
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@1b
    move-result-wide v4

    #@1c
    double-to-float v3, v4

    #@1d
    mul-float/2addr v2, v3

    #@1e
    aget v3, v1, v7

    #@20
    float-to-double v4, p3

    #@21
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@24
    move-result-wide v4

    #@25
    double-to-float v4, v4

    #@26
    mul-float/2addr v3, v4

    #@27
    sub-float/2addr v2, v3

    #@28
    aput v2, v0, v6

    #@2a
    .line 86
    aget v2, v1, v6

    #@2c
    float-to-double v4, p3

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    #@30
    move-result-wide v4

    #@31
    double-to-float v3, v4

    #@32
    mul-float/2addr v2, v3

    #@33
    aget v3, v1, v7

    #@35
    float-to-double v4, p3

    #@36
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    #@39
    move-result-wide v4

    #@3a
    double-to-float v4, v4

    #@3b
    mul-float/2addr v3, v4

    #@3c
    add-float/2addr v2, v3

    #@3d
    aput v2, v0, v7

    #@3f
    .line 87
    .local v0, "ret":[F
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 73
    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 78
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@6
    .line 79
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setBlendEnabled(Z)V

    #@c
    .line 80
    iget-object v0, p0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@e
    const/16 v1, 0x302

    #@10
    const/16 v2, 0x303

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setBlendFunc(II)V

    #@15
    .line 77
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 40
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 92
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v18

    #@4
    .line 95
    .local v18, "frameManager":Landroid/filterfw/core/FrameManager;
    const-string/jumbo v35, "image"

    #@7
    move-object/from16 v0, p0

    #@9
    move-object/from16 v1, v35

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@e
    move-result-object v20

    #@f
    .line 96
    .local v20, "imageFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v35, "faces"

    #@12
    move-object/from16 v0, p0

    #@14
    move-object/from16 v1, v35

    #@16
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@19
    move-result-object v15

    #@1a
    .line 97
    .local v15, "facesFrame":Landroid/filterfw/core/Frame;
    const-string/jumbo v35, "android"

    #@1d
    move-object/from16 v0, p0

    #@1f
    move-object/from16 v1, v35

    #@21
    invoke-virtual {v0, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@24
    move-result-object v7

    #@25
    .line 100
    .local v7, "androidFrame":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v20 .. v20}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@28
    move-result-object v24

    #@29
    .line 101
    .local v24, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@2c
    move-result-object v6

    #@2d
    .line 103
    .local v6, "androidFormat":Landroid/filterfw/core/FrameFormat;
    move-object/from16 v0, v18

    #@2f
    move-object/from16 v1, v24

    #@31
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@34
    move-result-object v23

    #@35
    .line 104
    .local v23, "output":Landroid/filterfw/core/Frame;
    move-object/from16 v0, v23

    #@37
    move-object/from16 v1, v20

    #@39
    invoke-virtual {v0, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@3c
    .line 106
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    #@3f
    move-result-object v14

    #@40
    check-cast v14, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@42
    .line 108
    .local v14, "face":Lcom/google/android/filterpacks/facedetect/FaceMeta;
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@46
    move-object/from16 v35, v0

    #@48
    const/16 v36, 0x0

    #@4a
    const/16 v37, 0x0

    #@4c
    const/high16 v38, 0x3f800000    # 1.0f

    #@4e
    const/high16 v39, 0x3f800000    # 1.0f

    #@50
    invoke-virtual/range {v35 .. v39}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@53
    .line 109
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@57
    move-object/from16 v35, v0

    #@59
    const/16 v36, 0x0

    #@5b
    const/16 v37, 0x0

    #@5d
    const/high16 v38, 0x3f800000    # 1.0f

    #@5f
    const/high16 v39, 0x3f800000    # 1.0f

    #@61
    invoke-virtual/range {v35 .. v39}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@64
    .line 111
    invoke-virtual {v14}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->count()I

    #@67
    move-result v22

    #@68
    .line 112
    .local v22, "num_face":I
    const/16 v19, 0x0

    #@6a
    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    #@6c
    move/from16 v1, v22

    #@6e
    if-ge v0, v1, :cond_0

    #@70
    .line 113
    new-instance v16, Landroid/filterfw/geometry/Point;

    #@72
    move/from16 v0, v19

    #@74
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX0(I)F

    #@77
    move-result v35

    #@78
    move/from16 v0, v19

    #@7a
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY0(I)F

    #@7d
    move-result v36

    #@7e
    move-object/from16 v0, v16

    #@80
    move/from16 v1, v35

    #@82
    move/from16 v2, v36

    #@84
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@87
    .line 114
    .local v16, "fr0":Landroid/filterfw/geometry/Point;
    new-instance v17, Landroid/filterfw/geometry/Point;

    #@89
    move/from16 v0, v19

    #@8b
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceX1(I)F

    #@8e
    move-result v35

    #@8f
    move/from16 v0, v19

    #@91
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getFaceY1(I)F

    #@94
    move-result v36

    #@95
    move-object/from16 v0, v17

    #@97
    move/from16 v1, v35

    #@99
    move/from16 v2, v36

    #@9b
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@9e
    .line 115
    .local v17, "fr1":Landroid/filterfw/geometry/Point;
    new-instance v21, Landroid/filterfw/geometry/Point;

    #@a0
    move/from16 v0, v19

    #@a2
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeX(I)F

    #@a5
    move-result v35

    #@a6
    move/from16 v0, v19

    #@a8
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getLeftEyeY(I)F

    #@ab
    move-result v36

    #@ac
    move-object/from16 v0, v21

    #@ae
    move/from16 v1, v35

    #@b0
    move/from16 v2, v36

    #@b2
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@b5
    .line 116
    .local v21, "le":Landroid/filterfw/geometry/Point;
    new-instance v29, Landroid/filterfw/geometry/Point;

    #@b7
    move/from16 v0, v19

    #@b9
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeX(I)F

    #@bc
    move-result v35

    #@bd
    move/from16 v0, v19

    #@bf
    invoke-virtual {v14, v0}, Lcom/google/android/filterpacks/facedetect/FaceMeta;->getRightEyeY(I)F

    #@c2
    move-result v36

    #@c3
    move-object/from16 v0, v29

    #@c5
    move/from16 v1, v35

    #@c7
    move/from16 v2, v36

    #@c9
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@cc
    .line 117
    .local v29, "re":Landroid/filterfw/geometry/Point;
    move-object/from16 v0, v21

    #@ce
    move-object/from16 v1, v29

    #@d0
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->plus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@d3
    move-result-object v35

    #@d4
    const/high16 v36, 0x3f000000    # 0.5f

    #@d6
    invoke-virtual/range {v35 .. v36}, Landroid/filterfw/geometry/Point;->times(F)Landroid/filterfw/geometry/Point;

    #@d9
    move-result-object v11

    #@da
    .line 118
    .local v11, "center":Landroid/filterfw/geometry/Point;
    move-object/from16 v0, v21

    #@dc
    move-object/from16 v1, v29

    #@de
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@e1
    move-result-object v35

    #@e2
    invoke-virtual/range {v35 .. v35}, Landroid/filterfw/geometry/Point;->length()F

    #@e5
    move-result v13

    #@e6
    .line 119
    .local v13, "dist":F
    move-object/from16 v0, p0

    #@e8
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidEyeDist:F

    #@ea
    move/from16 v35, v0

    #@ec
    div-float v31, v13, v35

    #@ee
    .line 120
    .local v31, "s":F
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@f1
    move-result v35

    #@f2
    move/from16 v0, v35

    #@f4
    int-to-float v0, v0

    #@f5
    move/from16 v35, v0

    #@f7
    invoke-virtual {v6}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@fa
    move-result v36

    #@fb
    move/from16 v0, v36

    #@fd
    int-to-float v0, v0

    #@fe
    move/from16 v36, v0

    #@100
    div-float v32, v35, v36

    #@102
    .line 121
    .local v32, "s1":F
    invoke-virtual/range {v24 .. v24}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@105
    move-result v35

    #@106
    move/from16 v0, v35

    #@108
    int-to-float v0, v0

    #@109
    move/from16 v35, v0

    #@10b
    invoke-virtual/range {v24 .. v24}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@10e
    move-result v36

    #@10f
    move/from16 v0, v36

    #@111
    int-to-float v0, v0

    #@112
    move/from16 v36, v0

    #@114
    div-float v33, v35, v36

    #@116
    .line 122
    .local v33, "s2":F
    div-float v34, v31, v32

    #@118
    .line 123
    .local v34, "sy":F
    new-instance v9, Landroid/filterfw/geometry/Point;

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterX:F

    #@11e
    move/from16 v35, v0

    #@120
    mul-float v35, v35, v31

    #@122
    move-object/from16 v0, p0

    #@124
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterY:F

    #@126
    move/from16 v36, v0

    #@128
    mul-float v36, v36, v34

    #@12a
    move/from16 v0, v35

    #@12c
    move/from16 v1, v36

    #@12e
    invoke-direct {v9, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@131
    .line 124
    .local v9, "c":Landroid/filterfw/geometry/Point;
    new-instance v10, Landroid/filterfw/geometry/Point;

    #@133
    move-object/from16 v0, p0

    #@135
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterX:F

    #@137
    move/from16 v35, v0

    #@139
    move-object/from16 v0, p0

    #@13b
    iget v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mAndroidCenterY:F

    #@13d
    move/from16 v36, v0

    #@13f
    move/from16 v0, v35

    #@141
    move/from16 v1, v36

    #@143
    invoke-direct {v10, v0, v1}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@146
    .line 125
    .local v10, "c0":Landroid/filterfw/geometry/Point;
    move-object/from16 v0, v29

    #@148
    move-object/from16 v1, v21

    #@14a
    invoke-virtual {v0, v1}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@14d
    move-result-object v12

    #@14e
    .line 126
    .local v12, "d":Landroid/filterfw/geometry/Point;
    iget v0, v12, Landroid/filterfw/geometry/Point;->y:F

    #@150
    move/from16 v35, v0

    #@152
    move/from16 v0, v35

    #@154
    float-to-double v0, v0

    #@155
    move-wide/from16 v36, v0

    #@157
    iget v0, v12, Landroid/filterfw/geometry/Point;->x:F

    #@159
    move/from16 v35, v0

    #@15b
    move/from16 v0, v35

    #@15d
    float-to-double v0, v0

    #@15e
    move-wide/from16 v38, v0

    #@160
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->atan2(DD)D

    #@163
    move-result-wide v36

    #@164
    move-wide/from16 v0, v36

    #@166
    double-to-float v8, v0

    #@167
    .line 127
    .local v8, "angle":F
    new-instance v35, Landroid/filterfw/geometry/Point;

    #@169
    const/16 v36, 0x0

    #@16b
    const/16 v37, 0x0

    #@16d
    invoke-direct/range {v35 .. v37}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@170
    move-object/from16 v0, v35

    #@172
    invoke-virtual {v0, v9}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@175
    move-result-object v35

    #@176
    move-object/from16 v0, v35

    #@178
    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    #@17b
    move-result-object v35

    #@17c
    const/high16 v36, 0x3f800000    # 1.0f

    #@17e
    move-object/from16 v0, v35

    #@180
    move/from16 v1, v36

    #@182
    move/from16 v2, v33

    #@184
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@187
    move-result-object v25

    #@188
    .line 128
    .local v25, "p0":Landroid/filterfw/geometry/Point;
    new-instance v35, Landroid/filterfw/geometry/Point;

    #@18a
    const/16 v36, 0x0

    #@18c
    move-object/from16 v0, v35

    #@18e
    move/from16 v1, v36

    #@190
    move/from16 v2, v34

    #@192
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@195
    move-object/from16 v0, v35

    #@197
    invoke-virtual {v0, v9}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@19a
    move-result-object v35

    #@19b
    move-object/from16 v0, v35

    #@19d
    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    #@1a0
    move-result-object v35

    #@1a1
    const/high16 v36, 0x3f800000    # 1.0f

    #@1a3
    move-object/from16 v0, v35

    #@1a5
    move/from16 v1, v36

    #@1a7
    move/from16 v2, v33

    #@1a9
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@1ac
    move-result-object v26

    #@1ad
    .line 129
    .local v26, "p1":Landroid/filterfw/geometry/Point;
    new-instance v35, Landroid/filterfw/geometry/Point;

    #@1af
    move-object/from16 v0, v35

    #@1b1
    move/from16 v1, v31

    #@1b3
    move/from16 v2, v34

    #@1b5
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@1b8
    move-object/from16 v0, v35

    #@1ba
    invoke-virtual {v0, v9}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@1bd
    move-result-object v35

    #@1be
    move-object/from16 v0, v35

    #@1c0
    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    #@1c3
    move-result-object v35

    #@1c4
    const/high16 v36, 0x3f800000    # 1.0f

    #@1c6
    move-object/from16 v0, v35

    #@1c8
    move/from16 v1, v36

    #@1ca
    move/from16 v2, v33

    #@1cc
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@1cf
    move-result-object v27

    #@1d0
    .line 130
    .local v27, "p2":Landroid/filterfw/geometry/Point;
    new-instance v35, Landroid/filterfw/geometry/Point;

    #@1d2
    const/16 v36, 0x0

    #@1d4
    move-object/from16 v0, v35

    #@1d6
    move/from16 v1, v31

    #@1d8
    move/from16 v2, v36

    #@1da
    invoke-direct {v0, v1, v2}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    #@1dd
    move-object/from16 v0, v35

    #@1df
    invoke-virtual {v0, v9}, Landroid/filterfw/geometry/Point;->minus(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Point;

    #@1e2
    move-result-object v35

    #@1e3
    move-object/from16 v0, v35

    #@1e5
    invoke-virtual {v0, v8}, Landroid/filterfw/geometry/Point;->rotated(F)Landroid/filterfw/geometry/Point;

    #@1e8
    move-result-object v35

    #@1e9
    const/high16 v36, 0x3f800000    # 1.0f

    #@1eb
    move-object/from16 v0, v35

    #@1ed
    move/from16 v1, v36

    #@1ef
    move/from16 v2, v33

    #@1f1
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/geometry/Point;->mult(FF)Landroid/filterfw/geometry/Point;

    #@1f4
    move-result-object v28

    #@1f5
    .line 131
    .local v28, "p3":Landroid/filterfw/geometry/Point;
    new-instance v30, Landroid/filterfw/geometry/Quad;

    #@1f7
    move-object/from16 v0, v30

    #@1f9
    move-object/from16 v1, v25

    #@1fb
    move-object/from16 v2, v28

    #@1fd
    move-object/from16 v3, v26

    #@1ff
    move-object/from16 v4, v27

    #@201
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    #@204
    .line 132
    .local v30, "region":Landroid/filterfw/geometry/Quad;
    move-object/from16 v0, v30

    #@206
    invoke-virtual {v0, v11}, Landroid/filterfw/geometry/Quad;->translated(Landroid/filterfw/geometry/Point;)Landroid/filterfw/geometry/Quad;

    #@209
    move-result-object v30

    #@20a
    .line 133
    move-object/from16 v0, p0

    #@20c
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@20e
    move-object/from16 v35, v0

    #@210
    move-object/from16 v0, v35

    #@212
    move-object/from16 v1, v30

    #@214
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    #@217
    .line 134
    move-object/from16 v0, p0

    #@219
    iget-object v0, v0, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->mOverlayProgram:Landroid/filterfw/core/ShaderProgram;

    #@21b
    move-object/from16 v35, v0

    #@21d
    move-object/from16 v0, v35

    #@21f
    move-object/from16 v1, v23

    #@221
    invoke-virtual {v0, v7, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@224
    .line 112
    add-int/lit8 v19, v19, 0x1

    #@226
    goto/16 :goto_0

    #@228
    .line 138
    .end local v8    # "angle":F
    .end local v9    # "c":Landroid/filterfw/geometry/Point;
    .end local v10    # "c0":Landroid/filterfw/geometry/Point;
    .end local v11    # "center":Landroid/filterfw/geometry/Point;
    .end local v12    # "d":Landroid/filterfw/geometry/Point;
    .end local v13    # "dist":F
    .end local v16    # "fr0":Landroid/filterfw/geometry/Point;
    .end local v17    # "fr1":Landroid/filterfw/geometry/Point;
    .end local v21    # "le":Landroid/filterfw/geometry/Point;
    .end local v25    # "p0":Landroid/filterfw/geometry/Point;
    .end local v26    # "p1":Landroid/filterfw/geometry/Point;
    .end local v27    # "p2":Landroid/filterfw/geometry/Point;
    .end local v28    # "p3":Landroid/filterfw/geometry/Point;
    .end local v29    # "re":Landroid/filterfw/geometry/Point;
    .end local v30    # "region":Landroid/filterfw/geometry/Quad;
    .end local v31    # "s":F
    .end local v32    # "s1":F
    .end local v33    # "s2":F
    .end local v34    # "sy":F
    :cond_0
    const-string/jumbo v35, "image"

    #@22b
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v35

    #@22f
    move-object/from16 v2, v23

    #@231
    invoke-virtual {v0, v1, v2}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@234
    .line 141
    invoke-virtual/range {v23 .. v23}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@237
    .line 91
    return-void
.end method

.method public setupPorts()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 59
    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v1

    #@5
    .line 61
    .local v1, "imageFormat":Landroid/filterfw/core/FrameFormat;
    const-class v2, Lcom/google/android/filterpacks/facedetect/FaceMeta;

    #@7
    .line 62
    const/4 v3, 0x2

    #@8
    .line 61
    invoke-static {v2, v3}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 65
    .local v0, "facesFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v2, "image"

    #@f
    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@12
    .line 66
    const-string/jumbo v2, "faces"

    #@15
    invoke-virtual {p0, v2, v0}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@18
    .line 67
    const-string/jumbo v2, "android"

    #@1b
    invoke-virtual {p0, v2, v1}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@1e
    .line 68
    const-string/jumbo v2, "image"

    #@21
    const-string/jumbo v3, "image"

    #@24
    invoke-virtual {p0, v2, v3}, Lcom/google/android/filterpacks/facedetect/AndroidMaskFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 57
    return-void
.end method

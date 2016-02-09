.class public Landroid/transition/PatternPathMotion;
.super Landroid/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    #@3
    .line 44
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@a
    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    .line 52
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@13
    const/high16 v1, 0x3f800000    # 1.0f

    #@15
    const/4 v2, 0x0

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    #@19
    .line 53
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@1b
    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    #@1d
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    #@3
    .line 44
    new-instance v3, Landroid/graphics/Path;

    #@5
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v3, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@a
    .line 46
    new-instance v3, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v3, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    .line 57
    sget-object v3, Lcom/android/internal/R$styleable;->PatternPathMotion:[I

    #@13
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@16
    move-result-object v0

    #@17
    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    #@18
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 60
    .local v1, "pathData":Ljava/lang/String;
    if-nez v1, :cond_0

    #@1e
    .line 61
    new-instance v3, Ljava/lang/RuntimeException;

    #@20
    const-string/jumbo v4, "pathData must be supplied for patternPathMotion"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 65
    .end local v1    # "pathData":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@28
    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    .line 65
    throw v3

    #@2c
    .line 63
    .restart local v1    # "pathData":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@2f
    move-result-object v2

    #@30
    .line 64
    .local v2, "pattern":Landroid/graphics/Path;
    invoke-virtual {p0, v2}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@36
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "patternPath"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    #@3
    .line 44
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@a
    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    .line 80
    invoke-virtual {p0, p1}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    #@14
    .line 79
    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 12
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    #@0
    .prologue
    .line 132
    sub-float v8, p3, p1

    #@2
    float-to-double v2, v8

    #@3
    .line 133
    .local v2, "dx":D
    sub-float v8, p4, p2

    #@5
    float-to-double v4, v8

    #@6
    .line 134
    .local v4, "dy":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@9
    move-result-wide v8

    #@a
    double-to-float v6, v8

    #@b
    .line 135
    .local v6, "length":F
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@e
    move-result-wide v0

    #@f
    .line 137
    .local v0, "angle":D
    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    invoke-virtual {v8, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    #@14
    .line 138
    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@16
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@19
    move-result-wide v10

    #@1a
    double-to-float v9, v10

    #@1b
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    #@1e
    .line 139
    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@20
    invoke-virtual {v8, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@23
    .line 140
    new-instance v7, Landroid/graphics/Path;

    #@25
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    #@28
    .line 141
    .local v7, "path":Landroid/graphics/Path;
    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@2a
    iget-object v9, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@2c
    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@2f
    .line 142
    return-object v7
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    #@2
    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .locals 20
    .param p1, "patternPath"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 104
    new-instance v10, Landroid/graphics/PathMeasure;

    #@2
    const/4 v15, 0x0

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-direct {v10, v0, v15}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@8
    .line 105
    .local v10, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    #@b
    move-result v9

    #@c
    .line 106
    .local v9, "length":F
    const/4 v15, 0x2

    #@d
    new-array v11, v15, [F

    #@f
    .line 107
    .local v11, "pos":[F
    const/4 v15, 0x0

    #@10
    invoke-virtual {v10, v9, v11, v15}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@13
    .line 108
    const/4 v15, 0x0

    #@14
    aget v7, v11, v15

    #@16
    .line 109
    .local v7, "endX":F
    const/4 v15, 0x1

    #@17
    aget v8, v11, v15

    #@19
    .line 110
    .local v8, "endY":F
    const/4 v15, 0x0

    #@1a
    const/16 v16, 0x0

    #@1c
    move-object/from16 v0, v16

    #@1e
    invoke-virtual {v10, v15, v11, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@21
    .line 111
    const/4 v15, 0x0

    #@22
    aget v13, v11, v15

    #@24
    .line 112
    .local v13, "startX":F
    const/4 v15, 0x1

    #@25
    aget v14, v11, v15

    #@27
    .line 114
    .local v14, "startY":F
    cmpl-float v15, v13, v7

    #@29
    if-nez v15, :cond_0

    #@2b
    cmpl-float v15, v14, v8

    #@2d
    if-nez v15, :cond_0

    #@2f
    .line 115
    new-instance v15, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v16, "pattern must not end at the starting point"

    #@34
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v15

    #@38
    .line 118
    :cond_0
    move-object/from16 v0, p0

    #@3a
    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@3c
    neg-float v0, v13

    #@3d
    move/from16 v16, v0

    #@3f
    neg-float v0, v14

    #@40
    move/from16 v17, v0

    #@42
    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@45
    .line 119
    sub-float v5, v7, v13

    #@47
    .line 120
    .local v5, "dx":F
    sub-float v6, v8, v14

    #@49
    .line 121
    .local v6, "dy":F
    float-to-double v0, v5

    #@4a
    move-wide/from16 v16, v0

    #@4c
    float-to-double v0, v6

    #@4d
    move-wide/from16 v18, v0

    #@4f
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    #@52
    move-result-wide v16

    #@53
    move-wide/from16 v0, v16

    #@55
    double-to-float v4, v0

    #@56
    .line 122
    .local v4, "distance":F
    const/high16 v15, 0x3f800000    # 1.0f

    #@58
    div-float v12, v15, v4

    #@5a
    .line 123
    .local v12, "scale":F
    move-object/from16 v0, p0

    #@5c
    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@5e
    invoke-virtual {v15, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@61
    .line 124
    float-to-double v0, v6

    #@62
    move-wide/from16 v16, v0

    #@64
    float-to-double v0, v5

    #@65
    move-wide/from16 v18, v0

    #@67
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    #@6a
    move-result-wide v2

    #@6b
    .line 125
    .local v2, "angle":D
    move-object/from16 v0, p0

    #@6d
    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@6f
    neg-double v0, v2

    #@70
    move-wide/from16 v16, v0

    #@72
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    #@75
    move-result-wide v16

    #@76
    move-wide/from16 v0, v16

    #@78
    double-to-float v0, v0

    #@79
    move/from16 v16, v0

    #@7b
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->postRotate(F)Z

    #@7e
    .line 126
    move-object/from16 v0, p0

    #@80
    iget-object v15, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v0, v0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@86
    move-object/from16 v16, v0

    #@88
    move-object/from16 v0, p1

    #@8a
    move-object/from16 v1, v16

    #@8c
    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@8f
    .line 127
    move-object/from16 v0, p1

    #@91
    move-object/from16 v1, p0

    #@93
    iput-object v0, v1, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    #@95
    .line 103
    return-void
.end method

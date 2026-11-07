.class public Landroid/transition/PatternPathMotion;
.super Landroid/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private greylist-max-o mOriginalPatternPath:Landroid/graphics/Path;

.field private final greylist-max-o mPatternPath:Landroid/graphics/Path;

.field private final greylist-max-o mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 50
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 51
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 53
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 56
    sget-object v0, Lcom/android/internal/R$styleable;->PatternPathMotion:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_18
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_2a

    .line 62
    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 63
    .local v2, "pattern":Landroid/graphics/Path;
    invoke-virtual {p0, v2}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_32

    .line 65
    .end local v1    # "pathData":Ljava/lang/String;
    .end local v2    # "pattern":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    nop

    .line 68
    return-void

    .line 60
    .restart local v1    # "pathData":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "pathData must be supplied for patternPathMotion"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/transition/PatternPathMotion;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    throw v2
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_32

    .line 65
    .end local v1    # "pathData":Ljava/lang/String;
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/transition/PatternPathMotion;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "attrs":Landroid/util/AttributeSet;
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    throw v1
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;)V
    .registers 3
    .param p1, "patternPath"    # Landroid/graphics/Path;

    .line 78
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    .line 79
    invoke-virtual {p0, p1}, Landroid/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist getPath(FFFF)Landroid/graphics/Path;
    .registers 15
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .line 131
    sub-float v0, p3, p1

    float-to-double v0, v0

    .line 132
    .local v0, "dx":D
    sub-float v2, p4, p2

    float-to-double v2, v2

    .line 133
    .local v2, "dy":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 134
    .local v4, "length":F
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 136
    .local v5, "angle":D
    iget-object v7, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    iget-object v7, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 138
    iget-object v7, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 139
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 140
    .local v7, "path":Landroid/graphics/Path;
    iget-object v8, p0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 141
    return-object v7
.end method

.method public whitelist getPatternPath()Landroid/graphics/Path;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public whitelist setPatternPath(Landroid/graphics/Path;)V
    .registers 20
    .param p1, "patternPath"    # Landroid/graphics/Path;

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 104
    .local v2, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    .line 105
    .local v4, "length":F
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 106
    .local v5, "pos":[F
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 107
    aget v7, v5, v3

    .line 108
    .local v7, "endX":F
    const/4 v8, 0x1

    aget v9, v5, v8

    .line 109
    .local v9, "endY":F
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 110
    aget v3, v5, v3

    .line 111
    .local v3, "startX":F
    aget v6, v5, v8

    .line 113
    .local v6, "startY":F
    cmpl-float v8, v3, v7

    if-nez v8, :cond_33

    cmpl-float v8, v6, v9

    if-eqz v8, :cond_2b

    goto :goto_33

    .line 114
    :cond_2b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "pattern must not end at the starting point"

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 117
    :cond_33
    :goto_33
    iget-object v8, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    neg-float v10, v3

    neg-float v11, v6

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 118
    sub-float v8, v7, v3

    .line 119
    .local v8, "dx":F
    sub-float v10, v9, v6

    .line 120
    .local v10, "dy":F
    float-to-double v11, v8

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v11, v11

    .line 121
    .local v11, "distance":F
    const/high16 v12, 0x3f800000    # 1.0f

    div-float/2addr v12, v11

    .line 122
    .local v12, "scale":F
    iget-object v13, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 123
    float-to-double v13, v10

    move-object v15, v2

    move/from16 v16, v3

    .end local v2    # "pathMeasure":Landroid/graphics/PathMeasure;
    .end local v3    # "startX":F
    .local v15, "pathMeasure":Landroid/graphics/PathMeasure;
    .local v16, "startX":F
    float-to-double v2, v8

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 124
    .local v2, "angle":D
    iget-object v13, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    move v14, v4

    move-object/from16 v17, v5

    .end local v4    # "length":F
    .end local v5    # "pos":[F
    .local v14, "length":F
    .local v17, "pos":[F
    neg-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 125
    iget-object v4, v0, Landroid/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v5, v0, Landroid/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 126
    iput-object v1, v0, Landroid/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    .line 127
    return-void
.end method

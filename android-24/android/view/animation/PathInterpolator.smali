.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolator.java"


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    #@6
    .line 71
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    #@6
    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    #@b
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 93
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@4
    .line 95
    if-eqz p2, :cond_0

    #@6
    .line 96
    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    #@8
    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    #@f
    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@12
    move-result v1

    #@13
    invoke-virtual {p0, v1}, Landroid/view/animation/PathInterpolator;->setChangingConfiguration(I)V

    #@16
    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    .line 93
    return-void

    #@1a
    .line 98
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    #@1c
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object v0

    #@20
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    #@3
    .line 61
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    #@6
    .line 60
    return-void
.end method

.method private initCubic(FFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 151
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    .line 152
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@b
    move v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    move v4, p4

    #@f
    move v6, v5

    #@10
    .line 153
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@13
    .line 154
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    #@16
    .line 150
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 13
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    #@2
    const/4 v11, 0x0

    #@3
    .line 158
    const v10, 0x3b03126f    # 0.002f

    #@6
    invoke-virtual {p1, v10}, Landroid/graphics/Path;->approximate(F)[F

    #@9
    move-result-object v5

    #@a
    .line 160
    .local v5, "pointComponents":[F
    array-length v10, v5

    #@b
    div-int/lit8 v4, v10, 0x3

    #@d
    .line 161
    .local v4, "numPoints":I
    const/4 v10, 0x1

    #@e
    aget v10, v5, v10

    #@10
    cmpl-float v10, v10, v11

    #@12
    if-nez v10, :cond_0

    #@14
    const/4 v10, 0x2

    #@15
    aget v10, v5, v10

    #@17
    cmpl-float v10, v10, v11

    #@19
    if-eqz v10, :cond_1

    #@1b
    .line 164
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v11, "The Path must start at (0,0) and end at (1,1)"

    #@20
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v10

    #@24
    .line 162
    :cond_1
    array-length v10, v5

    #@25
    add-int/lit8 v10, v10, -0x2

    #@27
    aget v10, v5, v10

    #@29
    cmpl-float v10, v10, v12

    #@2b
    if-nez v10, :cond_0

    #@2d
    .line 163
    array-length v10, v5

    #@2e
    add-int/lit8 v10, v10, -0x1

    #@30
    aget v10, v5, v10

    #@32
    cmpl-float v10, v10, v12

    #@34
    if-nez v10, :cond_0

    #@36
    .line 167
    new-array v10, v4, [F

    #@38
    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@3a
    .line 168
    new-array v10, v4, [F

    #@3c
    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    #@3e
    .line 169
    const/4 v7, 0x0

    #@3f
    .line 170
    .local v7, "prevX":F
    const/4 v6, 0x0

    #@40
    .line 171
    .local v6, "prevFraction":F
    const/4 v0, 0x0

    #@41
    .line 172
    .local v0, "componentIndex":I
    const/4 v3, 0x0

    #@42
    .local v3, "i":I
    move v1, v0

    #@43
    .end local v0    # "componentIndex":I
    .local v1, "componentIndex":I
    :goto_0
    if-ge v3, v4, :cond_4

    #@45
    .line 173
    add-int/lit8 v0, v1, 0x1

    #@47
    .end local v1    # "componentIndex":I
    .restart local v0    # "componentIndex":I
    aget v2, v5, v1

    #@49
    .line 174
    .local v2, "fraction":F
    add-int/lit8 v1, v0, 0x1

    #@4b
    .end local v0    # "componentIndex":I
    .restart local v1    # "componentIndex":I
    aget v8, v5, v0

    #@4d
    .line 175
    .local v8, "x":F
    add-int/lit8 v0, v1, 0x1

    #@4f
    .end local v1    # "componentIndex":I
    .restart local v0    # "componentIndex":I
    aget v9, v5, v1

    #@51
    .line 176
    .local v9, "y":F
    cmpl-float v10, v2, v6

    #@53
    if-nez v10, :cond_2

    #@55
    cmpl-float v10, v8, v7

    #@57
    if-eqz v10, :cond_2

    #@59
    .line 177
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@5b
    .line 178
    const-string/jumbo v11, "The Path cannot have discontinuity in the X axis."

    #@5e
    .line 177
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@61
    throw v10

    #@62
    .line 180
    :cond_2
    cmpg-float v10, v8, v7

    #@64
    if-gez v10, :cond_3

    #@66
    .line 181
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v11, "The Path cannot loop back on itself."

    #@6b
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v10

    #@6f
    .line 183
    :cond_3
    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@71
    aput v8, v10, v3

    #@73
    .line 184
    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    #@75
    aput v9, v10, v3

    #@77
    .line 185
    move v7, v8

    #@78
    .line 186
    move v6, v2

    #@79
    .line 172
    add-int/lit8 v3, v3, 0x1

    #@7b
    move v1, v0

    #@7c
    .end local v0    # "componentIndex":I
    .restart local v1    # "componentIndex":I
    goto :goto_0

    #@7d
    .line 157
    .end local v2    # "fraction":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_4
    return-void
.end method

.method private initQuad(FF)V
    .locals 3
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 144
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    .line 145
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@b
    .line 146
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@e
    .line 147
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    #@11
    .line 143
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    const/4 v13, 0x3

    #@1
    const/4 v12, 0x2

    #@2
    const/4 v11, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    .line 108
    const/4 v8, 0x4

    #@6
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_1

    #@c
    .line 109
    const/4 v8, 0x4

    #@d
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    .line 110
    .local v3, "pathData":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@14
    move-result-object v2

    #@15
    .line 111
    .local v2, "path":Landroid/graphics/Path;
    if-nez v2, :cond_0

    #@17
    .line 112
    new-instance v8, Landroid/view/InflateException;

    #@19
    new-instance v9, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v10, "The path is null, which is created from "

    #@21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v9

    #@25
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v9

    #@29
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v9

    #@2d
    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@30
    throw v8

    #@31
    .line 115
    :cond_0
    invoke-direct {p0, v2}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    #@34
    .line 105
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "pathData":Ljava/lang/String;
    :goto_0
    return-void

    #@35
    .line 117
    :cond_1
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@38
    move-result v8

    #@39
    if-nez v8, :cond_2

    #@3b
    .line 118
    new-instance v8, Landroid/view/InflateException;

    #@3d
    const-string/jumbo v9, "pathInterpolator requires the controlX1 attribute"

    #@40
    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v8

    #@44
    .line 119
    :cond_2
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@47
    move-result v8

    #@48
    if-nez v8, :cond_3

    #@4a
    .line 120
    new-instance v8, Landroid/view/InflateException;

    #@4c
    const-string/jumbo v9, "pathInterpolator requires the controlY1 attribute"

    #@4f
    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v8

    #@53
    .line 122
    :cond_3
    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@56
    move-result v4

    #@57
    .line 123
    .local v4, "x1":F
    invoke-virtual {p1, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5a
    move-result v6

    #@5b
    .line 125
    .local v6, "y1":F
    invoke-virtual {p1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5e
    move-result v0

    #@5f
    .line 126
    .local v0, "hasX2":Z
    invoke-virtual {p1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@62
    move-result v1

    #@63
    .line 128
    .local v1, "hasY2":Z
    if-eq v0, v1, :cond_4

    #@65
    .line 129
    new-instance v8, Landroid/view/InflateException;

    #@67
    .line 130
    const-string/jumbo v9, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    #@6a
    .line 129
    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v8

    #@6e
    .line 133
    :cond_4
    if-nez v0, :cond_5

    #@70
    .line 134
    invoke-direct {p0, v4, v6}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    #@73
    goto :goto_0

    #@74
    .line 136
    :cond_5
    invoke-virtual {p1, v12, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@77
    move-result v5

    #@78
    .line 137
    .local v5, "x2":F
    invoke-virtual {p1, v13, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@7b
    move-result v7

    #@7c
    .line 138
    .local v7, "y2":F
    invoke-direct {p0, v4, v6, v5, v7}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    #@7f
    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1, "t"    # F

    #@0
    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    #@2
    const/4 v10, 0x0

    #@3
    .line 202
    cmpg-float v8, p1, v10

    #@5
    if-gtz v8, :cond_0

    #@7
    .line 203
    return v10

    #@8
    .line 204
    :cond_0
    cmpl-float v8, p1, v9

    #@a
    if-ltz v8, :cond_1

    #@c
    .line 205
    return v9

    #@d
    .line 208
    :cond_1
    const/4 v4, 0x0

    #@e
    .line 209
    .local v4, "startIndex":I
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@10
    array-length v8, v8

    #@11
    add-int/lit8 v0, v8, -0x1

    #@13
    .line 211
    .local v0, "endIndex":I
    :goto_0
    sub-int v8, v0, v4

    #@15
    const/4 v9, 0x1

    #@16
    if-le v8, v9, :cond_3

    #@18
    .line 212
    add-int v8, v4, v0

    #@1a
    div-int/lit8 v3, v8, 0x2

    #@1c
    .line 213
    .local v3, "midIndex":I
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@1e
    aget v8, v8, v3

    #@20
    cmpg-float v8, p1, v8

    #@22
    if-gez v8, :cond_2

    #@24
    .line 214
    move v0, v3

    #@25
    goto :goto_0

    #@26
    .line 216
    :cond_2
    move v4, v3

    #@27
    goto :goto_0

    #@28
    .line 220
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@2a
    aget v8, v8, v0

    #@2c
    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@2e
    aget v9, v9, v4

    #@30
    sub-float v7, v8, v9

    #@32
    .line 221
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    #@34
    if-nez v8, :cond_4

    #@36
    .line 222
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    #@38
    aget v8, v8, v4

    #@3a
    return v8

    #@3b
    .line 225
    :cond_4
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    #@3d
    aget v8, v8, v4

    #@3f
    sub-float v6, p1, v8

    #@41
    .line 226
    .local v6, "tInRange":F
    div-float v2, v6, v7

    #@43
    .line 228
    .local v2, "fraction":F
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    #@45
    aget v5, v8, v4

    #@47
    .line 229
    .local v5, "startY":F
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    #@49
    aget v1, v8, v0

    #@4b
    .line 230
    .local v1, "endY":F
    sub-float v8, v1, v5

    #@4d
    mul-float/2addr v8, v2

    #@4e
    add-float/2addr v8, v5

    #@4f
    return v8
.end method

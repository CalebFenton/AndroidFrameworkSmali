.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final greylist-max-o PRECISION:F = 0.002f


# instance fields
.field private greylist-max-o mX:[F

.field private greylist-max-o mY:[F


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 3
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .line 77
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(FFFF)V
    .registers 5
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    .line 90
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 92
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 101
    if-eqz p2, :cond_d

    .line 102
    sget-object v0, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    goto :goto_13

    .line 104
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_d
    sget-object v0, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :goto_13
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/PathInterpolator;->setChangingConfiguration(I)V

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;)V
    .registers 2
    .param p1, "path"    # Landroid/graphics/Path;

    .line 66
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 68
    return-void
.end method

.method private greylist-max-o initCubic(FFFF)V
    .registers 13
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v1, v0

    .line 158
    .local v1, "path":Landroid/graphics/Path;
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 159
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "x1":F
    .end local p2    # "y1":F
    .end local p3    # "x2":F
    .end local p4    # "y2":F
    .local v2, "x1":F
    .local v3, "y1":F
    .local v4, "x2":F
    .local v5, "y2":F
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 160
    invoke-direct {p0, v1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 161
    return-void
.end method

.method private greylist-max-o initPath(Landroid/graphics/Path;)V
    .registers 13
    .param p1, "path"    # Landroid/graphics/Path;

    .line 164
    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    .line 166
    .local v0, "pointComponents":[F
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 167
    .local v1, "numPoints":I
    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_71

    const/4 v3, 0x2

    aget v5, v0, v3

    cmpl-float v4, v5, v4

    if-nez v4, :cond_71

    array-length v4, v0

    sub-int/2addr v4, v3

    aget v3, v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_71

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v2, v0, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_71

    .line 173
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 174
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "prevX":F
    const/4 v3, 0x0

    .line 177
    .local v3, "prevFraction":F
    const/4 v4, 0x0

    .line 178
    .local v4, "componentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    if-ge v5, v1, :cond_70

    .line 179
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "componentIndex":I
    .local v6, "componentIndex":I
    aget v4, v0, v4

    .line 180
    .local v4, "fraction":F
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "componentIndex":I
    .local v7, "componentIndex":I
    aget v6, v0, v6

    .line 181
    .local v6, "x":F
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "componentIndex":I
    .local v8, "componentIndex":I
    aget v7, v0, v7

    .line 182
    .local v7, "y":F
    cmpl-float v9, v4, v3

    if-nez v9, :cond_56

    cmpl-float v9, v6, v2

    if-nez v9, :cond_4e

    goto :goto_56

    .line 183
    :cond_4e
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 186
    :cond_56
    :goto_56
    cmpg-float v9, v6, v2

    if-ltz v9, :cond_68

    .line 189
    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aput v6, v9, v5

    .line 190
    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aput v7, v9, v5

    .line 191
    move v2, v6

    .line 192
    move v3, v4

    .line 178
    .end local v4    # "fraction":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_37

    .line 187
    .restart local v4    # "fraction":F
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_68
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The Path cannot loop back on itself."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 194
    .end local v5    # "i":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "componentIndex":I
    .local v4, "componentIndex":I
    :cond_70
    return-void

    .line 170
    .end local v2    # "prevX":F
    .end local v3    # "prevFraction":F
    .end local v4    # "componentIndex":I
    :cond_71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o initQuad(FF)V
    .registers 5
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .line 150
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 151
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 152
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 153
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 154
    return-void
.end method

.method private greylist-max-o parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .registers 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "pathData":Ljava/lang/String;
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .line 117
    .local v1, "path":Landroid/graphics/Path;
    if-eqz v1, :cond_15

    .line 121
    invoke-direct {p0, v1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 122
    .end local v0    # "pathData":Ljava/lang/String;
    .end local v1    # "path":Landroid/graphics/Path;
    goto :goto_62

    .line 118
    .restart local v0    # "pathData":Ljava/lang/String;
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_15
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The path is null, which is created from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "pathData":Ljava/lang/String;
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 125
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 129
    .local v0, "x1":F
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 131
    .local v1, "y1":F
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 132
    .local v4, "hasX2":Z
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    .line 134
    .local v6, "hasY2":Z
    if-ne v4, v6, :cond_63

    .line 139
    if-nez v4, :cond_57

    .line 140
    invoke-direct {p0, v0, v1}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_62

    .line 142
    :cond_57
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 143
    .local v3, "x2":F
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 144
    .local v2, "y2":F
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 147
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v2    # "y2":F
    .end local v3    # "x2":F
    .end local v4    # "hasX2":Z
    .end local v6    # "hasY2":Z
    :goto_62
    return-void

    .line 135
    .restart local v0    # "x1":F
    .restart local v1    # "y1":F
    .restart local v4    # "hasX2":Z
    .restart local v6    # "hasY2":Z
    :cond_63
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    .end local v0    # "x1":F
    .end local v1    # "y1":F
    .end local v4    # "hasX2":Z
    .end local v6    # "hasY2":Z
    :cond_6b
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_73
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o createNativeInterpolator()J
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    iget-object v1, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    invoke-static {v0, v1}, Landroid/graphics/animation/NativeInterpolatorFactory;->createPathInterpolator([F[F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 10
    .param p1, "t"    # F

    .line 208
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_6

    .line 209
    return v0

    .line 210
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_d

    .line 211
    return v1

    .line 214
    :cond_d
    const/4 v1, 0x0

    .line 215
    .local v1, "startIndex":I
    iget-object v2, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 217
    .local v2, "endIndex":I
    :goto_13
    sub-int v4, v2, v1

    if-le v4, v3, :cond_27

    .line 218
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    .line 219
    .local v4, "midIndex":I
    iget-object v5, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_25

    .line 220
    move v2, v4

    goto :goto_26

    .line 222
    :cond_25
    move v1, v4

    .line 224
    .end local v4    # "midIndex":I
    :goto_26
    goto :goto_13

    .line 226
    :cond_27
    iget-object v3, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v3, v3, v2

    iget-object v4, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v4, v4, v1

    sub-float/2addr v3, v4

    .line 227
    .local v3, "xRange":F
    cmpl-float v0, v3, v0

    if-nez v0, :cond_39

    .line 228
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v0, v0, v1

    return v0

    .line 231
    :cond_39
    iget-object v0, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v0, v0, v1

    sub-float v0, p1, v0

    .line 232
    .local v0, "tInRange":F
    div-float v4, v0, v3

    .line 234
    .local v4, "fraction":F
    iget-object v5, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v5, v5, v1

    .line 235
    .local v5, "startY":F
    iget-object v6, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v6, v6, v2

    .line 236
    .local v6, "endY":F
    sub-float v7, v6, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    return v7
.end method

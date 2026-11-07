.class public Landroid/animation/PathKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PathKeyframes$FloatKeyframesBase;,
        Landroid/animation/PathKeyframes$IntKeyframesBase;,
        Landroid/animation/PathKeyframes$SimpleKeyframes;
    }
.end annotation


# static fields
.field private static final greylist-max-o EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FRACTION_OFFSET:I = 0x0

.field private static final greylist-max-o NUM_COMPONENTS:I = 0x3

.field private static final greylist-max-o X_OFFSET:I = 0x1

.field private static final greylist-max-o Y_OFFSET:I = 0x2


# instance fields
.field private greylist-max-o mKeyframeData:[F

.field private greylist-max-o mTempPointF:Landroid/graphics/PointF;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_KEYFRAMES()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Path;)V
    .registers 3
    .param p1, "path"    # Landroid/graphics/Path;

    .line 50
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, v0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    .line 51
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Path;F)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "error"    # F

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    .line 54
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 57
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    .line 58
    return-void

    .line 55
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o interpolate(FFF)F
    .registers 5
    .param p0, "fraction"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .line 147
    sub-float v0, p2, p1

    .line 148
    .local v0, "diff":F
    mul-float v1, v0, p0

    add-float/2addr v1, p1

    return v1
.end method

.method private greylist-max-o interpolateInRange(FII)Landroid/graphics/PointF;
    .registers 16
    .param p1, "fraction"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 100
    mul-int/lit8 v0, p2, 0x3

    .line 101
    .local v0, "startBase":I
    mul-int/lit8 v1, p3, 0x3

    .line 103
    .local v1, "endBase":I
    iget-object v2, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v3, v0, 0x0

    aget v2, v2, v3

    .line 104
    .local v2, "startFraction":F
    iget-object v3, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v4, v1, 0x0

    aget v3, v3, v4

    .line 106
    .local v3, "endFraction":F
    sub-float v4, p1, v2

    sub-float v5, v3, v2

    div-float/2addr v4, v5

    .line 108
    .local v4, "intervalFraction":F
    iget-object v5, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    .line 109
    .local v5, "startX":F
    iget-object v6, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    .line 110
    .local v6, "endX":F
    iget-object v7, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    .line 111
    .local v7, "startY":F
    iget-object v8, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v9, v1, 0x2

    aget v8, v8, v9

    .line 113
    .local v8, "endY":F
    invoke-static {v4, v5, v6}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result v9

    .line 114
    .local v9, "x":F
    invoke-static {v4, v7, v8}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result v10

    .line 116
    .local v10, "y":F
    iget-object v11, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {v11, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 117
    iget-object v11, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object v11
.end method

.method private greylist-max-o pointForIndex(I)Landroid/graphics/PointF;
    .registers 8
    .param p1, "index"    # I

    .line 139
    mul-int/lit8 v0, p1, 0x3

    .line 140
    .local v0, "base":I
    add-int/lit8 v1, v0, 0x1

    .line 141
    .local v1, "xOffset":I
    add-int/lit8 v2, v0, 0x2

    .line 142
    .local v2, "yOffset":I
    iget-object v3, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    iget-object v4, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget v4, v4, v1

    iget-object v5, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    iget-object v3, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object v3
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/Keyframes;
    .registers 3

    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, "clone":Landroid/animation/Keyframes;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframes;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    goto :goto_a

    .line 134
    :catch_9
    move-exception v1

    :goto_a
    nop

    .line 135
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .registers 2

    .line 156
    new-instance v0, Landroid/animation/PathKeyframes$1;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$1;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .registers 2

    .line 184
    new-instance v0, Landroid/animation/PathKeyframes$3;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$3;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .registers 2

    .line 170
    new-instance v0, Landroid/animation/PathKeyframes$2;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$2;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .registers 2

    .line 198
    new-instance v0, Landroid/animation/PathKeyframes$4;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$4;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public greylist-max-o getKeyframes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic blacklist getKeyframes()Ljava/util/List;
    .registers 2

    .line 39
    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getType()Ljava/lang/Class;
    .registers 2

    .line 126
    const-class v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public greylist-max-o getValue(F)Ljava/lang/Object;
    .registers 9
    .param p1, "fraction"    # F

    .line 67
    iget-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    .line 68
    .local v0, "numPoints":I
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-gez v2, :cond_11

    .line 69
    const/4 v1, 0x1

    invoke-direct {p0, p1, v3, v1}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 70
    :cond_11
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v2

    if-lez v4, :cond_20

    .line 71
    add-int/lit8 v1, v0, -0x2

    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 72
    :cond_20
    cmpl-float v1, p1, v1

    if-nez v1, :cond_29

    .line 73
    invoke-direct {p0, v3}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 74
    :cond_29
    cmpl-float v1, p1, v2

    if-nez v1, :cond_34

    .line 75
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object v1

    return-object v1

    .line 78
    :cond_34
    const/4 v1, 0x0

    .line 79
    .local v1, "low":I
    add-int/lit8 v2, v0, -0x1

    .line 81
    .local v2, "high":I
    :goto_37
    if-gt v1, v2, :cond_57

    .line 82
    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    .line 83
    .local v4, "mid":I
    iget-object v5, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    mul-int/lit8 v6, v4, 0x3

    add-int/2addr v6, v3

    aget v5, v5, v6

    .line 85
    .local v5, "midFraction":F
    cmpg-float v6, p1, v5

    if-gez v6, :cond_4b

    .line 86
    add-int/lit8 v2, v4, -0x1

    goto :goto_51

    .line 87
    :cond_4b
    cmpl-float v6, p1, v5

    if-lez v6, :cond_52

    .line 88
    add-int/lit8 v1, v4, 0x1

    .line 92
    .end local v4    # "mid":I
    .end local v5    # "midFraction":F
    :goto_51
    goto :goto_37

    .line 90
    .restart local v4    # "mid":I
    .restart local v5    # "midFraction":F
    :cond_52
    invoke-direct {p0, v4}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object v3

    return-object v3

    .line 95
    .end local v4    # "mid":I
    .end local v5    # "midFraction":F
    :cond_57
    invoke-direct {p0, p1, v2, v1}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object v3

    return-object v3
.end method

.method public greylist-max-o setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .line 122
    return-void
.end method

.class public Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes;


# instance fields
.field greylist-max-o mEvaluator:Landroid/animation/TypeEvaluator;

.field greylist-max-o mFirstKeyframe:Landroid/animation/Keyframe;

.field greylist-max-o mInterpolator:Landroid/animation/TimeInterpolator;

.field greylist-max-o mKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mLastKeyframe:Landroid/animation/Keyframe;

.field greylist-max-o mNumKeyframes:I


# direct methods
.method public varargs constructor blacklist <init>([Landroid/animation/Keyframe;)V
    .registers 3
    .param p1, "keyframes"    # [Landroid/animation/Keyframe;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    array-length v0, p1

    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 50
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 51
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 52
    return-void
.end method

.method public static varargs blacklist ofFloat([F)Landroid/animation/KeyframeSet;
    .registers 8
    .param p0, "values"    # [F

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "badValue":Z
    array-length v1, p0

    .line 77
    .local v1, "numKeyframes":I
    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 78
    .local v2, "keyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2c

    .line 79
    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v4

    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    aget v6, p0, v4

    invoke-static {v3, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v5

    .line 81
    aget v3, p0, v4

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 82
    const/4 v0, 0x1

    goto :goto_54

    .line 85
    :cond_2c
    aget v5, p0, v4

    invoke-static {v3, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v3, v2, v4

    .line 86
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_37
    if-ge v3, v1, :cond_54

    .line 87
    int-to-float v4, v3

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    aget v5, p0, v3

    .line 88
    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    .line 89
    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 90
    const/4 v0, 0x1

    .line 86
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 94
    .end local v3    # "i":I
    :cond_54
    :goto_54
    if-eqz v0, :cond_5d

    .line 95
    const-string v3, "Animator"

    const-string v4, "Bad value (NaN) in float animator"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_5d
    new-instance v3, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v3
.end method

.method public static varargs blacklist ofInt([I)Landroid/animation/KeyframeSet;
    .registers 6
    .param p0, "values"    # [I

    .line 59
    array-length v0, p0

    .line 60
    .local v0, "numKeyframes":I
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$IntKeyframe;

    .line 61
    .local v1, "keyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 62
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v3

    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    aget v3, p0, v3

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v4

    goto :goto_41

    .line 65
    :cond_22
    aget v4, p0, v3

    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v2, v1, v3

    .line 66
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2d
    if-ge v2, v0, :cond_41

    .line 67
    int-to-float v3, v2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, p0, v2

    .line 68
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v3, v1, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 71
    .end local v2    # "i":I
    :cond_41
    :goto_41
    new-instance v2, Landroid/animation/IntKeyframeSet;

    invoke-direct {v2, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v2
.end method

.method public static varargs blacklist ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .registers 8
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;

    .line 102
    array-length v0, p0

    .line 103
    .local v0, "numKeyframes":I
    const/4 v1, 0x0

    .line 104
    .local v1, "hasFloat":Z
    const/4 v2, 0x0

    .line 105
    .local v2, "hasInt":Z
    const/4 v3, 0x0

    .line 106
    .local v3, "hasOther":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v0, :cond_1b

    .line 107
    aget-object v5, p0, v4

    instance-of v5, v5, Landroid/animation/Keyframe$FloatKeyframe;

    if-eqz v5, :cond_f

    .line 108
    const/4 v1, 0x1

    goto :goto_18

    .line 109
    :cond_f
    aget-object v5, p0, v4

    instance-of v5, v5, Landroid/animation/Keyframe$IntKeyframe;

    if-eqz v5, :cond_17

    .line 110
    const/4 v2, 0x1

    goto :goto_18

    .line 112
    :cond_17
    const/4 v3, 0x1

    .line 106
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 115
    .end local v4    # "i":I
    :cond_1b
    if-eqz v1, :cond_35

    if-nez v2, :cond_35

    if-nez v3, :cond_35

    .line 116
    new-array v4, v0, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 117
    .local v4, "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    if-ge v5, v0, :cond_2f

    .line 118
    aget-object v6, p0, v5

    check-cast v6, Landroid/animation/Keyframe$FloatKeyframe;

    aput-object v6, v4, v5

    .line 117
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 120
    .end local v5    # "i":I
    :cond_2f
    new-instance v5, Landroid/animation/FloatKeyframeSet;

    invoke-direct {v5, v4}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    return-object v5

    .line 121
    .end local v4    # "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    :cond_35
    if-eqz v2, :cond_4f

    if-nez v1, :cond_4f

    if-nez v3, :cond_4f

    .line 122
    new-array v4, v0, [Landroid/animation/Keyframe$IntKeyframe;

    .line 123
    .local v4, "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3e
    if-ge v5, v0, :cond_49

    .line 124
    aget-object v6, p0, v5

    check-cast v6, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v6, v4, v5

    .line 123
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 126
    .end local v5    # "i":I
    :cond_49
    new-instance v5, Landroid/animation/IntKeyframeSet;

    invoke-direct {v5, v4}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    return-object v5

    .line 128
    .end local v4    # "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    :cond_4f
    new-instance v4, Landroid/animation/KeyframeSet;

    invoke-direct {v4, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v4
.end method

.method public static varargs blacklist ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .registers 6
    .param p0, "values"    # [Ljava/lang/Object;

    .line 133
    array-length v0, p0

    .line 134
    .local v0, "numKeyframes":I
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe$ObjectKeyframe;

    .line 135
    .local v1, "keyframes":[Landroid/animation/Keyframe$ObjectKeyframe;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_22

    .line 136
    invoke-static {v2}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v3

    .line 137
    const/high16 v2, 0x3f800000    # 1.0f

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v4

    goto :goto_41

    .line 139
    :cond_22
    aget-object v4, p0, v3

    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v2, v1, v3

    .line 140
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2d
    if-ge v2, v0, :cond_41

    .line 141
    int-to-float v3, v2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget-object v4, p0, v2

    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    aput-object v3, v1, v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 144
    .end local v2    # "i":I
    :cond_41
    :goto_41
    new-instance v2, Landroid/animation/KeyframeSet;

    invoke-direct {v2, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v2
.end method

.method public static greylist-max-o ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;
    .registers 2
    .param p0, "path"    # Landroid/graphics/Path;

    .line 148
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static greylist-max-o ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;
    .registers 3
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "error"    # F

    .line 152
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0, p1}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-object v0
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/KeyframeSet;
    .registers 6

    .line 174
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 175
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 176
    .local v1, "numKeyframes":I
    new-array v2, v1, [Landroid/animation/Keyframe;

    .line 177
    .local v2, "newKeyframes":[Landroid/animation/Keyframe;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_1c

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v2, v3

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 180
    .end local v3    # "i":I
    :cond_1c
    new-instance v3, Landroid/animation/KeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 181
    .local v3, "newSet":Landroid/animation/KeyframeSet;
    return-object v3
.end method

.method public bridge synthetic blacklist clone()Landroid/animation/Keyframes;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getKeyframes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getType()Ljava/lang/Class;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getValue(F)Ljava/lang/Object;
    .registers 11
    .param p1, "fraction"    # F

    .line 198
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 199
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_f

    .line 200
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 202
    :cond_f
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v1, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 203
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 202
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 205
    :cond_22
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_59

    .line 206
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    .line 207
    .local v0, "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 208
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_3a

    .line 209
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 211
    :cond_3a
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    .line 212
    .local v2, "prevFraction":F
    sub-float v3, p1, v2

    .line 213
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v4, v2

    div-float/2addr v3, v4

    .line 214
    .local v3, "intervalFraction":F
    iget-object v4, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v5, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 215
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 214
    invoke-interface {v4, v3, v5, v6}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 216
    .end local v0    # "nextKeyframe":Landroid/animation/Keyframe;
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "prevFraction":F
    .end local v3    # "intervalFraction":F
    :cond_59
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_95

    .line 217
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Keyframe;

    .line 218
    .local v0, "prevKeyframe":Landroid/animation/Keyframe;
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 219
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_76

    .line 220
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 222
    :cond_76
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v2

    .line 223
    .restart local v2    # "prevFraction":F
    sub-float v3, p1, v2

    iget-object v4, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 224
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v4, v2

    div-float/2addr v3, v4

    .line 225
    .restart local v3    # "intervalFraction":F
    iget-object v4, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 226
    invoke-virtual {v6}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 225
    invoke-interface {v4, v3, v5, v6}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 228
    .end local v0    # "prevKeyframe":Landroid/animation/Keyframe;
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "prevFraction":F
    .end local v3    # "intervalFraction":F
    :cond_95
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 229
    .restart local v0    # "prevKeyframe":Landroid/animation/Keyframe;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_98
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_d5

    .line 230
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Keyframe;

    .line 231
    .local v2, "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_d1

    .line 232
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    .line 233
    .local v3, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    .line 234
    .local v4, "prevFraction":F
    sub-float v5, p1, v4

    .line 235
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v6

    sub-float/2addr v6, v4

    div-float/2addr v5, v6

    .line 237
    .local v5, "intervalFraction":F
    if-eqz v3, :cond_c2

    .line 238
    invoke-interface {v3, v5}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    .line 240
    :cond_c2
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 241
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 240
    invoke-interface {v6, v5, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 243
    .end local v3    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v4    # "prevFraction":F
    .end local v5    # "intervalFraction":F
    :cond_d1
    move-object v0, v2

    .line 229
    .end local v2    # "nextKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 246
    .end local v1    # "i":I
    :cond_d5
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .line 164
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 165
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 251
    const-string v0, " "

    .line 252
    .local v0, "returnVal":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    if-ge v1, v2, :cond_2d

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Keyframe;

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 255
    .end local v1    # "i":I
    :cond_2d
    return-object v0
.end method

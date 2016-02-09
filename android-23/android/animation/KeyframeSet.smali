.class Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "KeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes;


# instance fields
.field mEvaluator:Landroid/animation/TypeEvaluator;

.field mFirstKeyframe:Landroid/animation/Keyframe;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Landroid/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe;)V
    .locals 1
    .param p1, "keyframes"    # [Landroid/animation/Keyframe;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    array-length v0, p1

    #@4
    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    #@6
    .line 47
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@c
    .line 48
    const/4 v0, 0x0

    #@d
    aget-object v0, p1, v0

    #@f
    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@11
    .line 49
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    #@13
    add-int/lit8 v0, v0, -0x1

    #@15
    aget-object v0, p1, v0

    #@17
    iput-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@19
    .line 50
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@1b
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@21
    .line 44
    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/KeyframeSet;
    .locals 8
    .param p0, "values"    # [F

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 82
    const/4 v0, 0x0

    #@4
    .line 83
    .local v0, "badValue":Z
    array-length v3, p0

    #@5
    .line 84
    .local v3, "numKeyframes":I
    const/4 v4, 0x2

    #@6
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v4

    #@a
    new-array v2, v4, [Landroid/animation/Keyframe$FloatKeyframe;

    #@c
    .line 85
    .local v2, "keyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    if-ne v3, v7, :cond_2

    #@e
    .line 86
    invoke-static {v5}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@14
    aput-object v4, v2, v6

    #@16
    .line 87
    aget v4, p0, v6

    #@18
    const/high16 v5, 0x3f800000    # 1.0f

    #@1a
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@20
    aput-object v4, v2, v7

    #@22
    .line 88
    aget v4, p0, v6

    #@24
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 89
    const/4 v0, 0x1

    #@2b
    .line 101
    :cond_0
    if-eqz v0, :cond_1

    #@2d
    .line 102
    const-string/jumbo v4, "Animator"

    #@30
    const-string/jumbo v5, "Bad value (NaN) in float animator"

    #@33
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 104
    :cond_1
    new-instance v4, Landroid/animation/FloatKeyframeSet;

    #@38
    invoke-direct {v4, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    #@3b
    return-object v4

    #@3c
    .line 92
    :cond_2
    aget v4, p0, v6

    #@3e
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@44
    aput-object v4, v2, v6

    #@46
    .line 93
    const/4 v1, 0x1

    #@47
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@49
    .line 95
    int-to-float v4, v1

    #@4a
    add-int/lit8 v5, v3, -0x1

    #@4c
    int-to-float v5, v5

    #@4d
    div-float/2addr v4, v5

    #@4e
    aget v5, p0, v1

    #@50
    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    #@53
    move-result-object v4

    #@54
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@56
    .line 94
    aput-object v4, v2, v1

    #@58
    .line 96
    aget v4, p0, v1

    #@5a
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    #@5d
    move-result v4

    #@5e
    if-eqz v4, :cond_3

    #@60
    .line 97
    const/4 v0, 0x1

    #@61
    .line 93
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0
.end method

.method public static varargs ofInt([I)Landroid/animation/KeyframeSet;
    .locals 7
    .param p0, "values"    # [I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 66
    array-length v2, p0

    #@4
    .line 67
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    #@5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v3

    #@9
    new-array v1, v3, [Landroid/animation/Keyframe$IntKeyframe;

    #@b
    .line 68
    .local v1, "keyframes":[Landroid/animation/Keyframe$IntKeyframe;
    if-ne v2, v6, :cond_1

    #@d
    .line 69
    invoke-static {v5}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    #@13
    aput-object v3, v1, v4

    #@15
    .line 70
    aget v3, p0, v4

    #@17
    const/high16 v4, 0x3f800000    # 1.0f

    #@19
    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    #@1f
    aput-object v3, v1, v6

    #@21
    .line 78
    :cond_0
    new-instance v3, Landroid/animation/IntKeyframeSet;

    #@23
    invoke-direct {v3, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    #@26
    return-object v3

    #@27
    .line 72
    :cond_1
    aget v3, p0, v4

    #@29
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    #@2f
    aput-object v3, v1, v4

    #@31
    .line 73
    const/4 v0, 0x1

    #@32
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@34
    .line 75
    int-to-float v3, v0

    #@35
    add-int/lit8 v4, v2, -0x1

    #@37
    int-to-float v4, v4

    #@38
    div-float/2addr v3, v4

    #@39
    aget v4, p0, v0

    #@3b
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    #@41
    .line 74
    aput-object v3, v1, v0

    #@43
    .line 73
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0
.end method

.method public static varargs ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .locals 8
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;

    #@0
    .prologue
    .line 109
    array-length v6, p0

    #@1
    .line 110
    .local v6, "numKeyframes":I
    const/4 v1, 0x0

    #@2
    .line 111
    .local v1, "hasFloat":Z
    const/4 v2, 0x0

    #@3
    .line 112
    .local v2, "hasInt":Z
    const/4 v3, 0x0

    #@4
    .line 113
    .local v3, "hasOther":Z
    const/4 v4, 0x0

    #@5
    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    #@7
    .line 114
    aget-object v7, p0, v4

    #@9
    instance-of v7, v7, Landroid/animation/Keyframe$FloatKeyframe;

    #@b
    if-eqz v7, :cond_0

    #@d
    .line 115
    const/4 v1, 0x1

    #@e
    .line 113
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@10
    goto :goto_0

    #@11
    .line 116
    :cond_0
    aget-object v7, p0, v4

    #@13
    instance-of v7, v7, Landroid/animation/Keyframe$IntKeyframe;

    #@15
    if-eqz v7, :cond_1

    #@17
    .line 117
    const/4 v2, 0x1

    #@18
    goto :goto_1

    #@19
    .line 119
    :cond_1
    const/4 v3, 0x1

    #@1a
    goto :goto_1

    #@1b
    .line 122
    :cond_2
    if-eqz v1, :cond_3

    #@1d
    if-eqz v2, :cond_5

    #@1f
    .line 128
    :cond_3
    if-eqz v2, :cond_4

    #@21
    if-eqz v1, :cond_7

    #@23
    .line 135
    :cond_4
    new-instance v7, Landroid/animation/KeyframeSet;

    #@25
    invoke-direct {v7, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    #@28
    return-object v7

    #@29
    .line 122
    :cond_5
    if-nez v3, :cond_3

    #@2b
    .line 123
    new-array v0, v6, [Landroid/animation/Keyframe$FloatKeyframe;

    #@2d
    .line 124
    .local v0, "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v4, 0x0

    #@2e
    :goto_2
    if-ge v4, v6, :cond_6

    #@30
    .line 125
    aget-object v7, p0, v4

    #@32
    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    #@34
    aput-object v7, v0, v4

    #@36
    .line 124
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_2

    #@39
    .line 127
    :cond_6
    new-instance v7, Landroid/animation/FloatKeyframeSet;

    #@3b
    invoke-direct {v7, v0}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    #@3e
    return-object v7

    #@3f
    .line 128
    .end local v0    # "floatKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
    :cond_7
    if-nez v3, :cond_4

    #@41
    .line 129
    new-array v5, v6, [Landroid/animation/Keyframe$IntKeyframe;

    #@43
    .line 130
    .local v5, "intKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v4, 0x0

    #@44
    :goto_3
    if-ge v4, v6, :cond_8

    #@46
    .line 131
    aget-object v7, p0, v4

    #@48
    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    #@4a
    aput-object v7, v5, v4

    #@4c
    .line 130
    add-int/lit8 v4, v4, 0x1

    #@4e
    goto :goto_3

    #@4f
    .line 133
    :cond_8
    new-instance v7, Landroid/animation/IntKeyframeSet;

    #@51
    invoke-direct {v7, v5}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    #@54
    return-object v7
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .locals 7
    .param p0, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 140
    array-length v2, p0

    #@4
    .line 141
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    #@5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v3

    #@9
    new-array v1, v3, [Landroid/animation/Keyframe$ObjectKeyframe;

    #@b
    .line 142
    .local v1, "keyframes":[Landroid/animation/Keyframe$ObjectKeyframe;
    if-ne v2, v6, :cond_1

    #@d
    .line 143
    invoke-static {v5}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    #@13
    aput-object v3, v1, v4

    #@15
    .line 144
    aget-object v3, p0, v4

    #@17
    const/high16 v4, 0x3f800000    # 1.0f

    #@19
    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    #@1f
    aput-object v3, v1, v6

    #@21
    .line 151
    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    #@23
    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    #@26
    return-object v3

    #@27
    .line 146
    :cond_1
    aget-object v3, p0, v4

    #@29
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    #@2f
    aput-object v3, v1, v4

    #@31
    .line 147
    const/4 v0, 0x1

    #@32
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@34
    .line 148
    int-to-float v3, v0

    #@35
    add-int/lit8 v4, v2, -0x1

    #@37
    int-to-float v4, v4

    #@38
    div-float/2addr v3, v4

    #@39
    aget-object v4, p0, v0

    #@3b
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    #@3e
    move-result-object v3

    #@3f
    check-cast v3, Landroid/animation/Keyframe$ObjectKeyframe;

    #@41
    aput-object v3, v1, v0

    #@43
    .line 147
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_0
.end method

.method public static ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 155
    new-instance v0, Landroid/animation/PathKeyframes;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;)V

    #@5
    return-object v0
.end method

.method public static ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;
    .locals 1
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "error"    # F

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/animation/PathKeyframes;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clone()Landroid/animation/KeyframeSet;
    .locals 6

    #@0
    .prologue
    .line 181
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@2
    .line 182
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    iget-object v5, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@4
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    .line 183
    .local v4, "numKeyframes":I
    new-array v2, v4, [Landroid/animation/Keyframe;

    #@a
    .line 184
    .local v2, "newKeyframes":[Landroid/animation/Keyframe;
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@d
    .line 185
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Landroid/animation/Keyframe;

    #@13
    invoke-virtual {v5}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    #@16
    move-result-object v5

    #@17
    aput-object v5, v2, v0

    #@19
    .line 184
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 187
    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    #@1e
    invoke-direct {v3, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    #@21
    .line 188
    .local v3, "newSet":Landroid/animation/KeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@2
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 9
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 205
    iget v6, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    #@2
    const/4 v7, 0x2

    #@3
    if-ne v6, v7, :cond_1

    #@5
    .line 206
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 207
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@b
    invoke-interface {v6, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@e
    move-result p1

    #@f
    .line 209
    :cond_0
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@11
    iget-object v7, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@13
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    .line 210
    iget-object v8, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@19
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v8

    #@1d
    .line 209
    invoke-interface {v6, p1, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v6

    #@21
    return-object v6

    #@22
    .line 212
    :cond_1
    const/4 v6, 0x0

    #@23
    cmpg-float v6, p1, v6

    #@25
    if-gtz v6, :cond_3

    #@27
    .line 213
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@29
    const/4 v7, 0x1

    #@2a
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Landroid/animation/Keyframe;

    #@30
    .line 214
    .local v3, "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@33
    move-result-object v1

    #@34
    .line 215
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_2

    #@36
    .line 216
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@39
    move-result p1

    #@3a
    .line 218
    :cond_2
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@3c
    invoke-virtual {v6}, Landroid/animation/Keyframe;->getFraction()F

    #@3f
    move-result v4

    #@40
    .line 219
    .local v4, "prevFraction":F
    sub-float v6, p1, v4

    #@42
    .line 220
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    #@45
    move-result v7

    #@46
    sub-float/2addr v7, v4

    #@47
    .line 219
    div-float v2, v6, v7

    #@49
    .line 221
    .local v2, "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@4b
    iget-object v7, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@4d
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@50
    move-result-object v7

    #@51
    .line 222
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@54
    move-result-object v8

    #@55
    .line 221
    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v6

    #@59
    return-object v6

    #@5a
    .line 223
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    .end local v4    # "prevFraction":F
    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    #@5c
    cmpl-float v6, p1, v6

    #@5e
    if-ltz v6, :cond_5

    #@60
    .line 224
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@62
    iget v7, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    #@64
    add-int/lit8 v7, v7, -0x2

    #@66
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v5

    #@6a
    check-cast v5, Landroid/animation/Keyframe;

    #@6c
    .line 225
    .local v5, "prevKeyframe":Landroid/animation/Keyframe;
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@6e
    invoke-virtual {v6}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@71
    move-result-object v1

    #@72
    .line 226
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_4

    #@74
    .line 227
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@77
    move-result p1

    #@78
    .line 229
    :cond_4
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    #@7b
    move-result v4

    #@7c
    .line 230
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    #@7e
    .line 231
    iget-object v7, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@80
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    #@83
    move-result v7

    #@84
    sub-float/2addr v7, v4

    #@85
    .line 230
    div-float v2, v6, v7

    #@87
    .line 232
    .restart local v2    # "intervalFraction":F
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@89
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@8c
    move-result-object v7

    #@8d
    .line 233
    iget-object v8, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@8f
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@92
    move-result-object v8

    #@93
    .line 232
    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    move-result-object v6

    #@97
    return-object v6

    #@98
    .line 235
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    .end local v5    # "prevKeyframe":Landroid/animation/Keyframe;
    :cond_5
    iget-object v5, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    #@9a
    .line 236
    .restart local v5    # "prevKeyframe":Landroid/animation/Keyframe;
    const/4 v0, 0x1

    #@9b
    .local v0, "i":I
    :goto_0
    iget v6, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    #@9d
    if-ge v0, v6, :cond_8

    #@9f
    .line 237
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@a1
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a4
    move-result-object v3

    #@a5
    check-cast v3, Landroid/animation/Keyframe;

    #@a7
    .line 238
    .restart local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    #@aa
    move-result v6

    #@ab
    cmpg-float v6, p1, v6

    #@ad
    if-gez v6, :cond_7

    #@af
    .line 239
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@b2
    move-result-object v1

    #@b3
    .line 240
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getFraction()F

    #@b6
    move-result v4

    #@b7
    .line 241
    .restart local v4    # "prevFraction":F
    sub-float v6, p1, v4

    #@b9
    .line 242
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    #@bc
    move-result v7

    #@bd
    sub-float/2addr v7, v4

    #@be
    .line 241
    div-float v2, v6, v7

    #@c0
    .line 244
    .restart local v2    # "intervalFraction":F
    if-eqz v1, :cond_6

    #@c2
    .line 245
    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@c5
    move-result v2

    #@c6
    .line 247
    :cond_6
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@c8
    invoke-virtual {v5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@cb
    move-result-object v7

    #@cc
    .line 248
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@cf
    move-result-object v8

    #@d0
    .line 247
    invoke-interface {v6, v2, v7, v8}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    move-result-object v6

    #@d4
    return-object v6

    #@d5
    .line 250
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v4    # "prevFraction":F
    :cond_7
    move-object v5, v3

    #@d6
    .line 236
    add-int/lit8 v0, v0, 0x1

    #@d8
    goto :goto_0

    #@d9
    .line 253
    .end local v3    # "nextKeyframe":Landroid/animation/Keyframe;
    :cond_8
    iget-object v6, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    #@db
    invoke-virtual {v6}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@de
    move-result-object v6

    #@df
    return-object v6
.end method

.method public invalidateCache()V
    .locals 0

    #@0
    .prologue
    .line 58
    return-void
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@2
    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 258
    const-string/jumbo v1, " "

    #@3
    .line 259
    .local v1, "returnVal":Ljava/lang/String;
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    #@6
    if-ge v0, v2, :cond_0

    #@8
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    #@13
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/animation/Keyframe;

    #@19
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string/jumbo v3, "  "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 259
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 262
    :cond_0
    return-object v1
.end method

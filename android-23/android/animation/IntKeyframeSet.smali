.class Landroid/animation/IntKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "IntKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# instance fields
.field private deltaValue:I

.field private firstTime:Z

.field private firstValue:I

.field private lastValue:I


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$IntKeyframe;)V
    .locals 1
    .param p1, "keyframes"    # [Landroid/animation/Keyframe$IntKeyframe;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    #@3
    .line 37
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/animation/IntKeyframeSet;->firstTime:Z

    #@6
    .line 39
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/IntKeyframeSet;
    .locals 6

    #@0
    .prologue
    .line 50
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@2
    .line 51
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    iget-object v5, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@4
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    .line 52
    .local v4, "numKeyframes":I
    new-array v2, v4, [Landroid/animation/Keyframe$IntKeyframe;

    #@a
    .line 53
    .local v2, "newKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@d
    .line 54
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
    check-cast v5, Landroid/animation/Keyframe$IntKeyframe;

    #@19
    aput-object v5, v2, v0

    #@1b
    .line 53
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 56
    :cond_0
    new-instance v3, Landroid/animation/IntKeyframeSet;

    #@20
    invoke-direct {v3, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    #@23
    .line 57
    .local v3, "newSet":Landroid/animation/IntKeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIntValue(F)I
    .locals 13
    .param p1, "fraction"    # F

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 67
    iget v9, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    #@4
    const/4 v10, 0x2

    #@5
    if-ne v9, v10, :cond_3

    #@7
    .line 68
    iget-boolean v9, p0, Landroid/animation/IntKeyframeSet;->firstTime:Z

    #@9
    if-eqz v9, :cond_0

    #@b
    .line 69
    iput-boolean v11, p0, Landroid/animation/IntKeyframeSet;->firstTime:Z

    #@d
    .line 70
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@f
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v9

    #@13
    check-cast v9, Landroid/animation/Keyframe$IntKeyframe;

    #@15
    invoke-virtual {v9}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@18
    move-result v9

    #@19
    iput v9, p0, Landroid/animation/IntKeyframeSet;->firstValue:I

    #@1b
    .line 71
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@1d
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, Landroid/animation/Keyframe$IntKeyframe;

    #@23
    invoke-virtual {v9}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@26
    move-result v9

    #@27
    iput v9, p0, Landroid/animation/IntKeyframeSet;->lastValue:I

    #@29
    .line 72
    iget v9, p0, Landroid/animation/IntKeyframeSet;->lastValue:I

    #@2b
    iget v10, p0, Landroid/animation/IntKeyframeSet;->firstValue:I

    #@2d
    sub-int/2addr v9, v10

    #@2e
    iput v9, p0, Landroid/animation/IntKeyframeSet;->deltaValue:I

    #@30
    .line 74
    :cond_0
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@32
    if-eqz v9, :cond_1

    #@34
    .line 75
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@36
    invoke-interface {v9, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@39
    move-result p1

    #@3a
    .line 77
    :cond_1
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@3c
    if-nez v9, :cond_2

    #@3e
    .line 78
    iget v9, p0, Landroid/animation/IntKeyframeSet;->firstValue:I

    #@40
    iget v10, p0, Landroid/animation/IntKeyframeSet;->deltaValue:I

    #@42
    int-to-float v10, v10

    #@43
    mul-float/2addr v10, p1

    #@44
    float-to-int v10, v10

    #@45
    add-int/2addr v9, v10

    #@46
    return v9

    #@47
    .line 80
    :cond_2
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@49
    iget v10, p0, Landroid/animation/IntKeyframeSet;->firstValue:I

    #@4b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4e
    move-result-object v10

    #@4f
    iget v11, p0, Landroid/animation/IntKeyframeSet;->lastValue:I

    #@51
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v11

    #@55
    invoke-interface {v9, p1, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v9

    #@59
    check-cast v9, Ljava/lang/Number;

    #@5b
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    #@5e
    move-result v9

    #@5f
    return v9

    #@60
    .line 83
    :cond_3
    const/4 v9, 0x0

    #@61
    cmpg-float v9, p1, v9

    #@63
    if-gtz v9, :cond_6

    #@65
    .line 84
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@67
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v7

    #@6b
    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    #@6d
    .line 85
    .local v7, "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@6f
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v4

    #@73
    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    #@75
    .line 86
    .local v4, "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@78
    move-result v8

    #@79
    .line 87
    .local v8, "prevValue":I
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@7c
    move-result v5

    #@7d
    .line 88
    .local v5, "nextValue":I
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@80
    move-result v6

    #@81
    .line 89
    .local v6, "prevFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@84
    move-result v3

    #@85
    .line 90
    .local v3, "nextFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@88
    move-result-object v1

    #@89
    .line 91
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_4

    #@8b
    .line 92
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@8e
    move-result p1

    #@8f
    .line 94
    :cond_4
    sub-float v9, p1, v6

    #@91
    sub-float v10, v3, v6

    #@93
    div-float v2, v9, v10

    #@95
    .line 95
    .local v2, "intervalFraction":F
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@97
    if-nez v9, :cond_5

    #@99
    .line 96
    sub-int v9, v5, v8

    #@9b
    int-to-float v9, v9

    #@9c
    mul-float/2addr v9, v2

    #@9d
    float-to-int v9, v9

    #@9e
    add-int/2addr v9, v8

    #@9f
    .line 95
    :goto_0
    return v9

    #@a0
    .line 97
    :cond_5
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@a2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v10

    #@a6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v11

    #@aa
    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v9

    #@ae
    check-cast v9, Ljava/lang/Number;

    #@b0
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    #@b3
    move-result v9

    #@b4
    goto :goto_0

    #@b5
    .line 99
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v5    # "nextValue":I
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v8    # "prevValue":I
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    #@b7
    cmpl-float v9, p1, v9

    #@b9
    if-ltz v9, :cond_9

    #@bb
    .line 100
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@bd
    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    #@bf
    add-int/lit8 v10, v10, -0x2

    #@c1
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c4
    move-result-object v7

    #@c5
    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    #@c7
    .line 101
    .restart local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@c9
    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    #@cb
    add-int/lit8 v10, v10, -0x1

    #@cd
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@d0
    move-result-object v4

    #@d1
    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    #@d3
    .line 102
    .restart local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@d6
    move-result v8

    #@d7
    .line 103
    .restart local v8    # "prevValue":I
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@da
    move-result v5

    #@db
    .line 104
    .restart local v5    # "nextValue":I
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@de
    move-result v6

    #@df
    .line 105
    .restart local v6    # "prevFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@e2
    move-result v3

    #@e3
    .line 106
    .restart local v3    # "nextFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@e6
    move-result-object v1

    #@e7
    .line 107
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_7

    #@e9
    .line 108
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@ec
    move-result p1

    #@ed
    .line 110
    :cond_7
    sub-float v9, p1, v6

    #@ef
    sub-float v10, v3, v6

    #@f1
    div-float v2, v9, v10

    #@f3
    .line 111
    .restart local v2    # "intervalFraction":F
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@f5
    if-nez v9, :cond_8

    #@f7
    .line 112
    sub-int v9, v5, v8

    #@f9
    int-to-float v9, v9

    #@fa
    mul-float/2addr v9, v2

    #@fb
    float-to-int v9, v9

    #@fc
    add-int/2addr v9, v8

    #@fd
    .line 111
    :goto_1
    return v9

    #@fe
    .line 113
    :cond_8
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@100
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@103
    move-result-object v10

    #@104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@107
    move-result-object v11

    #@108
    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    move-result-object v9

    #@10c
    check-cast v9, Ljava/lang/Number;

    #@10e
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    #@111
    move-result v9

    #@112
    goto :goto_1

    #@113
    .line 115
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v5    # "nextValue":I
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v8    # "prevValue":I
    :cond_9
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@115
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@118
    move-result-object v7

    #@119
    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    #@11b
    .line 116
    .restart local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    const/4 v0, 0x1

    #@11c
    .local v0, "i":I
    :goto_2
    iget v9, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    #@11e
    if-ge v0, v9, :cond_d

    #@120
    .line 117
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@122
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@125
    move-result-object v4

    #@126
    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    #@128
    .line 118
    .restart local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@12b
    move-result v9

    #@12c
    cmpg-float v9, p1, v9

    #@12e
    if-gez v9, :cond_c

    #@130
    .line 119
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@133
    move-result-object v1

    #@134
    .line 120
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@137
    move-result v9

    #@138
    sub-float v9, p1, v9

    #@13a
    .line 121
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@13d
    move-result v10

    #@13e
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    #@141
    move-result v11

    #@142
    sub-float/2addr v10, v11

    #@143
    .line 120
    div-float v2, v9, v10

    #@145
    .line 122
    .restart local v2    # "intervalFraction":F
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@148
    move-result v8

    #@149
    .line 123
    .restart local v8    # "prevValue":I
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    #@14c
    move-result v5

    #@14d
    .line 125
    .restart local v5    # "nextValue":I
    if-eqz v1, :cond_a

    #@14f
    .line 126
    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@152
    move-result v2

    #@153
    .line 128
    :cond_a
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@155
    if-nez v9, :cond_b

    #@157
    .line 129
    sub-int v9, v5, v8

    #@159
    int-to-float v9, v9

    #@15a
    mul-float/2addr v9, v2

    #@15b
    float-to-int v9, v9

    #@15c
    add-int/2addr v9, v8

    #@15d
    .line 128
    :goto_3
    return v9

    #@15e
    .line 130
    :cond_b
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@160
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@163
    move-result-object v10

    #@164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@167
    move-result-object v11

    #@168
    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16b
    move-result-object v9

    #@16c
    check-cast v9, Ljava/lang/Number;

    #@16e
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    #@171
    move-result v9

    #@172
    goto :goto_3

    #@173
    .line 133
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v5    # "nextValue":I
    .end local v8    # "prevValue":I
    :cond_c
    move-object v7, v4

    #@174
    .line 116
    add-int/lit8 v0, v0, 0x1

    #@176
    goto :goto_2

    #@177
    .line 136
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    :cond_d
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    #@179
    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    #@17b
    add-int/lit8 v10, v10, -0x1

    #@17d
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@180
    move-result-object v9

    #@181
    check-cast v9, Landroid/animation/Keyframe;

    #@183
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@186
    move-result-object v9

    #@187
    check-cast v9, Ljava/lang/Number;

    #@189
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    #@18c
    move-result v9

    #@18d
    return v9
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 141
    const-class v0, Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    #@0
    .prologue
    .line 62
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/animation/IntKeyframeSet;->firstTime:Z

    #@3
    .line 61
    return-void
.end method

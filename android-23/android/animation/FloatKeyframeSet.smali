.class Landroid/animation/FloatKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "FloatKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# instance fields
.field private deltaValue:F

.field private firstTime:Z

.field private firstValue:F

.field private lastValue:F


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$FloatKeyframe;)V
    .locals 1
    .param p1, "keyframes"    # [Landroid/animation/Keyframe$FloatKeyframe;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    #@3
    .line 37
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/animation/FloatKeyframeSet;->firstTime:Z

    #@6
    .line 39
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/FloatKeyframeSet;
    .locals 6

    #@0
    .prologue
    .line 50
    iget-object v1, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@2
    .line 51
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    iget-object v5, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@4
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@7
    move-result v4

    #@8
    .line 52
    .local v4, "numKeyframes":I
    new-array v2, v4, [Landroid/animation/Keyframe$FloatKeyframe;

    #@a
    .line 53
    .local v2, "newKeyframes":[Landroid/animation/Keyframe$FloatKeyframe;
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
    check-cast v5, Landroid/animation/Keyframe$FloatKeyframe;

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
    new-instance v3, Landroid/animation/FloatKeyframeSet;

    #@20
    invoke-direct {v3, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    #@23
    .line 57
    .local v3, "newSet":Landroid/animation/FloatKeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    #@0
    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/animation/FloatKeyframeSet;->clone()Landroid/animation/FloatKeyframeSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 13
    .param p1, "fraction"    # F

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 67
    iget v9, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    #@4
    const/4 v10, 0x2

    #@5
    if-ne v9, v10, :cond_3

    #@7
    .line 68
    iget-boolean v9, p0, Landroid/animation/FloatKeyframeSet;->firstTime:Z

    #@9
    if-eqz v9, :cond_0

    #@b
    .line 69
    iput-boolean v11, p0, Landroid/animation/FloatKeyframeSet;->firstTime:Z

    #@d
    .line 70
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@f
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v9

    #@13
    check-cast v9, Landroid/animation/Keyframe$FloatKeyframe;

    #@15
    invoke-virtual {v9}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@18
    move-result v9

    #@19
    iput v9, p0, Landroid/animation/FloatKeyframeSet;->firstValue:F

    #@1b
    .line 71
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@1d
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v9

    #@21
    check-cast v9, Landroid/animation/Keyframe$FloatKeyframe;

    #@23
    invoke-virtual {v9}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@26
    move-result v9

    #@27
    iput v9, p0, Landroid/animation/FloatKeyframeSet;->lastValue:F

    #@29
    .line 72
    iget v9, p0, Landroid/animation/FloatKeyframeSet;->lastValue:F

    #@2b
    iget v10, p0, Landroid/animation/FloatKeyframeSet;->firstValue:F

    #@2d
    sub-float/2addr v9, v10

    #@2e
    iput v9, p0, Landroid/animation/FloatKeyframeSet;->deltaValue:F

    #@30
    .line 74
    :cond_0
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@32
    if-eqz v9, :cond_1

    #@34
    .line 75
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@36
    invoke-interface {v9, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@39
    move-result p1

    #@3a
    .line 77
    :cond_1
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@3c
    if-nez v9, :cond_2

    #@3e
    .line 78
    iget v9, p0, Landroid/animation/FloatKeyframeSet;->firstValue:F

    #@40
    iget v10, p0, Landroid/animation/FloatKeyframeSet;->deltaValue:F

    #@42
    mul-float/2addr v10, p1

    #@43
    add-float/2addr v9, v10

    #@44
    return v9

    #@45
    .line 80
    :cond_2
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@47
    iget v10, p0, Landroid/animation/FloatKeyframeSet;->firstValue:F

    #@49
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4c
    move-result-object v10

    #@4d
    iget v11, p0, Landroid/animation/FloatKeyframeSet;->lastValue:F

    #@4f
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@52
    move-result-object v11

    #@53
    invoke-interface {v9, p1, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v9

    #@57
    check-cast v9, Ljava/lang/Number;

    #@59
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    #@5c
    move-result v9

    #@5d
    return v9

    #@5e
    .line 83
    :cond_3
    const/4 v9, 0x0

    #@5f
    cmpg-float v9, p1, v9

    #@61
    if-gtz v9, :cond_6

    #@63
    .line 84
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@65
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v7

    #@69
    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    #@6b
    .line 85
    .local v7, "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@6d
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v4

    #@71
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@73
    .line 86
    .local v4, "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@76
    move-result v8

    #@77
    .line 87
    .local v8, "prevValue":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@7a
    move-result v5

    #@7b
    .line 88
    .local v5, "nextValue":F
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@7e
    move-result v6

    #@7f
    .line 89
    .local v6, "prevFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@82
    move-result v3

    #@83
    .line 90
    .local v3, "nextFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@86
    move-result-object v1

    #@87
    .line 91
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_4

    #@89
    .line 92
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@8c
    move-result p1

    #@8d
    .line 94
    :cond_4
    sub-float v9, p1, v6

    #@8f
    sub-float v10, v3, v6

    #@91
    div-float v2, v9, v10

    #@93
    .line 95
    .local v2, "intervalFraction":F
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@95
    if-nez v9, :cond_5

    #@97
    .line 96
    sub-float v9, v5, v8

    #@99
    mul-float/2addr v9, v2

    #@9a
    add-float/2addr v9, v8

    #@9b
    .line 95
    :goto_0
    return v9

    #@9c
    .line 97
    :cond_5
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@9e
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a1
    move-result-object v10

    #@a2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a5
    move-result-object v11

    #@a6
    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    move-result-object v9

    #@aa
    check-cast v9, Ljava/lang/Number;

    #@ac
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    #@af
    move-result v9

    #@b0
    goto :goto_0

    #@b1
    .line 99
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v5    # "nextValue":F
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v8    # "prevValue":F
    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    #@b3
    cmpl-float v9, p1, v9

    #@b5
    if-ltz v9, :cond_9

    #@b7
    .line 100
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@b9
    iget v10, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    #@bb
    add-int/lit8 v10, v10, -0x2

    #@bd
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@c0
    move-result-object v7

    #@c1
    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    #@c3
    .line 101
    .restart local v7    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@c5
    iget v10, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    #@c7
    add-int/lit8 v10, v10, -0x1

    #@c9
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@cc
    move-result-object v4

    #@cd
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@cf
    .line 102
    .restart local v4    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@d2
    move-result v8

    #@d3
    .line 103
    .restart local v8    # "prevValue":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@d6
    move-result v5

    #@d7
    .line 104
    .restart local v5    # "nextValue":F
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@da
    move-result v6

    #@db
    .line 105
    .restart local v6    # "prevFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@de
    move-result v3

    #@df
    .line 106
    .restart local v3    # "nextFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@e2
    move-result-object v1

    #@e3
    .line 107
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_7

    #@e5
    .line 108
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@e8
    move-result p1

    #@e9
    .line 110
    :cond_7
    sub-float v9, p1, v6

    #@eb
    sub-float v10, v3, v6

    #@ed
    div-float v2, v9, v10

    #@ef
    .line 111
    .restart local v2    # "intervalFraction":F
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@f1
    if-nez v9, :cond_8

    #@f3
    .line 112
    sub-float v9, v5, v8

    #@f5
    mul-float/2addr v9, v2

    #@f6
    add-float/2addr v9, v8

    #@f7
    .line 111
    :goto_1
    return v9

    #@f8
    .line 113
    :cond_8
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@fa
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@fd
    move-result-object v10

    #@fe
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@101
    move-result-object v11

    #@102
    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    move-result-object v9

    #@106
    check-cast v9, Ljava/lang/Number;

    #@108
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    #@10b
    move-result v9

    #@10c
    goto :goto_1

    #@10d
    .line 116
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v5    # "nextValue":F
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    .end local v8    # "prevValue":F
    :cond_9
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@10f
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@112
    move-result-object v7

    #@113
    check-cast v7, Landroid/animation/Keyframe$FloatKeyframe;

    #@115
    .line 117
    .restart local v7    # "prevKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    const/4 v0, 0x1

    #@116
    .local v0, "i":I
    :goto_2
    iget v9, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    #@118
    if-ge v0, v9, :cond_d

    #@11a
    .line 118
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@11c
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11f
    move-result-object v4

    #@120
    check-cast v4, Landroid/animation/Keyframe$FloatKeyframe;

    #@122
    .line 119
    .restart local v4    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@125
    move-result v9

    #@126
    cmpg-float v9, p1, v9

    #@128
    if-gez v9, :cond_c

    #@12a
    .line 120
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@12d
    move-result-object v1

    #@12e
    .line 121
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@131
    move-result v9

    #@132
    sub-float v9, p1, v9

    #@134
    .line 122
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@137
    move-result v10

    #@138
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFraction()F

    #@13b
    move-result v11

    #@13c
    sub-float/2addr v10, v11

    #@13d
    .line 121
    div-float v2, v9, v10

    #@13f
    .line 123
    .restart local v2    # "intervalFraction":F
    invoke-virtual {v7}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@142
    move-result v8

    #@143
    .line 124
    .restart local v8    # "prevValue":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    #@146
    move-result v5

    #@147
    .line 126
    .restart local v5    # "nextValue":F
    if-eqz v1, :cond_a

    #@149
    .line 127
    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    #@14c
    move-result v2

    #@14d
    .line 129
    :cond_a
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@14f
    if-nez v9, :cond_b

    #@151
    .line 130
    sub-float v9, v5, v8

    #@153
    mul-float/2addr v9, v2

    #@154
    add-float/2addr v9, v8

    #@155
    .line 129
    :goto_3
    return v9

    #@156
    .line 131
    :cond_b
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@158
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15b
    move-result-object v10

    #@15c
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@15f
    move-result-object v11

    #@160
    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@163
    move-result-object v9

    #@164
    check-cast v9, Ljava/lang/Number;

    #@166
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    #@169
    move-result v9

    #@16a
    goto :goto_3

    #@16b
    .line 134
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v5    # "nextValue":F
    .end local v8    # "prevValue":F
    :cond_c
    move-object v7, v4

    #@16c
    .line 117
    add-int/lit8 v0, v0, 0x1

    #@16e
    goto :goto_2

    #@16f
    .line 137
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$FloatKeyframe;
    :cond_d
    iget-object v9, p0, Landroid/animation/FloatKeyframeSet;->mKeyframes:Ljava/util/List;

    #@171
    iget v10, p0, Landroid/animation/FloatKeyframeSet;->mNumKeyframes:I

    #@173
    add-int/lit8 v10, v10, -0x1

    #@175
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@178
    move-result-object v9

    #@179
    check-cast v9, Landroid/animation/Keyframe;

    #@17b
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    #@17e
    move-result-object v9

    #@17f
    check-cast v9, Ljava/lang/Number;

    #@181
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    #@184
    move-result v9

    #@185
    return v9
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 142
    const-class v0, Ljava/lang/Float;

    #@2
    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/animation/FloatKeyframeSet;->getFloatValue(F)F

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    iput-boolean v0, p0, Landroid/animation/FloatKeyframeSet;->firstTime:Z

    #@3
    .line 61
    return-void
.end method

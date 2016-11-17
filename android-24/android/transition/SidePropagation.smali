.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    #@3
    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    #@5
    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    #@7
    .line 36
    const/16 v0, 0x50

    #@9
    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    #@b
    .line 32
    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 124
    iget v4, p0, Landroid/transition/SidePropagation;->mSide:I

    #@4
    const v5, 0x800003

    #@7
    if-ne v4, v5, :cond_2

    #@9
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    #@c
    move-result v4

    #@d
    if-ne v4, v1, :cond_0

    #@f
    .line 126
    .local v1, "isRtl":Z
    :goto_0
    if-eqz v1, :cond_1

    #@11
    const/4 v2, 0x5

    #@12
    .line 133
    .end local v1    # "isRtl":Z
    .local v2, "side":I
    :goto_1
    const/4 v0, 0x0

    #@13
    .line 134
    .local v0, "distance":I
    sparse-switch v2, :sswitch_data_0

    #@16
    .line 148
    :goto_2
    return v0

    #@17
    .end local v0    # "distance":I
    .end local v2    # "side":I
    :cond_0
    move v1, v3

    #@18
    .line 125
    goto :goto_0

    #@19
    .line 126
    .restart local v1    # "isRtl":Z
    :cond_1
    const/4 v2, 0x3

    #@1a
    .restart local v2    # "side":I
    goto :goto_1

    #@1b
    .line 127
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_2
    iget v4, p0, Landroid/transition/SidePropagation;->mSide:I

    #@1d
    const v5, 0x800005

    #@20
    if-ne v4, v5, :cond_5

    #@22
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    #@25
    move-result v4

    #@26
    if-ne v4, v1, :cond_3

    #@28
    .line 129
    .restart local v1    # "isRtl":Z
    :goto_3
    if-eqz v1, :cond_4

    #@2a
    const/4 v2, 0x3

    #@2b
    .restart local v2    # "side":I
    goto :goto_1

    #@2c
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_3
    move v1, v3

    #@2d
    .line 128
    goto :goto_3

    #@2e
    .line 129
    .restart local v1    # "isRtl":Z
    :cond_4
    const/4 v2, 0x5

    #@2f
    .restart local v2    # "side":I
    goto :goto_1

    #@30
    .line 131
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_5
    iget v2, p0, Landroid/transition/SidePropagation;->mSide:I

    #@32
    .restart local v2    # "side":I
    goto :goto_1

    #@33
    .line 136
    .restart local v0    # "distance":I
    :sswitch_0
    sub-int v3, p8, p2

    #@35
    sub-int v4, p5, p3

    #@37
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@3a
    move-result v4

    #@3b
    add-int v0, v3, v4

    #@3d
    .line 137
    goto :goto_2

    #@3e
    .line 139
    :sswitch_1
    sub-int v3, p9, p3

    #@40
    sub-int v4, p4, p2

    #@42
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@45
    move-result v4

    #@46
    add-int v0, v3, v4

    #@48
    .line 140
    goto :goto_2

    #@49
    .line 142
    :sswitch_2
    sub-int v3, p2, p6

    #@4b
    sub-int v4, p5, p3

    #@4d
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@50
    move-result v4

    #@51
    add-int v0, v3, v4

    #@53
    .line 143
    goto :goto_2

    #@54
    .line 145
    :sswitch_3
    sub-int v3, p3, p7

    #@56
    sub-int v4, p4, p2

    #@58
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@5b
    move-result v4

    #@5c
    add-int v0, v3, v4

    #@5e
    .line 146
    goto :goto_2

    #@5f
    .line 134
    nop

    #@60
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 152
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 157
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 152
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 75
    if-nez p3, :cond_0

    #@2
    if-nez p4, :cond_0

    #@4
    .line 76
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 78
    :cond_0
    const/4 v12, 0x1

    #@8
    .line 79
    .local v12, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    #@b
    move-result-object v15

    #@c
    .line 81
    .local v15, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_1

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p3

    #@12
    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_3

    #@18
    .line 82
    :cond_1
    move-object/from16 v20, p3

    #@1a
    .line 83
    .local v20, "positionValues":Landroid/transition/TransitionValues;
    const/4 v12, -0x1

    #@1b
    .line 88
    :goto_0
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v20

    #@1f
    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    #@22
    move-result v4

    #@23
    .line 89
    .local v4, "viewCenterX":I
    move-object/from16 v0, p0

    #@25
    move-object/from16 v1, v20

    #@27
    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    #@2a
    move-result v5

    #@2b
    .line 91
    .local v5, "viewCenterY":I
    const/4 v2, 0x2

    #@2c
    new-array v0, v2, [I

    #@2e
    move-object/from16 v18, v0

    #@30
    .line 92
    .local v18, "loc":[I
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, v18

    #@34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@37
    .line 93
    const/4 v2, 0x0

    #@38
    aget v2, v18, v2

    #@3a
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    #@3d
    move-result v3

    #@3e
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@41
    move-result v3

    #@42
    add-int v8, v2, v3

    #@44
    .line 94
    .local v8, "left":I
    const/4 v2, 0x1

    #@45
    aget v2, v18, v2

    #@47
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    #@4a
    move-result v3

    #@4b
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@4e
    move-result v3

    #@4f
    add-int v9, v2, v3

    #@51
    .line 95
    .local v9, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    #@54
    move-result v2

    #@55
    add-int v10, v8, v2

    #@57
    .line 96
    .local v10, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    #@5a
    move-result v2

    #@5b
    add-int v11, v9, v2

    #@5d
    .line 100
    .local v11, "bottom":I
    if-eqz v15, :cond_4

    #@5f
    .line 101
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    #@62
    move-result v6

    #@63
    .line 102
    .local v6, "epicenterX":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    #@66
    move-result v7

    #@67
    .local v7, "epicenterY":I
    :goto_1
    move-object/from16 v2, p0

    #@69
    move-object/from16 v3, p1

    #@6b
    .line 108
    invoke-direct/range {v2 .. v11}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    #@6e
    move-result v2

    #@6f
    int-to-float v13, v2

    #@70
    .line 110
    .local v13, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    #@73
    move-result v2

    #@74
    int-to-float v0, v2

    #@75
    move/from16 v19, v0

    #@77
    .line 111
    .local v19, "maxDistance":F
    div-float v14, v13, v19

    #@79
    .line 113
    .local v14, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    #@7c
    move-result-wide v16

    #@7d
    .line 114
    .local v16, "duration":J
    const-wide/16 v2, 0x0

    #@7f
    cmp-long v2, v16, v2

    #@81
    if-gez v2, :cond_2

    #@83
    .line 115
    const-wide/16 v16, 0x12c

    #@85
    .line 118
    :cond_2
    int-to-long v2, v12

    #@86
    mul-long v2, v2, v16

    #@88
    long-to-float v2, v2

    #@89
    move-object/from16 v0, p0

    #@8b
    iget v3, v0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    #@8d
    div-float/2addr v2, v3

    #@8e
    mul-float/2addr v2, v14

    #@8f
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@92
    move-result v2

    #@93
    int-to-long v2, v2

    #@94
    return-wide v2

    #@95
    .line 85
    .end local v4    # "viewCenterX":I
    .end local v5    # "viewCenterY":I
    .end local v6    # "epicenterX":I
    .end local v7    # "epicenterY":I
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    .end local v13    # "distance":F
    .end local v14    # "distanceFraction":F
    .end local v16    # "duration":J
    .end local v18    # "loc":[I
    .end local v19    # "maxDistance":F
    .end local v20    # "positionValues":Landroid/transition/TransitionValues;
    :cond_3
    move-object/from16 v20, p4

    #@97
    .restart local v20    # "positionValues":Landroid/transition/TransitionValues;
    goto :goto_0

    #@98
    .line 104
    .restart local v4    # "viewCenterX":I
    .restart local v5    # "viewCenterY":I
    .restart local v8    # "left":I
    .restart local v9    # "top":I
    .restart local v10    # "right":I
    .restart local v11    # "bottom":I
    .restart local v18    # "loc":[I
    :cond_4
    add-int v2, v8, v10

    #@9a
    div-int/lit8 v6, v2, 0x2

    #@9c
    .line 105
    .restart local v6    # "epicenterX":I
    add-int v2, v9, v11

    #@9e
    div-int/lit8 v7, v2, 0x2

    #@a0
    .restart local v7    # "epicenterY":I
    goto :goto_1
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-nez v0, :cond_0

    #@5
    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "propagationSpeed may not be 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 69
    :cond_0
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    #@10
    .line 65
    return-void
.end method

.method public setSide(I)V
    .locals 0
    .param p1, "side"    # I

    #@0
    .prologue
    .line 50
    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    #@2
    .line 49
    return-void
.end method

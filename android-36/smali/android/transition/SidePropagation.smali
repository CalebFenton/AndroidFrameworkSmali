.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private greylist-max-o mPropagationSpeed:F

.field private greylist-max-o mSide:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 36
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private greylist-max-o distance(Landroid/view/View;IIIIIIII)I
    .registers 16
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    .line 124
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const v1, 0x800003

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_17

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_12

    move v4, v5

    .line 126
    .local v4, "isRtl":Z
    :cond_12
    if-eqz v4, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    .line 127
    .end local v4    # "isRtl":Z
    .local v2, "side":I
    :goto_16
    goto :goto_2b

    .end local v2    # "side":I
    :cond_17
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const v1, 0x800005

    if-ne v0, v1, :cond_29

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_25

    move v4, v5

    .line 129
    .restart local v4    # "isRtl":Z
    :cond_25
    if-eqz v4, :cond_28

    move v2, v3

    .line 130
    .end local v4    # "isRtl":Z
    .restart local v2    # "side":I
    :cond_28
    goto :goto_2b

    .line 131
    .end local v2    # "side":I
    :cond_29
    iget v2, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 133
    .restart local v2    # "side":I
    :goto_2b
    const/4 v0, 0x0

    .line 134
    .local v0, "distance":I
    sparse-switch v2, :sswitch_data_5e

    goto :goto_5c

    .line 145
    :sswitch_30
    sub-int v1, p3, p7

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v0, v1, v3

    goto :goto_5c

    .line 139
    :sswitch_3b
    sub-int v1, p9, p3

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v0, v1, v3

    .line 140
    goto :goto_5c

    .line 142
    :sswitch_46
    sub-int v1, p2, p6

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v0, v1, v3

    .line 143
    goto :goto_5c

    .line 136
    :sswitch_51
    sub-int v1, p8, p2

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v0, v1, v3

    .line 137
    nop

    .line 148
    :goto_5c
    return v0

    nop

    :sswitch_data_5e
    .sparse-switch
        0x3 -> :sswitch_51
        0x5 -> :sswitch_46
        0x30 -> :sswitch_3b
        0x50 -> :sswitch_30
    .end sparse-switch
.end method

.method private greylist-max-o getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 152
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    sparse-switch v0, :sswitch_data_10

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    .line 157
    :sswitch_a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x3 -> :sswitch_a
        0x5 -> :sswitch_a
        0x800003 -> :sswitch_a
        0x800005 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .registers 27
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v10, p3

    const-wide/16 v11, 0x0

    if-nez v10, :cond_b

    if-nez p4, :cond_b

    .line 76
    return-wide v11

    .line 78
    :cond_b
    const/4 v1, 0x1

    .line 79
    .local v1, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v13

    .line 81
    .local v13, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_1e

    invoke-virtual {v0, v10}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1e

    .line 85
    :cond_19
    move-object/from16 v2, p4

    move v14, v1

    move-object v15, v2

    .local v2, "positionValues":Landroid/transition/TransitionValues;
    goto :goto_23

    .line 82
    .end local v2    # "positionValues":Landroid/transition/TransitionValues;
    :cond_1e
    :goto_1e
    move-object/from16 v2, p3

    .line 83
    .restart local v2    # "positionValues":Landroid/transition/TransitionValues;
    const/4 v1, -0x1

    move v14, v1

    move-object v15, v2

    .line 88
    .end local v1    # "directionMultiplier":I
    .end local v2    # "positionValues":Landroid/transition/TransitionValues;
    .local v14, "directionMultiplier":I
    .local v15, "positionValues":Landroid/transition/TransitionValues;
    :goto_23
    invoke-virtual {v0, v15}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v2

    .line 89
    .local v2, "viewCenterX":I
    invoke-virtual {v0, v15}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v3

    .line 91
    .local v3, "viewCenterY":I
    const/4 v1, 0x2

    new-array v4, v1, [I

    .line 92
    .local v4, "loc":[I
    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 93
    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 94
    .local v6, "left":I
    const/4 v7, 0x1

    aget v7, v4, v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 95
    .local v7, "top":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    .line 96
    .local v8, "right":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    .line 100
    .local v9, "bottom":I
    if-eqz v13, :cond_60

    .line 101
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 102
    .local v1, "epicenterX":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .local v16, "epicenterY":I
    goto :goto_6e

    .line 104
    .end local v1    # "epicenterX":I
    .end local v16    # "epicenterY":I
    :cond_60
    add-int v16, v6, v8

    div-int/lit8 v16, v16, 0x2

    .line 105
    .local v16, "epicenterX":I
    add-int v17, v7, v9

    div-int/lit8 v1, v17, 0x2

    move/from16 v21, v16

    move/from16 v16, v1

    move/from16 v1, v21

    .line 108
    .restart local v1    # "epicenterX":I
    .local v16, "epicenterY":I
    :goto_6e
    move-object/from16 v17, v4

    move v4, v1

    move-object v1, v5

    move/from16 v5, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v11

    .end local v1    # "epicenterX":I
    .local v4, "epicenterX":I
    .local v5, "epicenterY":I
    .local v16, "loc":[I
    invoke-direct/range {v0 .. v9}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v11

    int-to-float v1, v11

    .line 110
    .local v1, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v11

    int-to-float v11, v11

    .line 111
    .local v11, "maxDistance":F
    div-float v12, v1, v11

    .line 113
    .local v12, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v19

    .line 114
    .local v19, "duration":J
    cmp-long v17, v19, v17

    if-gez v17, :cond_8e

    .line 115
    const-wide/16 v19, 0x12c

    .line 118
    :cond_8e
    move/from16 v18, v1

    move/from16 v17, v2

    .end local v1    # "distance":F
    .end local v2    # "viewCenterX":I
    .local v17, "viewCenterX":I
    .local v18, "distance":F
    int-to-long v1, v14

    mul-long v1, v1, v19

    long-to-float v1, v1

    iget v2, v0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public whitelist setPropagationSpeed(F)V
    .registers 4
    .param p1, "propagationSpeed"    # F

    .line 66
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 69
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 70
    return-void

    .line 67
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSide(I)V
    .registers 2
    .param p1, "side"    # I

    .line 50
    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 51
    return-void
.end method

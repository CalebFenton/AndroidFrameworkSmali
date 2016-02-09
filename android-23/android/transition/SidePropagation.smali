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
    .line 31
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    #@3
    .line 34
    const/high16 v0, 0x40400000    # 3.0f

    #@5
    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    #@7
    .line 35
    const/16 v0, 0x50

    #@9
    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    #@b
    .line 31
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
    const/4 v5, 0x1

    #@1
    .line 123
    iget v3, p0, Landroid/transition/SidePropagation;->mSide:I

    #@3
    const v4, 0x800003

    #@6
    if-ne v3, v4, :cond_2

    #@8
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    #@b
    move-result v3

    #@c
    if-ne v3, v5, :cond_0

    #@e
    const/4 v1, 0x1

    #@f
    .line 125
    .local v1, "isRtl":Z
    :goto_0
    if-eqz v1, :cond_1

    #@11
    const/4 v2, 0x5

    #@12
    .line 132
    .end local v1    # "isRtl":Z
    .local v2, "side":I
    :goto_1
    const/4 v0, 0x0

    #@13
    .line 133
    .local v0, "distance":I
    sparse-switch v2, :sswitch_data_0

    #@16
    .line 147
    :goto_2
    return v0

    #@17
    .line 124
    .end local v0    # "distance":I
    .end local v2    # "side":I
    :cond_0
    const/4 v1, 0x0

    #@18
    .restart local v1    # "isRtl":Z
    goto :goto_0

    #@19
    .line 125
    :cond_1
    const/4 v2, 0x3

    #@1a
    .restart local v2    # "side":I
    goto :goto_1

    #@1b
    .line 126
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_2
    iget v3, p0, Landroid/transition/SidePropagation;->mSide:I

    #@1d
    const v4, 0x800005

    #@20
    if-ne v3, v4, :cond_5

    #@22
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    #@25
    move-result v3

    #@26
    if-ne v3, v5, :cond_3

    #@28
    const/4 v1, 0x1

    #@29
    .line 128
    .restart local v1    # "isRtl":Z
    :goto_3
    if-eqz v1, :cond_4

    #@2b
    const/4 v2, 0x3

    #@2c
    .restart local v2    # "side":I
    goto :goto_1

    #@2d
    .line 127
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_3
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "isRtl":Z
    goto :goto_3

    #@2f
    .line 128
    :cond_4
    const/4 v2, 0x5

    #@30
    .restart local v2    # "side":I
    goto :goto_1

    #@31
    .line 130
    .end local v1    # "isRtl":Z
    .end local v2    # "side":I
    :cond_5
    iget v2, p0, Landroid/transition/SidePropagation;->mSide:I

    #@33
    .restart local v2    # "side":I
    goto :goto_1

    #@34
    .line 135
    .restart local v0    # "distance":I
    :sswitch_0
    sub-int v3, p8, p2

    #@36
    sub-int v4, p5, p3

    #@38
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@3b
    move-result v4

    #@3c
    add-int v0, v3, v4

    #@3e
    .line 136
    goto :goto_2

    #@3f
    .line 138
    :sswitch_1
    sub-int v3, p9, p3

    #@41
    sub-int v4, p4, p2

    #@43
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@46
    move-result v4

    #@47
    add-int v0, v3, v4

    #@49
    .line 139
    goto :goto_2

    #@4a
    .line 141
    :sswitch_2
    sub-int v3, p2, p6

    #@4c
    sub-int v4, p5, p3

    #@4e
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@51
    move-result v4

    #@52
    add-int v0, v3, v4

    #@54
    .line 142
    goto :goto_2

    #@55
    .line 144
    :sswitch_3
    sub-int v3, p3, p7

    #@57
    sub-int v4, p4, p2

    #@59
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@5c
    move-result v4

    #@5d
    add-int v0, v3, v4

    #@5f
    .line 145
    goto :goto_2

    #@60
    .line 133
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
    .line 151
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 156
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 151
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
    .line 74
    if-nez p3, :cond_0

    #@2
    if-nez p4, :cond_0

    #@4
    .line 75
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 77
    :cond_0
    const/4 v12, 0x1

    #@8
    .line 78
    .local v12, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    #@b
    move-result-object v15

    #@c
    .line 80
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
    .line 81
    :cond_1
    move-object/from16 v20, p3

    #@1a
    .line 82
    .local v20, "positionValues":Landroid/transition/TransitionValues;
    const/4 v12, -0x1

    #@1b
    .line 87
    :goto_0
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, v20

    #@1f
    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    #@22
    move-result v4

    #@23
    .line 88
    .local v4, "viewCenterX":I
    move-object/from16 v0, p0

    #@25
    move-object/from16 v1, v20

    #@27
    invoke-virtual {v0, v1}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    #@2a
    move-result v5

    #@2b
    .line 90
    .local v5, "viewCenterY":I
    const/4 v2, 0x2

    #@2c
    new-array v0, v2, [I

    #@2e
    move-object/from16 v18, v0

    #@30
    .line 91
    .local v18, "loc":[I
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, v18

    #@34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@37
    .line 92
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
    .line 93
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
    .line 94
    .local v9, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    #@54
    move-result v2

    #@55
    add-int v10, v8, v2

    #@57
    .line 95
    .local v10, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    #@5a
    move-result v2

    #@5b
    add-int v11, v9, v2

    #@5d
    .line 99
    .local v11, "bottom":I
    if-eqz v15, :cond_4

    #@5f
    .line 100
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    #@62
    move-result v6

    #@63
    .line 101
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
    .line 107
    invoke-direct/range {v2 .. v11}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    #@6e
    move-result v2

    #@6f
    int-to-float v13, v2

    #@70
    .line 109
    .local v13, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    #@73
    move-result v2

    #@74
    int-to-float v0, v2

    #@75
    move/from16 v19, v0

    #@77
    .line 110
    .local v19, "maxDistance":F
    div-float v14, v13, v19

    #@79
    .line 112
    .local v14, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    #@7c
    move-result-wide v16

    #@7d
    .line 113
    .local v16, "duration":J
    const-wide/16 v2, 0x0

    #@7f
    cmp-long v2, v16, v2

    #@81
    if-gez v2, :cond_2

    #@83
    .line 114
    const-wide/16 v16, 0x12c

    #@85
    .line 117
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
    .line 84
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
    .line 103
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
    .line 104
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
    .line 65
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-nez v0, :cond_0

    #@5
    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "propagationSpeed may not be 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 68
    :cond_0
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    #@10
    .line 64
    return-void
.end method

.method public setSide(I)V
    .locals 0
    .param p1, "side"    # I

    #@0
    .prologue
    .line 49
    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    #@2
    .line 48
    return-void
.end method

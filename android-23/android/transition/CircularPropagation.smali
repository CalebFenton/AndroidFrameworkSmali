.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private mPropagationSpeed:F


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
    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    #@7
    .line 32
    return-void
.end method

.method private static distance(FFFF)D
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    #@0
    .prologue
    .line 101
    sub-float v4, p2, p0

    #@2
    float-to-double v0, v4

    #@3
    .line 102
    .local v0, "x":D
    sub-float v4, p3, p1

    #@5
    float-to-double v2, v4

    #@6
    .line 103
    .local v2, "y":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@9
    move-result-wide v4

    #@a
    return-wide v4
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 59
    if-nez p3, :cond_0

    #@2
    if-nez p4, :cond_0

    #@4
    .line 60
    const-wide/16 v18, 0x0

    #@6
    return-wide v18

    #@7
    .line 62
    :cond_0
    const/4 v2, 0x1

    #@8
    .line 64
    .local v2, "directionMultiplier":I
    if-eqz p4, :cond_1

    #@a
    move-object/from16 v0, p0

    #@c
    move-object/from16 v1, p3

    #@e
    invoke-virtual {v0, v1}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    #@11
    move-result v18

    #@12
    if-nez v18, :cond_3

    #@14
    .line 65
    :cond_1
    move-object/from16 v13, p3

    #@16
    .line 66
    .local v13, "positionValues":Landroid/transition/TransitionValues;
    const/4 v2, -0x1

    #@17
    .line 71
    :goto_0
    move-object/from16 v0, p0

    #@19
    invoke-virtual {v0, v13}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    #@1c
    move-result v16

    #@1d
    .line 72
    .local v16, "viewCenterX":I
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v13}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    #@22
    move-result v17

    #@23
    .line 74
    .local v17, "viewCenterY":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    #@26
    move-result-object v3

    #@27
    .line 77
    .local v3, "epicenter":Landroid/graphics/Rect;
    if-eqz v3, :cond_4

    #@29
    .line 78
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    #@2c
    move-result v10

    #@2d
    .line 79
    .local v10, "epicenterX":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    #@30
    move-result v11

    #@31
    .line 88
    .local v11, "epicenterY":I
    :goto_1
    move/from16 v0, v16

    #@33
    int-to-float v0, v0

    #@34
    move/from16 v18, v0

    #@36
    move/from16 v0, v17

    #@38
    int-to-float v0, v0

    #@39
    move/from16 v19, v0

    #@3b
    int-to-float v0, v10

    #@3c
    move/from16 v20, v0

    #@3e
    int-to-float v0, v11

    #@3f
    move/from16 v21, v0

    #@41
    invoke-static/range {v18 .. v21}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    #@44
    move-result-wide v4

    #@45
    .line 89
    .local v4, "distance":D
    const/16 v18, 0x0

    #@47
    const/16 v19, 0x0

    #@49
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    #@4c
    move-result v20

    #@4d
    move/from16 v0, v20

    #@4f
    int-to-float v0, v0

    #@50
    move/from16 v20, v0

    #@52
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    #@55
    move-result v21

    #@56
    move/from16 v0, v21

    #@58
    int-to-float v0, v0

    #@59
    move/from16 v21, v0

    #@5b
    invoke-static/range {v18 .. v21}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    #@5e
    move-result-wide v14

    #@5f
    .line 90
    .local v14, "maxDistance":D
    div-double v6, v4, v14

    #@61
    .line 92
    .local v6, "distanceFraction":D
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    #@64
    move-result-wide v8

    #@65
    .line 93
    .local v8, "duration":J
    const-wide/16 v18, 0x0

    #@67
    cmp-long v18, v8, v18

    #@69
    if-gez v18, :cond_2

    #@6b
    .line 94
    const-wide/16 v8, 0x12c

    #@6d
    .line 97
    :cond_2
    int-to-long v0, v2

    #@6e
    move-wide/from16 v18, v0

    #@70
    mul-long v18, v18, v8

    #@72
    move-wide/from16 v0, v18

    #@74
    long-to-float v0, v0

    #@75
    move/from16 v18, v0

    #@77
    move-object/from16 v0, p0

    #@79
    iget v0, v0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    #@7b
    move/from16 v19, v0

    #@7d
    div-float v18, v18, v19

    #@7f
    move/from16 v0, v18

    #@81
    float-to-double v0, v0

    #@82
    move-wide/from16 v18, v0

    #@84
    mul-double v18, v18, v6

    #@86
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    #@89
    move-result-wide v18

    #@8a
    return-wide v18

    #@8b
    .line 68
    .end local v3    # "epicenter":Landroid/graphics/Rect;
    .end local v4    # "distance":D
    .end local v6    # "distanceFraction":D
    .end local v8    # "duration":J
    .end local v10    # "epicenterX":I
    .end local v11    # "epicenterY":I
    .end local v13    # "positionValues":Landroid/transition/TransitionValues;
    .end local v14    # "maxDistance":D
    .end local v16    # "viewCenterX":I
    .end local v17    # "viewCenterY":I
    :cond_3
    move-object/from16 v13, p4

    #@8d
    .restart local v13    # "positionValues":Landroid/transition/TransitionValues;
    goto :goto_0

    #@8e
    .line 81
    .restart local v3    # "epicenter":Landroid/graphics/Rect;
    .restart local v16    # "viewCenterX":I
    .restart local v17    # "viewCenterY":I
    :cond_4
    const/16 v18, 0x2

    #@90
    move/from16 v0, v18

    #@92
    new-array v12, v0, [I

    #@94
    .line 82
    .local v12, "loc":[I
    move-object/from16 v0, p1

    #@96
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@99
    .line 83
    const/16 v18, 0x0

    #@9b
    aget v18, v12, v18

    #@9d
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    #@a0
    move-result v19

    #@a1
    div-int/lit8 v19, v19, 0x2

    #@a3
    add-int v18, v18, v19

    #@a5
    move/from16 v0, v18

    #@a7
    int-to-float v0, v0

    #@a8
    move/from16 v18, v0

    #@aa
    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    #@ad
    move-result v19

    #@ae
    .line 83
    add-float v18, v18, v19

    #@b0
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    #@b3
    move-result v10

    #@b4
    .line 85
    .restart local v10    # "epicenterX":I
    const/16 v18, 0x1

    #@b6
    aget v18, v12, v18

    #@b8
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    #@bb
    move-result v19

    #@bc
    div-int/lit8 v19, v19, 0x2

    #@be
    add-int v18, v18, v19

    #@c0
    move/from16 v0, v18

    #@c2
    int-to-float v0, v0

    #@c3
    move/from16 v18, v0

    #@c5
    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    #@c8
    move-result v19

    #@c9
    .line 85
    add-float v18, v18, v19

    #@cb
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    #@ce
    move-result v11

    #@cf
    .restart local v11    # "epicenterY":I
    goto/16 :goto_1
.end method

.method public setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    #@0
    .prologue
    .line 50
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p1, v0

    #@3
    if-nez v0, :cond_0

    #@5
    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "propagationSpeed may not be 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 53
    :cond_0
    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    #@10
    .line 49
    return-void
.end method

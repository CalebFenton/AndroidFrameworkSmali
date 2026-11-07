.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private greylist-max-o mPropagationSpeed:F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static greylist-max-o distance(FFFF)D
    .registers 10
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 101
    sub-float v0, p2, p0

    float-to-double v0, v0

    .line 102
    .local v0, "x":D
    sub-float v2, p3, p1

    float-to-double v2, v2

    .line 103
    .local v2, "y":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public whitelist getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .registers 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v2, 0x0

    if-nez v1, :cond_b

    if-nez p4, :cond_b

    .line 60
    return-wide v2

    .line 62
    :cond_b
    const/4 v4, 0x1

    .line 64
    .local v4, "directionMultiplier":I
    if-eqz p4, :cond_18

    invoke-virtual {v0, v1}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v5

    if-nez v5, :cond_15

    goto :goto_18

    .line 68
    :cond_15
    move-object/from16 v5, p4

    .local v5, "positionValues":Landroid/transition/TransitionValues;
    goto :goto_1b

    .line 65
    .end local v5    # "positionValues":Landroid/transition/TransitionValues;
    :cond_18
    :goto_18
    move-object/from16 v5, p3

    .line 66
    .restart local v5    # "positionValues":Landroid/transition/TransitionValues;
    const/4 v4, -0x1

    .line 71
    :goto_1b
    invoke-virtual {v0, v5}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v6

    .line 72
    .local v6, "viewCenterX":I
    invoke-virtual {v0, v5}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v7

    .line 74
    .local v7, "viewCenterY":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v8

    .line 77
    .local v8, "epicenter":Landroid/graphics/Rect;
    if-eqz v8, :cond_34

    .line 78
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 79
    .local v9, "epicenterX":I
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    move-object/from16 v11, p1

    .local v10, "epicenterY":I
    goto :goto_64

    .line 81
    .end local v9    # "epicenterX":I
    .end local v10    # "epicenterY":I
    :cond_34
    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 82
    .local v10, "loc":[I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 83
    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    div-int/2addr v13, v9

    add-int/2addr v12, v13

    int-to-float v12, v12

    .line 84
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v13

    add-float/2addr v12, v13

    .line 83
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 85
    .local v12, "epicenterX":I
    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    div-int/2addr v14, v9

    add-int/2addr v13, v14

    int-to-float v9, v13

    .line 86
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v13

    add-float/2addr v9, v13

    .line 85
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move v10, v9

    move v9, v12

    .line 88
    .end local v12    # "epicenterX":I
    .restart local v9    # "epicenterX":I
    .local v10, "epicenterY":I
    :goto_64
    int-to-float v12, v6

    int-to-float v13, v7

    int-to-float v14, v9

    int-to-float v15, v10

    invoke-static {v12, v13, v14, v15}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v12

    .line 89
    .local v12, "distance":D
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move-wide/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v2, v2, v14, v15}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v2

    .line 90
    .local v2, "maxDistance":D
    div-double v14, v12, v2

    .line 92
    .local v14, "distanceFraction":D
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v18

    .line 93
    .local v18, "duration":J
    cmp-long v16, v18, v16

    if-gez v16, :cond_89

    .line 94
    const-wide/16 v18, 0x12c

    .line 97
    :cond_89
    move-wide/from16 v16, v2

    .end local v2    # "maxDistance":D
    .local v16, "maxDistance":D
    int-to-long v1, v4

    mul-long v1, v1, v18

    long-to-float v1, v1

    iget v2, v0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist setPropagationSpeed(F)V
    .registers 4
    .param p1, "propagationSpeed"    # F

    .line 50
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 53
    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    .line 54
    return-void

    .line 51
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

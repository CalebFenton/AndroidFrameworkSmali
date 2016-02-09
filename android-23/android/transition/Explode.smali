.class public Landroid/transition/Explode;
.super Landroid/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final PROPNAME_SCREEN_BOUNDS:Ljava/lang/String; = "android:explode:screenBounds"

.field private static final TAG:Ljava/lang/String; = "Explode"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@7
    .line 42
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@9
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@c
    sput-object v0, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@e
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@3
    .line 46
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@8
    .line 49
    new-instance v0, Landroid/transition/CircularPropagation;

    #@a
    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    #@d
    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    #@10
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 46
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [I

    #@6
    iput-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@8
    .line 54
    new-instance v0, Landroid/transition/CircularPropagation;

    #@a
    invoke-direct {v0}, Landroid/transition/CircularPropagation;-><init>()V

    #@d
    invoke-virtual {p0, v0}, Landroid/transition/Explode;->setPropagation(Landroid/transition/TransitionPropagation;)V

    #@10
    .line 52
    return-void
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)D
    .locals 6
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    #@0
    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@3
    move-result v2

    #@4
    sub-int/2addr v2, p1

    #@5
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    .line 166
    .local v0, "maxX":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@c
    move-result v2

    #@d
    sub-int/2addr v2, p2

    #@e
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v1

    #@12
    .line 167
    .local v1, "maxY":I
    int-to-double v2, v0

    #@13
    int-to-double v4, v1

    #@14
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@17
    move-result-wide v2

    #@18
    return-wide v2
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 22
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outVector"    # [I

    #@0
    .prologue
    .line 126
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Landroid/transition/Explode;->mTempLoc:[I

    #@4
    move-object/from16 v0, p1

    #@6
    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    #@9
    .line 127
    move-object/from16 v0, p0

    #@b
    iget-object v11, v0, Landroid/transition/Explode;->mTempLoc:[I

    #@d
    const/16 v18, 0x0

    #@f
    aget v7, v11, v18

    #@11
    .line 128
    .local v7, "sceneRootX":I
    move-object/from16 v0, p0

    #@13
    iget-object v11, v0, Landroid/transition/Explode;->mTempLoc:[I

    #@15
    const/16 v18, 0x1

    #@17
    aget v10, v11, v18

    #@19
    .line 132
    .local v10, "sceneRootY":I
    invoke-virtual/range {p0 .. p0}, Landroid/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    #@1c
    move-result-object v4

    #@1d
    .line 133
    .local v4, "epicenter":Landroid/graphics/Rect;
    if-nez v4, :cond_1

    #@1f
    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    #@22
    move-result v11

    #@23
    div-int/lit8 v11, v11, 0x2

    #@25
    add-int/2addr v11, v7

    #@26
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    #@29
    move-result v18

    #@2a
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    #@2d
    move-result v18

    #@2e
    .line 134
    add-int v5, v11, v18

    #@30
    .line 136
    .local v5, "focalX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    #@33
    move-result v11

    #@34
    div-int/lit8 v11, v11, 0x2

    #@36
    add-int/2addr v11, v10

    #@37
    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    #@3a
    move-result v18

    #@3b
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    #@3e
    move-result v18

    #@3f
    .line 136
    add-int v6, v11, v18

    #@41
    .line 143
    .local v6, "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    #@44
    move-result v2

    #@45
    .line 144
    .local v2, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    #@48
    move-result v3

    #@49
    .line 145
    .local v3, "centerY":I
    sub-int v11, v2, v5

    #@4b
    int-to-double v14, v11

    #@4c
    .line 146
    .local v14, "xVector":D
    sub-int v11, v3, v6

    #@4e
    int-to-double v0, v11

    #@4f
    move-wide/from16 v16, v0

    #@51
    .line 148
    .local v16, "yVector":D
    const-wide/16 v18, 0x0

    #@53
    cmpl-double v11, v14, v18

    #@55
    if-nez v11, :cond_0

    #@57
    const-wide/16 v18, 0x0

    #@59
    cmpl-double v11, v16, v18

    #@5b
    if-nez v11, :cond_0

    #@5d
    .line 150
    invoke-static {}, Ljava/lang/Math;->random()D

    #@60
    move-result-wide v18

    #@61
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    #@63
    mul-double v18, v18, v20

    #@65
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    #@67
    sub-double v14, v18, v20

    #@69
    .line 151
    invoke-static {}, Ljava/lang/Math;->random()D

    #@6c
    move-result-wide v18

    #@6d
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    #@6f
    mul-double v18, v18, v20

    #@71
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    #@73
    sub-double v16, v18, v20

    #@75
    .line 153
    :cond_0
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    #@78
    move-result-wide v12

    #@79
    .line 154
    .local v12, "vectorSize":D
    div-double/2addr v14, v12

    #@7a
    .line 155
    div-double v16, v16, v12

    #@7c
    .line 158
    sub-int v11, v5, v7

    #@7e
    sub-int v18, v6, v10

    #@80
    move-object/from16 v0, p1

    #@82
    move/from16 v1, v18

    #@84
    invoke-static {v0, v11, v1}, Landroid/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)D

    #@87
    move-result-wide v8

    #@88
    .line 160
    .local v8, "maxDistance":D
    mul-double v18, v8, v14

    #@8a
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    #@8d
    move-result-wide v18

    #@8e
    move-wide/from16 v0, v18

    #@90
    long-to-int v11, v0

    #@91
    const/16 v18, 0x0

    #@93
    aput v11, p3, v18

    #@95
    .line 161
    mul-double v18, v8, v16

    #@97
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    #@9a
    move-result-wide v18

    #@9b
    move-wide/from16 v0, v18

    #@9d
    long-to-int v11, v0

    #@9e
    const/16 v18, 0x1

    #@a0
    aput v11, p3, v18

    #@a2
    .line 125
    return-void

    #@a3
    .line 139
    .end local v2    # "centerX":I
    .end local v3    # "centerY":I
    .end local v5    # "focalX":I
    .end local v6    # "focalY":I
    .end local v8    # "maxDistance":D
    .end local v12    # "vectorSize":D
    .end local v14    # "xVector":D
    .end local v16    # "yVector":D
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    #@a6
    move-result v5

    #@a7
    .line 140
    .restart local v5    # "focalX":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    #@aa
    move-result v6

    #@ab
    .restart local v6    # "focalY":I
    goto :goto_0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 58
    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    .line 59
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@4
    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    #@7
    .line 60
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@9
    const/4 v6, 0x0

    #@a
    aget v1, v5, v6

    #@c
    .line 61
    .local v1, "left":I
    iget-object v5, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@e
    const/4 v6, 0x1

    #@f
    aget v3, v5, v6

    #@11
    .line 62
    .local v3, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@14
    move-result v5

    #@15
    add-int v2, v1, v5

    #@17
    .line 63
    .local v2, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    #@1a
    move-result v5

    #@1b
    add-int v0, v3, v5

    #@1d
    .line 64
    .local v0, "bottom":I
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1f
    const-string/jumbo v6, "android:explode:screenBounds"

    #@22
    new-instance v7, Landroid/graphics/Rect;

    #@24
    invoke-direct {v7, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@27
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 57
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 76
    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 74
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 70
    invoke-direct {p0, p1}, Landroid/transition/Explode;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 68
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    if-nez p4, :cond_0

    #@3
    .line 83
    return-object v0

    #@4
    .line 85
    :cond_0
    iget-object v0, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v1, "android:explode:screenBounds"

    #@9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v10

    #@d
    check-cast v10, Landroid/graphics/Rect;

    #@f
    .line 86
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@12
    move-result v6

    #@13
    .line 87
    .local v6, "endX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@16
    move-result v7

    #@17
    .line 88
    .local v7, "endY":F
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@19
    invoke-direct {p0, p1, v10, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    #@1c
    .line 89
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@1e
    const/4 v1, 0x0

    #@1f
    aget v0, v0, v1

    #@21
    int-to-float v0, v0

    #@22
    add-float v4, v6, v0

    #@24
    .line 90
    .local v4, "startX":F
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@26
    const/4 v1, 0x1

    #@27
    aget v0, v0, v1

    #@29
    int-to-float v0, v0

    #@2a
    add-float v5, v7, v0

    #@2c
    .line 92
    .local v5, "startY":F
    iget v2, v10, Landroid/graphics/Rect;->left:I

    #@2e
    iget v3, v10, Landroid/graphics/Rect;->top:I

    #@30
    .line 93
    sget-object v8, Landroid/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    #@32
    move-object v0, p2

    #@33
    move-object v1, p4

    #@34
    move-object v9, p0

    #@35
    .line 92
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    #@38
    move-result-object v0

    #@39
    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 99
    if-nez p3, :cond_0

    #@2
    .line 100
    const/4 v0, 0x0

    #@3
    return-object v0

    #@4
    .line 102
    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    const-string/jumbo v1, "android:explode:screenBounds"

    #@9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v10

    #@d
    check-cast v10, Landroid/graphics/Rect;

    #@f
    .line 103
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    #@11
    .line 104
    .local v2, "viewPosX":I
    iget v3, v10, Landroid/graphics/Rect;->top:I

    #@13
    .line 105
    .local v3, "viewPosY":I
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    #@16
    move-result v4

    #@17
    .line 106
    .local v4, "startX":F
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    #@1a
    move-result v5

    #@1b
    .line 107
    .local v5, "startY":F
    move v6, v4

    #@1c
    .line 108
    .local v6, "endX":F
    move v7, v5

    #@1d
    .line 109
    .local v7, "endY":F
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@1f
    const v1, 0x1020051

    #@22
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@25
    move-result-object v11

    #@26
    check-cast v11, [I

    #@28
    .line 110
    .local v11, "interruptedPosition":[I
    if-eqz v11, :cond_1

    #@2a
    .line 113
    const/4 v0, 0x0

    #@2b
    aget v0, v11, v0

    #@2d
    iget v1, v10, Landroid/graphics/Rect;->left:I

    #@2f
    sub-int/2addr v0, v1

    #@30
    int-to-float v0, v0

    #@31
    add-float/2addr v6, v0

    #@32
    .line 114
    const/4 v0, 0x1

    #@33
    aget v0, v11, v0

    #@35
    iget v1, v10, Landroid/graphics/Rect;->top:I

    #@37
    sub-int/2addr v0, v1

    #@38
    int-to-float v0, v0

    #@39
    add-float/2addr v7, v0

    #@3a
    .line 115
    const/4 v0, 0x0

    #@3b
    aget v0, v11, v0

    #@3d
    const/4 v1, 0x1

    #@3e
    aget v1, v11, v1

    #@40
    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    #@43
    .line 117
    :cond_1
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@45
    invoke-direct {p0, p1, v10, v0}, Landroid/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    #@48
    .line 118
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@4a
    const/4 v1, 0x0

    #@4b
    aget v0, v0, v1

    #@4d
    int-to-float v0, v0

    #@4e
    add-float/2addr v6, v0

    #@4f
    .line 119
    iget-object v0, p0, Landroid/transition/Explode;->mTempLoc:[I

    #@51
    const/4 v1, 0x1

    #@52
    aget v0, v0, v1

    #@54
    int-to-float v0, v0

    #@55
    add-float/2addr v7, v0

    #@56
    .line 122
    sget-object v8, Landroid/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    #@58
    move-object v0, p2

    #@59
    move-object v1, p3

    #@5a
    move-object v9, p0

    #@5b
    .line 121
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    #@5e
    move-result-object v0

    #@5f
    return-object v0
.end method

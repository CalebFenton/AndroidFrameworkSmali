.class public Lcom/android/internal/transition/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;,
        Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    }
.end annotation


# static fields
.field private static final blacklist PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final blacklist PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final blacklist PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final blacklist PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final blacklist PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final blacklist PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final blacklist mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final blacklist mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final blacklist mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 56
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 57
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v0, Lcom/android/internal/R$styleable;->EpicenterTranslateClipReveal:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 68
    .local v2, "interpolatorX":I
    if-eqz v2, :cond_17

    .line 69
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 71
    :cond_17
    sget-object v3, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 74
    :goto_1b
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 76
    .local v3, "interpolatorY":I
    if-eqz v3, :cond_29

    .line 77
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_2d

    .line 79
    :cond_29
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 82
    :goto_2d
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 84
    .local v1, "interpolatorZ":I
    if-eqz v1, :cond_3b

    .line 85
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_3f

    .line 87
    :cond_3b
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 90
    :goto_3f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method

.method private blacklist captureValues(Landroid/transition/TransitionValues;)V
    .registers 7
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 106
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 107
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 108
    return-void

    .line 111
    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 112
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "android:epicenterReveal:translateX"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "android:epicenterReveal:translateY"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "android:epicenterReveal:translateZ"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "android:epicenterReveal:z"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 119
    .local v2, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method private static blacklist createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .registers 29
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startX"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p2, "startY"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p3, "startZ"    # F
    .param p4, "endX"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p5, "endY"    # Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .param p6, "endZ"    # F
    .param p7, "endValues"    # Landroid/transition/TransitionValues;
    .param p8, "interpolatorX"    # Landroid/animation/TimeInterpolator;
    .param p9, "interpolatorY"    # Landroid/animation/TimeInterpolator;
    .param p10, "interpolatorZ"    # Landroid/animation/TimeInterpolator;

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal-IA;)V

    .line 216
    .local v4, "evaluator":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput p3, v7, v8

    const/4 v9, 0x1

    aput p6, v7, v9

    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 217
    .local v5, "animZ":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_22

    .line 218
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    :cond_22
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v10, 0x78

    invoke-direct {v7, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .line 222
    .local v7, "propX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    new-array v10, v6, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p1, v10, v8

    aput-object p4, v10, v9

    invoke-static {v0, v7, v4, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 223
    .local v10, "animX":Landroid/animation/ObjectAnimator;
    if-eqz v1, :cond_38

    .line 224
    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 227
    :cond_38
    new-instance v11, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    const/16 v12, 0x79

    invoke-direct {v11, v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    .line 228
    .local v11, "propY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    new-array v12, v6, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    aput-object p2, v12, v8

    aput-object p5, v12, v9

    invoke-static {v0, v11, v4, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 229
    .local v12, "animY":Landroid/animation/ObjectAnimator;
    if-eqz v2, :cond_4e

    .line 230
    invoke-virtual {v12, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    :cond_4e
    move-object/from16 v13, p7

    iget-object v14, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v15, "android:epicenterReveal:clip"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 234
    .local v14, "terminalClip":Landroid/graphics/Rect;
    new-instance v15, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    invoke-direct {v15, v0, v14}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 241
    .local v15, "animatorListener":Landroid/animation/AnimatorListenerAdapter;
    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v17, v16

    .line 242
    .local v17, "animSet":Landroid/animation/AnimatorSet;
    move/from16 v16, v6

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v10, v6, v8

    aput-object v12, v6, v9

    aput-object v5, v6, v16

    move-object/from16 v8, v17

    .end local v17    # "animSet":Landroid/animation/AnimatorSet;
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 243
    invoke-virtual {v8, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    return-object v8
.end method

.method private blacklist getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 203
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 204
    .local v0, "clipRect":Landroid/graphics/Rect;
    if-nez v0, :cond_17

    .line 205
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    return-object v1

    .line 207
    :cond_17
    return-object v0
.end method

.method private blacklist getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    .line 193
    .local v0, "epicenter":Landroid/graphics/Rect;
    if-eqz v0, :cond_7

    .line 194
    return-object v0

    .line 197
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 198
    .local v1, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 199
    .local v2, "centerY":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 101
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 103
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 95
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 97
    return-void
.end method

.method public whitelist onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    if-nez v8, :cond_a

    .line 126
    const/4 v2, 0x0

    return-object v2

    .line 129
    :cond_a
    iget-object v2, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/graphics/Rect;

    .line 130
    .local v12, "endBounds":Landroid/graphics/Rect;
    invoke-direct {v0, v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 131
    .local v13, "startBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v14, v2

    .line 132
    .local v14, "startX":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v15, v2

    .line 133
    .local v15, "startY":F
    iget-object v2, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    sub-float v4, v3, v2

    .line 136
    .local v4, "startZ":F
    invoke-virtual {v1, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    invoke-virtual {v1, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 140
    iget-object v2, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 141
    .local v2, "endX":F
    iget-object v3, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:epicenterReveal:translateY"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 142
    .local v3, "endY":F
    iget-object v5, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:epicenterReveal:translateZ"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 144
    .local v7, "endZ":F
    invoke-direct {v0, v8}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v5

    .line 145
    .local v5, "endClip":Landroid/graphics/Rect;
    invoke-direct {v0, v5}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 148
    .local v6, "startClip":Landroid/graphics/Rect;
    invoke-virtual {v1, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 150
    new-instance v9, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {v9, v10, v11, v14}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 151
    .local v9, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v10, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {v10, v11, v1, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 152
    .local v10, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v11, v6, Landroid/graphics/Rect;->top:I

    move/from16 v16, v2

    .end local v2    # "endX":F
    .local v16, "endX":F
    iget v2, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v11, v2, v15}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 153
    .local v1, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v2, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v11, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v1

    .end local v1    # "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v17, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v11, v1, v3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 155
    .local v2, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    move-object v1, v6

    move-object v6, v2

    move-object v2, v9

    .end local v9    # "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v1, "startClip":Landroid/graphics/Rect;
    .local v2, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v6, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget-object v9, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    move-object v11, v5

    move-object v5, v10

    .end local v10    # "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v5, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v11, "endClip":Landroid/graphics/Rect;
    iget-object v10, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v11

    .end local v11    # "endClip":Landroid/graphics/Rect;
    .local v18, "endClip":Landroid/graphics/Rect;
    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v19, v17

    move/from16 v17, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v1

    move-object/from16 v1, p2

    .end local v1    # "startClip":Landroid/graphics/Rect;
    .local v3, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v17, "endY":F
    .local v19, "startClip":Landroid/graphics/Rect;
    invoke-static/range {v1 .. v11}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v9

    return-object v9
.end method

.method public whitelist onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    if-nez v1, :cond_a

    .line 163
    const/4 v2, 0x0

    return-object v2

    .line 166
    :cond_a
    iget-object v2, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/graphics/Rect;

    .line 167
    .local v13, "startBounds":Landroid/graphics/Rect;
    invoke-direct {v0, v13}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    .line 168
    .local v14, "endBounds":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v15, v2

    .line 169
    .local v15, "endX":F
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 170
    .local v2, "endY":F
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:z"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    sub-float v8, v4, v3

    .line 172
    .local v8, "endZ":F
    iget-object v3, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:translateX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 173
    .local v3, "startX":F
    iget-object v4, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:epicenterReveal:translateY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 174
    .local v4, "startY":F
    iget-object v5, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:epicenterReveal:translateZ"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 176
    .local v5, "startZ":F
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v6

    .line 177
    .local v6, "startClip":Landroid/graphics/Rect;
    invoke-direct {v0, v6}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 180
    .local v7, "endClip":Landroid/graphics/Rect;
    move-object/from16 v10, p2

    invoke-virtual {v10, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 182
    new-instance v11, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v12, v6, Landroid/graphics/Rect;->left:I

    iget v1, v6, Landroid/graphics/Rect;->right:I

    invoke-direct {v11, v12, v1, v3}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 183
    .local v11, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v12, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v3

    .end local v3    # "startX":F
    .local v16, "startX":F
    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v12, v3, v15}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 184
    .local v1, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v12, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v17, v1

    .end local v1    # "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v17, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v12, v1, v4}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 185
    .local v3, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v1, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v18, v3

    .end local v3    # "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v18, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v12, v3, v2}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    .line 187
    .local v1, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget-object v10, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    move-object v3, v11

    .end local v11    # "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v3, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v12, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v19, v17

    move/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v7

    move-object v7, v1

    move v1, v2

    move-object/from16 v2, p2

    .end local v2    # "endY":F
    .local v1, "endY":F
    .local v4, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v6, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v7, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    .local v17, "startY":F
    .local v18, "startClip":Landroid/graphics/Rect;
    .local v19, "endClip":Landroid/graphics/Rect;
    invoke-static/range {v2 .. v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v10

    return-object v10
.end method

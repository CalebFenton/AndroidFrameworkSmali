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
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    #@4
    .line 55
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    #@6
    .line 56
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    #@8
    .line 57
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    #@a
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 64
    sget-object v4, Lcom/android/internal/R$styleable;->EpicenterTranslateClipReveal:[I

    #@6
    .line 63
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d
    move-result v1

    #@e
    .line 68
    .local v1, "interpolatorX":I
    if-eqz v1, :cond_0

    #@10
    .line 69
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@13
    move-result-object v4

    #@14
    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    #@16
    .line 75
    :goto_0
    const/4 v4, 0x1

    #@17
    .line 74
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result v2

    #@1b
    .line 76
    .local v2, "interpolatorY":I
    if-eqz v2, :cond_1

    #@1d
    .line 77
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@20
    move-result-object v4

    #@21
    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    #@23
    .line 83
    :goto_1
    const/4 v4, 0x2

    #@24
    .line 82
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@27
    move-result v3

    #@28
    .line 84
    .local v3, "interpolatorZ":I
    if-eqz v3, :cond_2

    #@2a
    .line 85
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@2d
    move-result-object v4

    #@2e
    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    #@30
    .line 90
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@33
    .line 60
    return-void

    #@34
    .line 71
    .end local v2    # "interpolatorY":I
    .end local v3    # "interpolatorZ":I
    :cond_0
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    #@36
    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    #@38
    goto :goto_0

    #@39
    .line 79
    .restart local v2    # "interpolatorY":I
    :cond_1
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    #@3b
    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    #@3d
    goto :goto_1

    #@3e
    .line 87
    .restart local v3    # "interpolatorZ":I
    :cond_2
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    #@40
    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    #@42
    goto :goto_2
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 106
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@3
    .line 107
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v3

    #@7
    const/16 v4, 0x8

    #@9
    if-ne v3, v4, :cond_0

    #@b
    .line 108
    return-void

    #@c
    .line 111
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    #@e
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@11
    move-result v3

    #@12
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    #@15
    move-result v4

    #@16
    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@19
    .line 112
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1b
    const-string/jumbo v4, "android:epicenterReveal:bounds"

    #@1e
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 113
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@23
    const-string/jumbo v4, "android:epicenterReveal:translateX"

    #@26
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    #@29
    move-result v5

    #@2a
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2d
    move-result-object v5

    #@2e
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 114
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@33
    const-string/jumbo v4, "android:epicenterReveal:translateY"

    #@36
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    #@39
    move-result v5

    #@3a
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3d
    move-result-object v5

    #@3e
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 115
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@43
    const-string/jumbo v4, "android:epicenterReveal:translateZ"

    #@46
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    #@49
    move-result v5

    #@4a
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4d
    move-result-object v5

    #@4e
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 116
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@53
    const-string/jumbo v4, "android:epicenterReveal:z"

    #@56
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    #@59
    move-result v5

    #@5a
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5d
    move-result-object v5

    #@5e
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    #@64
    move-result-object v1

    #@65
    .line 119
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@67
    const-string/jumbo v4, "android:epicenterReveal:clip"

    #@6a
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 105
    return-void
.end method

.method private static createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 13
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

    #@0
    .prologue
    .line 214
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;

    #@2
    const/4 v10, 0x0

    #@3
    invoke-direct {v6, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;)V

    #@6
    .line 216
    .local v6, "evaluator":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateEvaluator;
    sget-object v10, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    #@8
    const/4 v11, 0x2

    #@9
    new-array v11, v11, [F

    #@b
    const/4 v12, 0x0

    #@c
    aput p3, v11, v12

    #@e
    const/4 v12, 0x1

    #@f
    aput p6, v11, v12

    #@11
    invoke-static {p0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@14
    move-result-object v4

    #@15
    .line 217
    .local v4, "animZ":Landroid/animation/ObjectAnimator;
    if-eqz p10, :cond_0

    #@17
    .line 218
    move-object/from16 v0, p10

    #@19
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1c
    .line 221
    :cond_0
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    #@1e
    const/16 v10, 0x78

    #@20
    invoke-direct {v7, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    #@23
    .line 222
    .local v7, "propX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    const/4 v10, 0x2

    #@24
    new-array v10, v10, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@26
    const/4 v11, 0x0

    #@27
    aput-object p1, v10, v11

    #@29
    const/4 v11, 0x1

    #@2a
    aput-object p4, v10, v11

    #@2c
    invoke-static {p0, v7, v6, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@2f
    move-result-object v2

    #@30
    .line 223
    .local v2, "animX":Landroid/animation/ObjectAnimator;
    if-eqz p8, :cond_1

    #@32
    .line 224
    move-object/from16 v0, p8

    #@34
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@37
    .line 227
    :cond_1
    new-instance v8, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;

    #@39
    const/16 v10, 0x79

    #@3b
    invoke-direct {v8, v10}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    #@3e
    .line 228
    .local v8, "propY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$StateProperty;
    const/4 v10, 0x2

    #@3f
    new-array v10, v10, [Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@41
    const/4 v11, 0x0

    #@42
    aput-object p2, v10, v11

    #@44
    const/4 v11, 0x1

    #@45
    aput-object p5, v10, v11

    #@47
    invoke-static {p0, v8, v6, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@4a
    move-result-object v3

    #@4b
    .line 229
    .local v3, "animY":Landroid/animation/ObjectAnimator;
    if-eqz p9, :cond_2

    #@4d
    .line 230
    move-object/from16 v0, p9

    #@4f
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@52
    .line 233
    :cond_2
    move-object/from16 v0, p7

    #@54
    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@56
    const-string/jumbo v11, "android:epicenterReveal:clip"

    #@59
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    move-result-object v9

    #@5d
    check-cast v9, Landroid/graphics/Rect;

    #@5f
    .line 234
    .local v9, "terminalClip":Landroid/graphics/Rect;
    new-instance v5, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;

    #@61
    invoke-direct {v5, p0, v9}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    #@64
    .line 241
    .local v5, "animatorListener":Landroid/animation/AnimatorListenerAdapter;
    new-instance v1, Landroid/animation/AnimatorSet;

    #@66
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    #@69
    .line 242
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v10, 0x3

    #@6a
    new-array v10, v10, [Landroid/animation/Animator;

    #@6c
    const/4 v11, 0x0

    #@6d
    aput-object v2, v10, v11

    #@6f
    const/4 v11, 0x1

    #@70
    aput-object v3, v10, v11

    #@72
    const/4 v11, 0x2

    #@73
    aput-object v4, v10, v11

    #@75
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@78
    .line 243
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@7b
    .line 244
    return-object v1
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 203
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string/jumbo v2, "android:epicenterReveal:clip"

    #@5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/graphics/Rect;

    #@b
    .line 204
    .local v0, "clipRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    #@d
    .line 205
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@f
    const-string/jumbo v2, "android:epicenterReveal:bounds"

    #@12
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/graphics/Rect;

    #@18
    return-object v1

    #@19
    .line 207
    :cond_0
    return-object v0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenter()Landroid/graphics/Rect;

    #@3
    move-result-object v2

    #@4
    .line 193
    .local v2, "epicenter":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    #@6
    .line 194
    return-object v2

    #@7
    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    #@a
    move-result v0

    #@b
    .line 198
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    #@e
    move-result v1

    #@f
    .line 199
    .local v1, "centerY":I
    new-instance v3, Landroid/graphics/Rect;

    #@11
    invoke-direct {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    #@14
    return-object v3
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 100
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    #@6
    .line 94
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 125
    if-nez p4, :cond_0

    #@2
    .line 126
    const/4 v2, 0x0

    #@3
    return-object v2

    #@4
    .line 129
    :cond_0
    move-object/from16 v0, p4

    #@6
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string/jumbo v9, "android:epicenterReveal:bounds"

    #@b
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v13

    #@f
    check-cast v13, Landroid/graphics/Rect;

    #@11
    .line 130
    .local v13, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@13
    invoke-direct {v0, v13}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@16
    move-result-object v17

    #@17
    .line 131
    .local v17, "startBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    #@1e
    move-result v9

    #@1f
    sub-int/2addr v2, v9

    #@20
    int-to-float v0, v2

    #@21
    move/from16 v19, v0

    #@23
    .line 132
    .local v19, "startX":F
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    #@2a
    move-result v9

    #@2b
    sub-int/2addr v2, v9

    #@2c
    int-to-float v0, v2

    #@2d
    move/from16 v20, v0

    #@2f
    .line 133
    .local v20, "startY":F
    move-object/from16 v0, p4

    #@31
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@33
    const-string/jumbo v9, "android:epicenterReveal:z"

    #@36
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/lang/Float;

    #@3c
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@3f
    move-result v2

    #@40
    const/4 v9, 0x0

    #@41
    sub-float v5, v9, v2

    #@43
    .line 136
    .local v5, "startZ":F
    move-object/from16 v0, p2

    #@45
    move/from16 v1, v19

    #@47
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    #@4a
    .line 137
    move-object/from16 v0, p2

    #@4c
    move/from16 v1, v20

    #@4e
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    #@51
    .line 138
    move-object/from16 v0, p2

    #@53
    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    #@56
    .line 140
    move-object/from16 v0, p4

    #@58
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@5a
    const-string/jumbo v9, "android:epicenterReveal:translateX"

    #@5d
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Ljava/lang/Float;

    #@63
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@66
    move-result v15

    #@67
    .line 141
    .local v15, "endX":F
    move-object/from16 v0, p4

    #@69
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@6b
    const-string/jumbo v9, "android:epicenterReveal:translateY"

    #@6e
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    check-cast v2, Ljava/lang/Float;

    #@74
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@77
    move-result v16

    #@78
    .line 142
    .local v16, "endY":F
    move-object/from16 v0, p4

    #@7a
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@7c
    const-string/jumbo v9, "android:epicenterReveal:translateZ"

    #@7f
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    move-result-object v2

    #@83
    check-cast v2, Ljava/lang/Float;

    #@85
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@88
    move-result v8

    #@89
    .line 144
    .local v8, "endZ":F
    move-object/from16 v0, p0

    #@8b
    move-object/from16 v1, p4

    #@8d
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    #@90
    move-result-object v14

    #@91
    .line 145
    .local v14, "endClip":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@93
    invoke-direct {v0, v14}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@96
    move-result-object v18

    #@97
    .line 148
    .local v18, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    #@99
    move-object/from16 v1, v18

    #@9b
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@9e
    .line 150
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@a0
    move-object/from16 v0, v18

    #@a2
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@a4
    move-object/from16 v0, v18

    #@a6
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@a8
    move/from16 v0, v19

    #@aa
    invoke-direct {v3, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@ad
    .line 151
    .local v3, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@af
    iget v2, v14, Landroid/graphics/Rect;->left:I

    #@b1
    iget v9, v14, Landroid/graphics/Rect;->right:I

    #@b3
    invoke-direct {v6, v2, v9, v15}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@b6
    .line 152
    .local v6, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@b8
    move-object/from16 v0, v18

    #@ba
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@bc
    move-object/from16 v0, v18

    #@be
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@c0
    move/from16 v0, v20

    #@c2
    invoke-direct {v4, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@c5
    .line 153
    .local v4, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@c7
    iget v2, v14, Landroid/graphics/Rect;->top:I

    #@c9
    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    #@cb
    move/from16 v0, v16

    #@cd
    invoke-direct {v7, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@d0
    .line 156
    .local v7, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    move-object/from16 v0, p0

    #@d2
    iget-object v10, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    #@d8
    move-object/from16 v0, p0

    #@da
    iget-object v12, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    #@dc
    move-object/from16 v2, p2

    #@de
    move-object/from16 v9, p4

    #@e0
    .line 155
    invoke-static/range {v2 .. v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    #@e3
    move-result-object v2

    #@e4
    return-object v2
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 162
    if-nez p3, :cond_0

    #@2
    .line 163
    const/4 v2, 0x0

    #@3
    return-object v2

    #@4
    .line 166
    :cond_0
    move-object/from16 v0, p4

    #@6
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string/jumbo v9, "android:epicenterReveal:bounds"

    #@b
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v17

    #@f
    check-cast v17, Landroid/graphics/Rect;

    #@11
    .line 167
    .local v17, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, v17

    #@15
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@18
    move-result-object v13

    #@19
    .line 168
    .local v13, "endBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    #@20
    move-result v9

    #@21
    sub-int/2addr v2, v9

    #@22
    int-to-float v15, v2

    #@23
    .line 169
    .local v15, "endX":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    #@26
    move-result v2

    #@27
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    #@2a
    move-result v9

    #@2b
    sub-int/2addr v2, v9

    #@2c
    int-to-float v0, v2

    #@2d
    move/from16 v16, v0

    #@2f
    .line 170
    .local v16, "endY":F
    move-object/from16 v0, p3

    #@31
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@33
    const-string/jumbo v9, "android:epicenterReveal:z"

    #@36
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v2

    #@3a
    check-cast v2, Ljava/lang/Float;

    #@3c
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@3f
    move-result v2

    #@40
    const/4 v9, 0x0

    #@41
    sub-float v8, v9, v2

    #@43
    .line 172
    .local v8, "endZ":F
    move-object/from16 v0, p4

    #@45
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@47
    const-string/jumbo v9, "android:epicenterReveal:translateX"

    #@4a
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v2

    #@4e
    check-cast v2, Ljava/lang/Float;

    #@50
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@53
    move-result v19

    #@54
    .line 173
    .local v19, "startX":F
    move-object/from16 v0, p4

    #@56
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@58
    const-string/jumbo v9, "android:epicenterReveal:translateY"

    #@5b
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Ljava/lang/Float;

    #@61
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@64
    move-result v20

    #@65
    .line 174
    .local v20, "startY":F
    move-object/from16 v0, p4

    #@67
    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@69
    const-string/jumbo v9, "android:epicenterReveal:translateZ"

    #@6c
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v2

    #@70
    check-cast v2, Ljava/lang/Float;

    #@72
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@75
    move-result v5

    #@76
    .line 176
    .local v5, "startZ":F
    move-object/from16 v0, p0

    #@78
    move-object/from16 v1, p3

    #@7a
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    #@7d
    move-result-object v18

    #@7e
    .line 177
    .local v18, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@80
    move-object/from16 v1, v18

    #@82
    invoke-direct {v0, v1}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@85
    move-result-object v14

    #@86
    .line 180
    .local v14, "endClip":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    #@88
    move-object/from16 v1, v18

    #@8a
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@8d
    .line 182
    new-instance v3, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@8f
    move-object/from16 v0, v18

    #@91
    iget v2, v0, Landroid/graphics/Rect;->left:I

    #@93
    move-object/from16 v0, v18

    #@95
    iget v9, v0, Landroid/graphics/Rect;->right:I

    #@97
    move/from16 v0, v19

    #@99
    invoke-direct {v3, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@9c
    .line 183
    .local v3, "startStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v6, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@9e
    iget v2, v14, Landroid/graphics/Rect;->left:I

    #@a0
    iget v9, v14, Landroid/graphics/Rect;->right:I

    #@a2
    invoke-direct {v6, v2, v9, v15}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@a5
    .line 184
    .local v6, "endStateX":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v4, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@a7
    move-object/from16 v0, v18

    #@a9
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@ab
    move-object/from16 v0, v18

    #@ad
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    #@af
    move/from16 v0, v20

    #@b1
    invoke-direct {v4, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@b4
    .line 185
    .local v4, "startStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    new-instance v7, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;

    #@b6
    iget v2, v14, Landroid/graphics/Rect;->top:I

    #@b8
    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    #@ba
    move/from16 v0, v16

    #@bc
    invoke-direct {v7, v2, v9, v0}, Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    #@bf
    .line 188
    .local v7, "endStateY":Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;
    move-object/from16 v0, p0

    #@c1
    iget-object v10, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget-object v11, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-object v12, v0, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    #@cb
    move-object/from16 v2, p2

    #@cd
    move-object/from16 v9, p4

    #@cf
    .line 187
    invoke-static/range {v2 .. v12}, Lcom/android/internal/transition/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLcom/android/internal/transition/EpicenterTranslateClipReveal$State;Lcom/android/internal/transition/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    #@d2
    move-result-object v2

    #@d3
    return-object v2
.end method

.class public Landroid/transition/ChangeClipBounds;
.super Landroid/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final greylist-max-o PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final greylist-max-o PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final greylist-max-o sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "android:clipBounds:clip"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 8
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .line 57
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 58
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 59
    return-void

    .line 62
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 63
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:clipBounds:clip"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    if-nez v1, :cond_2d

    .line 65
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_2d
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 77
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 78
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 72
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    .line 73
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 85
    const/4 v0, 0x0

    if-eqz p2, :cond_7a

    if-eqz p3, :cond_7a

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 86
    const-string v2, "android:clipBounds:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_7a

    .line 90
    :cond_18
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 91
    .local v1, "start":Landroid/graphics/Rect;
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 92
    .local v2, "end":Landroid/graphics/Rect;
    if-nez v2, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 93
    .local v3, "endIsNull":Z
    :goto_2d
    if-nez v1, :cond_32

    if-nez v2, :cond_32

    .line 94
    return-object v0

    .line 97
    :cond_32
    const-string v4, "android:clipBounds:bounds"

    if-nez v1, :cond_40

    .line 98
    iget-object v5, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_4b

    .line 99
    :cond_40
    if-nez v2, :cond_4b

    .line 100
    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/graphics/Rect;

    .line 102
    :cond_4b
    :goto_4b
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 103
    return-object v0

    .line 106
    :cond_52
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 107
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v4}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 108
    .local v0, "evaluator":Landroid/animation/RectEvaluator;
    iget-object v4, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v5

    .line 109
    const-string v6, "clipBounds"

    invoke-static {v4, v6, v0, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 110
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    if-eqz v3, :cond_79

    .line 111
    iget-object v5, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 112
    .local v5, "endView":Landroid/view/View;
    new-instance v6, Landroid/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v5}, Landroid/transition/ChangeClipBounds$1;-><init>(Landroid/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    .end local v5    # "endView":Landroid/view/View;
    :cond_79
    return-object v4

    .line 88
    .end local v0    # "evaluator":Landroid/animation/RectEvaluator;
    .end local v1    # "start":Landroid/graphics/Rect;
    .end local v2    # "end":Landroid/graphics/Rect;
    .end local v3    # "endIsNull":Z
    .end local v4    # "animator":Landroid/animation/ObjectAnimator;
    :cond_7a
    :goto_7a
    return-object v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 53
    sget-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

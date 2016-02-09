.class public Landroid/transition/ChangeClipBounds;
.super Landroid/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 38
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    .line 39
    const-string/jumbo v1, "android:clipBounds:clip"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 38
    sput-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    #@b
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 44
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 54
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@3
    .line 55
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@6
    move-result v3

    #@7
    const/16 v4, 0x8

    #@9
    if-ne v3, v4, :cond_0

    #@b
    .line 56
    return-void

    #@c
    .line 59
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v1

    #@10
    .line 60
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@12
    const-string/jumbo v4, "android:clipBounds:clip"

    #@15
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 61
    if-nez v1, :cond_1

    #@1a
    .line 62
    new-instance v0, Landroid/graphics/Rect;

    #@1c
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    #@23
    move-result v4

    #@24
    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@27
    .line 63
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@29
    const-string/jumbo v4, "android:clipBounds:bounds"

    #@2c
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 53
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 73
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 68
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 80
    if-eqz p2, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 83
    :cond_0
    return-object v5

    #@6
    .line 81
    :cond_1
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    const-string/jumbo v4, "android:clipBounds:clip"

    #@b
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 82
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@13
    const-string/jumbo v4, "android:clipBounds:clip"

    #@16
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 85
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1e
    const-string/jumbo v4, "android:clipBounds:clip"

    #@21
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/graphics/Rect;

    #@27
    .line 86
    .local v2, "start":Landroid/graphics/Rect;
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@29
    const-string/jumbo v4, "android:clipBounds:clip"

    #@2c
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/graphics/Rect;

    #@32
    .line 87
    .local v0, "end":Landroid/graphics/Rect;
    if-nez v2, :cond_2

    #@34
    if-nez v0, :cond_2

    #@36
    .line 88
    return-object v5

    #@37
    .line 91
    :cond_2
    if-nez v2, :cond_4

    #@39
    .line 92
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@3b
    const-string/jumbo v4, "android:clipBounds:bounds"

    #@3e
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    .end local v2    # "start":Landroid/graphics/Rect;
    check-cast v2, Landroid/graphics/Rect;

    #@44
    .line 96
    .restart local v2    # "start":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_5

    #@4a
    .line 97
    return-object v5

    #@4b
    .line 93
    :cond_4
    if-nez v0, :cond_3

    #@4d
    .line 94
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@4f
    const-string/jumbo v4, "android:clipBounds:bounds"

    #@52
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    .end local v0    # "end":Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    #@58
    .restart local v0    # "end":Landroid/graphics/Rect;
    goto :goto_0

    #@59
    .line 100
    :cond_5
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@5b
    invoke-virtual {v3, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@5e
    .line 101
    new-instance v1, Landroid/animation/RectEvaluator;

    #@60
    new-instance v3, Landroid/graphics/Rect;

    #@62
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@65
    invoke-direct {v1, v3}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    #@68
    .line 102
    .local v1, "evaluator":Landroid/animation/RectEvaluator;
    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@6a
    const-string/jumbo v4, "clipBounds"

    #@6d
    const/4 v5, 0x2

    #@6e
    new-array v5, v5, [Ljava/lang/Object;

    #@70
    const/4 v6, 0x0

    #@71
    aput-object v2, v5, v6

    #@73
    const/4 v6, 0x1

    #@74
    aput-object v0, v5, v6

    #@76
    invoke-static {v3, v4, v1, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    #@79
    move-result-object v3

    #@7a
    return-object v3
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 50
    sget-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    #@2
    return-object v0
.end method

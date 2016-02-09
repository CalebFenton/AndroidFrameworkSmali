.class public Landroid/transition/ChangeScroll;
.super Landroid/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 39
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 54
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string/jumbo v1, "android:changeScroll:x"

    #@5
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@7
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 55
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@14
    const-string/jumbo v1, "android:changeScroll:y"

    #@17
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@19
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 53
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/transition/ChangeScroll;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 49
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/transition/ChangeScroll;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 44
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 61
    if-eqz p2, :cond_0

    #@6
    if-nez p3, :cond_1

    #@8
    .line 62
    :cond_0
    return-object v7

    #@9
    .line 64
    :cond_1
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@b
    .line 65
    .local v6, "view":Landroid/view/View;
    iget-object v7, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@d
    const-string/jumbo v8, "android:changeScroll:x"

    #@10
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v7

    #@14
    check-cast v7, Ljava/lang/Integer;

    #@16
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v4

    #@1a
    .line 66
    .local v4, "startX":I
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c
    const-string/jumbo v8, "android:changeScroll:x"

    #@1f
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v7

    #@23
    check-cast v7, Ljava/lang/Integer;

    #@25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v0

    #@29
    .line 67
    .local v0, "endX":I
    iget-object v7, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2b
    const-string/jumbo v8, "android:changeScroll:y"

    #@2e
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v7

    #@32
    check-cast v7, Ljava/lang/Integer;

    #@34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v5

    #@38
    .line 68
    .local v5, "startY":I
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@3a
    const-string/jumbo v8, "android:changeScroll:y"

    #@3d
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v7

    #@41
    check-cast v7, Ljava/lang/Integer;

    #@43
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@46
    move-result v1

    #@47
    .line 69
    .local v1, "endY":I
    const/4 v2, 0x0

    #@48
    .line 70
    .local v2, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v3, 0x0

    #@49
    .line 71
    .local v3, "scrollYAnimator":Landroid/animation/Animator;
    if-eq v4, v0, :cond_2

    #@4b
    .line 72
    invoke-virtual {v6, v4}, Landroid/view/View;->setScrollX(I)V

    #@4e
    .line 73
    const-string/jumbo v7, "scrollX"

    #@51
    new-array v8, v11, [I

    #@53
    aput v4, v8, v9

    #@55
    aput v0, v8, v10

    #@57
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@5a
    move-result-object v2

    #@5b
    .line 75
    .end local v2    # "scrollXAnimator":Landroid/animation/Animator;
    :cond_2
    if-eq v5, v1, :cond_3

    #@5d
    .line 76
    invoke-virtual {v6, v5}, Landroid/view/View;->setScrollY(I)V

    #@60
    .line 77
    const-string/jumbo v7, "scrollY"

    #@63
    new-array v8, v11, [I

    #@65
    aput v5, v8, v9

    #@67
    aput v1, v8, v10

    #@69
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@6c
    move-result-object v3

    #@6d
    .line 79
    .end local v3    # "scrollYAnimator":Landroid/animation/Animator;
    :cond_3
    invoke-static {v2, v3}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@70
    move-result-object v7

    #@71
    return-object v7
.end method

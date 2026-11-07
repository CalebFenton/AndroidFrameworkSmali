.class public Landroid/transition/ChangeScroll;
.super Landroid/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final greylist-max-o PROPERTIES:[Ljava/lang/String;

.field private static final greylist-max-o PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final greylist-max-o PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    const-string v0, "android:changeScroll:x"

    const-string v1, "android:changeScroll:y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 64
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeScroll:x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeScroll:y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 55
    invoke-direct {p0, p1}, Landroid/transition/ChangeScroll;->captureValues(Landroid/transition/TransitionValues;)V

    .line 56
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 50
    invoke-direct {p0, p1}, Landroid/transition/ChangeScroll;->captureValues(Landroid/transition/TransitionValues;)V

    .line 51
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 73
    if-eqz p2, :cond_62

    if-nez p3, :cond_5

    goto :goto_62

    .line 76
    :cond_5
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 77
    .local v0, "view":Landroid/view/View;
    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeScroll:x"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    .local v1, "startX":I
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 79
    .local v2, "endX":I
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeScroll:y"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 80
    .local v3, "startY":I
    iget-object v5, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 81
    .local v4, "endY":I
    const/4 v5, 0x0

    .line 82
    .local v5, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v6, 0x0

    .line 83
    .local v6, "scrollYAnimator":Landroid/animation/Animator;
    if-eq v1, v2, :cond_4d

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 85
    const-string/jumbo v7, "scrollX"

    filled-new-array {v1, v2}, [I

    move-result-object v8

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 87
    :cond_4d
    if-eq v3, v4, :cond_5d

    .line 88
    invoke-virtual {v0, v3}, Landroid/view/View;->setScrollY(I)V

    .line 89
    const-string/jumbo v7, "scrollY"

    filled-new-array {v3, v4}, [I

    move-result-object v8

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 91
    :cond_5d
    invoke-static {v5, v6}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v7

    return-object v7

    .line 74
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "startX":I
    .end local v2    # "endX":I
    .end local v3    # "startY":I
    .end local v4    # "endY":I
    .end local v5    # "scrollXAnimator":Landroid/animation/Animator;
    .end local v6    # "scrollYAnimator":Landroid/animation/Animator;
    :cond_62
    :goto_62
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 60
    sget-object v0, Landroid/transition/ChangeScroll;->PROPERTIES:[Ljava/lang/String;

    return-object v0
.end method

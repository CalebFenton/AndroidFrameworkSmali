.class public Landroid/transition/Rotate;
.super Landroid/transition/Transition;
.source "Rotate.java"


# static fields
.field private static final greylist-max-o PROPNAME_ROTATION:Ljava/lang/String; = "android:rotate:rotation"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 43
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "android:rotate:rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 38
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "android:rotate:rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 10
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 51
    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    if-nez p3, :cond_6

    goto :goto_3a

    .line 54
    :cond_6
    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 55
    .local v1, "view":Landroid/view/View;
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:rotate:rotation"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 56
    .local v2, "startRotation":F
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 57
    .local v3, "endRotation":F
    cmpl-float v4, v2, v3

    if-eqz v4, :cond_39

    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    .line 59
    sget-object v0, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    .line 62
    :cond_39
    return-object v0

    .line 52
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "startRotation":F
    .end local v3    # "endRotation":F
    :cond_3a
    :goto_3a
    return-object v0
.end method

.class public Landroid/transition/Rotate;
.super Landroid/transition/Transition;
.source "Rotate.java"


# static fields
.field private static final PROPNAME_ROTATION:Ljava/lang/String; = "android:rotate:rotation"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 41
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string/jumbo v1, "android:rotate:rotation"

    #@5
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@7
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 40
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 36
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string/jumbo v1, "android:rotate:rotation"

    #@5
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@7
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    #@a
    move-result v2

    #@b
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 35
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 47
    if-eqz p2, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 48
    :cond_0
    return-object v5

    #@6
    .line 50
    :cond_1
    iget-object v2, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@8
    .line 51
    .local v2, "view":Landroid/view/View;
    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@a
    const-string/jumbo v4, "android:rotate:rotation"

    #@d
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/Float;

    #@13
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@16
    move-result v1

    #@17
    .line 52
    .local v1, "startRotation":F
    iget-object v3, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@19
    const-string/jumbo v4, "android:rotate:rotation"

    #@1c
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    check-cast v3, Ljava/lang/Float;

    #@22
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@25
    move-result v0

    #@26
    .line 53
    .local v0, "endRotation":F
    cmpl-float v3, v1, v0

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 54
    invoke-virtual {v2, v1}, Landroid/view/View;->setRotation(F)V

    #@2d
    .line 55
    sget-object v3, Landroid/view/View;->ROTATION:Landroid/util/Property;

    #@2f
    const/4 v4, 0x2

    #@30
    new-array v4, v4, [F

    #@32
    .line 56
    const/4 v5, 0x0

    #@33
    aput v1, v4, v5

    #@35
    const/4 v5, 0x1

    #@36
    aput v0, v4, v5

    #@38
    .line 55
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@3b
    move-result-object v3

    #@3c
    return-object v3

    #@3d
    .line 58
    :cond_2
    return-object v5
.end method

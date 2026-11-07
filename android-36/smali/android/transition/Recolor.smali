.class public Landroid/transition/Recolor;
.super Landroid/transition/Transition;
.source "Recolor.java"


# static fields
.field private static final greylist-max-o PROPNAME_BACKGROUND:Ljava/lang/String; = "android:recolor:background"

.field private static final greylist-max-o PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:recolor:textColor"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private greylist-max-o captureValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 54
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "android:recolor:background"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_26

    .line 56
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    const-string v2, "android:recolor:textColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_26
    return-void
.end method


# virtual methods
.method public whitelist captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 68
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    .line 69
    return-void
.end method

.method public whitelist captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .line 63
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    .line 64
    return-void
.end method

.method public whitelist createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .line 76
    const/4 v0, 0x0

    if-eqz p2, :cond_83

    if-nez p3, :cond_7

    goto/16 :goto_83

    .line 79
    :cond_7
    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 80
    .local v1, "view":Landroid/view/View;
    iget-object v2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:recolor:background"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 81
    .local v2, "startBackground":Landroid/graphics/drawable/Drawable;
    iget-object v4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 82
    .local v3, "endBackground":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 83
    .local v4, "changed":Z
    instance-of v5, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_4f

    instance-of v5, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_4f

    .line 84
    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 85
    .local v5, "startColor":Landroid/graphics/drawable/ColorDrawable;
    move-object v6, v3

    check-cast v6, Landroid/graphics/drawable/ColorDrawable;

    .line 86
    .local v6, "endColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v8

    if-eq v7, v8, :cond_4f

    .line 87
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 88
    const/4 v0, 0x1

    .line 89
    .end local v4    # "changed":Z
    .local v0, "changed":Z
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    .line 90
    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v7

    filled-new-array {v4, v7}, [I

    move-result-object v4

    .line 89
    const-string v7, "color"

    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4

    .line 93
    .end local v0    # "changed":Z
    .end local v5    # "startColor":Landroid/graphics/drawable/ColorDrawable;
    .end local v6    # "endColor":Landroid/graphics/drawable/ColorDrawable;
    .restart local v4    # "changed":Z
    :cond_4f
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_82

    .line 94
    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 95
    .local v5, "textView":Landroid/widget/TextView;
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:recolor:textColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 96
    .local v6, "start":I
    iget-object v8, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 97
    .local v7, "end":I
    if-eq v6, v7, :cond_82

    .line 98
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    const/4 v0, 0x1

    .line 100
    .end local v4    # "changed":Z
    .restart local v0    # "changed":Z
    const-string/jumbo v4, "textColor"

    filled-new-array {v6, v7}, [I

    move-result-object v8

    invoke-static {v5, v4, v8}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4

    .line 103
    .end local v0    # "changed":Z
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .restart local v4    # "changed":Z
    :cond_82
    return-object v0

    .line 77
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "startBackground":Landroid/graphics/drawable/Drawable;
    .end local v3    # "endBackground":Landroid/graphics/drawable/Drawable;
    .end local v4    # "changed":Z
    :cond_83
    :goto_83
    return-object v0
.end method

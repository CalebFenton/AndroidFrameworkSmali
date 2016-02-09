.class public Landroid/transition/Recolor;
.super Landroid/transition/Transition;
.source "Recolor.java"


# static fields
.field private static final PROPNAME_BACKGROUND:Ljava/lang/String; = "android:recolor:background"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:recolor:textColor"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
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
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 47
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 52
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    const-string/jumbo v1, "android:recolor:background"

    #@5
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@7
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 53
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@10
    instance-of v0, v0, Landroid/widget/TextView;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 54
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@16
    const-string/jumbo v2, "android:recolor:textColor"

    #@19
    .line 55
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@1b
    check-cast v0, Landroid/widget/TextView;

    #@1d
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@20
    move-result v0

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v0

    #@25
    .line 54
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 65
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    #@3
    .line 60
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    #@0
    .prologue
    .line 72
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 73
    :cond_0
    const/4 v10, 0x0

    #@5
    return-object v10

    #@6
    .line 75
    :cond_1
    move-object/from16 v0, p3

    #@8
    iget-object v9, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@a
    .line 76
    .local v9, "view":Landroid/view/View;
    move-object/from16 v0, p2

    #@c
    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@e
    const-string/jumbo v11, "android:recolor:background"

    #@11
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v6

    #@15
    check-cast v6, Landroid/graphics/drawable/Drawable;

    #@17
    .line 77
    .local v6, "startBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    #@19
    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1b
    const-string/jumbo v11, "android:recolor:background"

    #@1e
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Landroid/graphics/drawable/Drawable;

    #@24
    .line 78
    .local v3, "endBackground":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    #@25
    .line 79
    .local v1, "changed":Z
    instance-of v10, v6, Landroid/graphics/drawable/ColorDrawable;

    #@27
    if-eqz v10, :cond_2

    #@29
    instance-of v10, v3, Landroid/graphics/drawable/ColorDrawable;

    #@2b
    if-eqz v10, :cond_2

    #@2d
    move-object v7, v6

    #@2e
    .line 80
    check-cast v7, Landroid/graphics/drawable/ColorDrawable;

    #@30
    .local v7, "startColor":Landroid/graphics/drawable/ColorDrawable;
    move-object v4, v3

    #@31
    .line 81
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    #@33
    .line 82
    .local v4, "endColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@36
    move-result v10

    #@37
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@3a
    move-result v11

    #@3b
    if-eq v10, v11, :cond_2

    #@3d
    .line 83
    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@40
    move-result v10

    #@41
    invoke-virtual {v4, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@44
    .line 84
    const/4 v1, 0x1

    #@45
    .line 85
    const-string/jumbo v10, "color"

    #@48
    const/4 v11, 0x2

    #@49
    new-array v11, v11, [I

    #@4b
    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@4e
    move-result v12

    #@4f
    const/4 v13, 0x0

    #@50
    aput v12, v11, v13

    #@52
    .line 86
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@55
    move-result v12

    #@56
    const/4 v13, 0x1

    #@57
    aput v12, v11, v13

    #@59
    .line 85
    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@5c
    move-result-object v10

    #@5d
    return-object v10

    #@5e
    .line 89
    .end local v4    # "endColor":Landroid/graphics/drawable/ColorDrawable;
    .end local v7    # "startColor":Landroid/graphics/drawable/ColorDrawable;
    :cond_2
    instance-of v10, v9, Landroid/widget/TextView;

    #@60
    if-eqz v10, :cond_3

    #@62
    move-object v8, v9

    #@63
    .line 90
    check-cast v8, Landroid/widget/TextView;

    #@65
    .line 91
    .local v8, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p2

    #@67
    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@69
    const-string/jumbo v11, "android:recolor:textColor"

    #@6c
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v10

    #@70
    check-cast v10, Ljava/lang/Integer;

    #@72
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@75
    move-result v5

    #@76
    .line 92
    .local v5, "start":I
    move-object/from16 v0, p3

    #@78
    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@7a
    const-string/jumbo v11, "android:recolor:textColor"

    #@7d
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    move-result-object v10

    #@81
    check-cast v10, Ljava/lang/Integer;

    #@83
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    #@86
    move-result v2

    #@87
    .line 93
    .local v2, "end":I
    if-eq v5, v2, :cond_3

    #@89
    .line 94
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    #@8c
    .line 95
    const/4 v1, 0x1

    #@8d
    .line 96
    const-string/jumbo v10, "textColor"

    #@90
    const/4 v11, 0x2

    #@91
    new-array v11, v11, [I

    #@93
    const/4 v12, 0x0

    #@94
    aput v5, v11, v12

    #@96
    const/4 v12, 0x1

    #@97
    aput v2, v11, v12

    #@99
    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    #@9c
    move-result-object v10

    #@9d
    return-object v10

    #@9e
    .line 99
    .end local v2    # "end":I
    .end local v5    # "start":I
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_3
    const/4 v10, 0x0

    #@9f
    return-object v10
.end method
